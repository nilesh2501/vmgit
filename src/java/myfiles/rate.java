package myfiles;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



public class rate
{
    
           public static double ddistance,rate1,rate2,ans;
           public static double ddistance2,wweight,wweight2;
           public static  double rd,rd_remain;
           public static  double rw,rw_remain,rw_v1;
           public static  String cname;
   
     public static void setName(String name)
           {
               cname=name;
           }
           
      public static double getRate()
      {
         return ans;
      }    
       public static void process() throws ClassNotFoundException, SQLException
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/demo","root","root");
           
            Statement st = con.createStatement(); 
             
        
            ResultSet rs3 = st.executeQuery("select km,rate from demo.rate_range where cname='"+cname+"'"); 
                
                rs3.next();
                ddistance2= rs3.getInt(1);
                rate1=rs3.getInt(2);
                 
                
             ResultSet   rs4= st.executeQuery("select weight,rate from demo.rate_weight where cname='"+cname+"'");
                rs4.next();
                wweight=rs4.getInt(1);
                rate2=rs4.getInt(2);
                
               
                if(ddistance>ddistance2)
                {
                    rd_remain=ddistance/ddistance2;
                    rd=rate1*rd_remain;              
                }
                else
                {
                    rd=rate1;
                }
                
                
                if(wweight2>wweight)
                {
                    rw_remain=wweight2-wweight;
                    rw_v1=rw_remain/wweight;
                    rw=rw_v1*rate2;
                }
                else
                {
                    rw=0;
                }
                
                ans=rd+rw; 
       }
           
    
      
}
