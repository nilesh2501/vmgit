<%-- 
    Document   : result
    Created on : 20 Feb, 2016, 4:07:18 PM
    Author     : sonu
--%>

<%@page import="com.sun.tools.xjc.reader.Ring.add(Object)"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try{Class.forName("com.mysql.jdbc.Driver");
    }catch(Exception e){}    //Connection con=DriverManager.getConnection("jdbc:mysql://localhost/demo","root","root");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- ADOBE FILES -->
<link href="css/boilerplate.css" rel="stylesheet" type="text/css">
<link href="css/result.css" rel="stylesheet" type="text/css">
<script src="js/respond.min.js"></script>
 <!-- adobe files end here -->
<!-- boot strap files--> 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <!--end boot strap files -->
<!-- css files-->
    <link href="css/menu.css" type="text/css" rel="stylesheet">
    <link href="css/header.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div class="gridContainer clearfix">
           
            <div id="header_div1" class="fluid">
      <div id="header_logo" class="fluid"><img src="image/logo-2.jpg"  alt=""/>
      </div>
    <p>&nbsp;</p>
    <div id="header_menu" class="fluid">
      <input type="checkbox" id="css3menu-switcher" class="c3m-switch-input">
      <ul id="css3menu1" class="topmenu">
        <li class="switch">
          <label onClick="" for="css3menu-switcher"></label>
        </li>
        <li class="topmenu"><a href="index.html" style="height:16px;line-height:16px;">Home</a></li>
        <li class="topmenu"><a href="track.html" style="height:16px;line-height:16px;"><span>Tracking</span></a></li>
        <li class="topmenu"><a href="contact-us.html" style="height:16px;line-height:16px;">Contact</a></li>
        <li class="topmenu"><a href="login.html" style="height:16px;line-height:16px;">Login</a></li>
      </ul>
    <p>&nbsp;</p>
  </div>
           
              <p>&nbsp;</p>
              
              <%
                 
        String from=request.getParameter("from");
        String to=request.getParameter("to");
        String type=request.getParameter("type");
        String weight=request.getParameter("weight");
        String lenght=request.getParameter("lenght");
        String width=request.getParameter("width");
        String height=request.getParameter("height");
     
              %>
              
              
              
               
      
              <center style="font-size:32px; color: blue;"> <%out.println(from + "  To  "+ to +"  -  "+ weight +"Kg"); %></center>
              
              <p>&nbsp;</p>
  <!-- panel 1 start -->
  <div id="result_div2" class="fluid">
  		<div class="panel-group">
    	<div class="panel panel-primary">
      	<div class="panel-heading">
			<h3 class="panel-title">1-3 Days Priority Delivery Services</h3>
		</div>
    </div>
  </div>
 </div>
  <!-- panel 2 start -->
  <div id="result_div3" class="fluid">
  		<div class="panel-group">
    	<div class="panel panel-primary">
      	<div class="panel-heading">
			<h3 class="panel-title">3-5 Days Standard Delivery Services</h3>
		</div>
    </div>
  </div>
  </div>
  <!-- panel 3 start -->
  <div id="result_div4" class="fluid">
  		<div class="panel-group">
    	<div class="panel panel-primary">
      	<div class="panel-heading">
			<h3 class="panel-title">5+ Days Economy Delivery Services</h3>
		</div>
    </div>
  </div>
  </div>
             
  
  <div  class=" container row">
  	<p>&nbsp;</p>
  <%!
      
      
           public static double ddistance,rate1,rate2,ans;
           public static double ddistance2,wweight,wweight2;
           public static  double rd,rd_remain;
           public static  double rw,rw_remain,rw_v1;
           public static  String cname;
    %>
    <%
             
            wweight2=Double.parseDouble(weight);
    %>
    <%!                          public static void add()
                    {
                          try{

                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/demo","root","root");
                        Statement st = con.createStatement(); 
                         ResultSet rs3 = st.executeQuery("select km,rate from demo.rate_range where cname='"+ cname+"'"); 
                
                rs3.next();
                ddistance2= rs3.getInt(1);
                rate1=rs3.getInt(2);
                 
                
                ResultSet rs4= st.executeQuery("select weight,rate from demo.rate_weight where cname='"+ cname+"'");
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
               
            }catch(Exception e){}}
    
  
  %>
                
  <%        try {       
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/demo","root","root");
                        Statement st = con.createStatement(); 
            
            ResultSet rs2 = st.executeQuery("select distance from demo.distance where pin1='"+from+"' and pin2='"+to+"'");
            rs2.next();
            ddistance=rs2.getInt(1);
            
            ResultSet rs = st.executeQuery("select * from demo.company");
            while(rs.next())
            {
                cname  = rs.getString(1);
                add();    
                             
            %>
  <!-- block start -->
  <div  class=" col-md-4 span4;" style="margin-top: 1%;">
      <div style="background-color:#f5f5f5;display:block;">
  	<p>&nbsp;</p>
    <div id="result_div5_1" class="fluid">
    	<img src="image/aramex.png"  alt="" width="112" height="66" align="left"/>
    </div>
    <div id="result_div5_2" class="fluid">
   
      <div align="right">
          
        <font color="#4094d4" size="+2"> Rate <label> <%out.println(ans); %></label></font>
	      
	  </div>
	  
      <div align="right"><small>Surcharge As Applicable</small></div>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div id="result_div5_3" class="fluid">
      <div align="center">
      <font color="#4094d4">Same day pickup </font>if you book today by <font color="#4094d4">12 PM</font>
      </div>
    </div>
    <p>&nbsp;</p>
    <div id="result_div5_4" class="fluid">
      <div align="center">
      <font color="#4094d4" size="+2">
       	<label> <% out.println(cname);%></label>
      </font>
      </div>
    </div>
      
    <p>&nbsp;</p>
    <!-- tab start -->
    <div id="result_div5_5" class="fluid">
    <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Collection Service</a></li>
    <li><a data-toggle="tab" href="#menu1">Printer Required</a></li>
    <li><a data-toggle="tab" href="#menu2">More info</a></li>
   
  </ul>

        <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      
      <pre>Delivery within 1 - 3 working days.
Collections are made 2pm - 7pm, Monday to Saturday.
Fully Trackable Service.</pre>
    </div>
    <div id="menu1" class="tab-pane fade">
      
      <pre>Please note this service includes a label and an invoice which will need to be PRINTED OUT and attached prior to collection of your package.</pre>
    </div>
    <div id="menu2" class="tab-pane fade">
      
      <pre>Free Email Notifications Available.
Maximum compensation for Lost or Damage or Shortage, Rs.1000 or Invoice value, which ever is lower.</pre>
    </div>
      </div>
    
    
    </div>
    
    <!-- tabs end here -->
    <div id="result_div5_6" class="fluid">
    <input type="submit" class="btn btn-success btn-lg btn-block" name="Book Now">
    </div>
    <p>&nbsp;</p>
  </div>
      
  </div>
      <%
                   } 
  }
                   catch(Exception e)
                           {}
      %>
       
    </body>
</html>
