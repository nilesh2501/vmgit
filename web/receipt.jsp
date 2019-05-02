<%-- 
    Document   : receipt
    Created on : 23 Feb, 2016, 6:07:08 PM
    Author     : sonu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>receipt</title>
    </head>
    <body>
       <%
    try
    {
        String s_name =request.getParameter("sender-name");
        String s_mob =request.getParameter("sender-phone");
        String s_email =request.getParameter("sender-eamil");
        String s_address =request.getParameter("sender-address");
        String r_name =request.getParameter("receiver-name");
        String r_mob =request.getParameter("receiver-name");
        String r_email =request.getParameter("receiver-name");
        String r_address =request.getParameter("receiver-name");
     Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/demo","root","root");
        Statement st = con.createStatement(); 
  
       st.executeUpdate("insert into demo.order(s_name,s_mobile,s_email,s_address,r_name,r_mobile,r_email,r_address)values('"+s_name+"','"+s_mob+"','"+s_email+"','"+s_address+"','"+r_name+"','"+r_mob+"','"+r_email+"','"+r_address+"')");
            
       
    
         out.println("helloo :   "+s_name+ "   your order is recived success");
    
    
    }catch(Exception e){
    
    out.println(e);
    }
        
       
            
  
  %>
    </body>
</html>
