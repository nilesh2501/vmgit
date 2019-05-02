<%-- 
    Document   : index
    Created on : 20 Feb, 2016, 2:20:36 PM
    Author     : sonu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Easy Courier</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--  import boot strap file -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!-- end bootstrap-->

        <!-- import css file-->
        <link href="css/main.css" type="text/css" rel="stylesheet">
        <link href="css/menu.css" type="text/css" rel="stylesheet">
        <link href="css/copy.css" type="text/css" rel="stylesheet">
        <link href="css/boilerplate.css" rel="stylesheet" type="text/css">
        <link href="css/page.css" rel="stylesheet" type="text/css">
        <link href="css/text-box.css" type="text/css" rel="stylesheet">

        <!-- import java script file -->
        <script src="respond.min.js"></script>
      
          <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="js/currency-autocomplete.js"></script>
  
  <!-- for auto search -->
  <link href="css/style.css" rel="stylesheet" type="text/css">
    <script src="js/auto-search.js" type="text/javascript"></script>
  <script src="js/select2.min.js" type="text/javascript"></script>	
  <!--end auto search -->
  
  <!-- java script -->
  <script>
function validateForm() {
    var x1 = document.forms["myForm"]["weight"].value;
     var x2 = document.forms["myForm"]["lenght"].value;
      var x3 = document.forms["myForm"]["width"].value;
       var x4 = document.forms["myForm"]["height"].value;
          var radio = document.getElementByName("type").checked;
    document.getElementById("demo").innerHTML 
    if (x1 == null || x1 == "") {
        alert("weight must be filled out");
        return false;
    }
    if (x2 == null || x2 == "") {
        alert("lenght must be filled out");
        return false;
    }
    if (x3 == null || x3 == "") {
        alert("width must be filled out");
        return false;
    }
    if (x4 == null || x4 == "") {
        alert("height must be filled out");
        return false;
    }
    if (radio==false) {
        alert("plz choose the courier type");
        return false;
    }
}
</script>
  <!-- end java script-->
    </head>
    <body>
        <header>     
            <div id="header">
                <div id="header_logo">
                    <img src="image/logo-2.jpg" alt="Image" style="width:auto;height:auto;">

                </div>
                <div id="header_list">
                    	
                    <input type="checkbox" id="css3menu-switcher" class="c3m-switch-input">
                    <ul id="css3menu1" class="topmenu">
         <li class="switch"><label onclick="" for="css3menu-switcher"></label></li>
        <li class="topmenu"><a href="index.html" style="height:16px;line-height:16px;">Home</a></li>
	<li class="topmenu"><a href="track.html" style="height:16px;line-height:16px;"><span>Tracking</span></a></li>
	<li class="topmenu"><a href="contact-us.html" style="height:16px;line-height:16px;">Contact</a></li>
	<li class="topmenu"><a href="login.html" style="height:16px;line-height:16px;">Login</a></li>
	
</ul>


            </div>
          
                </div>
           
        </header>
        
        
        
        
        
    
 <!--
    body of the html page
-->
            <div id="body1">
                <div id="body1_main_div">
                        <h1 id="body1_main_div_font"> &nbsp;&nbsp;&nbsp;Get a Quote Now</h1> 
                        <br>
                        <form action="result.jsp" role="form" name="myForm" onsubmit="return validateForm()" method="post">
                        <div id="body1_div1">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From* (Collection) :
                            
                            
                            <div style="margin-left:30px; width:250px; float:left">
                                <select name="from" id="e2" style="width:250px;">
                                    <option value="">Select Source </option>
           <!-- jsp code -->
        <% 
           try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
                  Statement  st =  con.createStatement();
                  ResultSet rs = st.executeQuery("select * from demo.pincode");
                  
                     while(rs.next())
                        {
                            String pincode  = rs.getString("pin");
        %>                          
                                    <option value="<%out.println(pincode);%>"><%out.println(pincode);%></option>
                                    
                                         <% }}catch(Exception e){}%>
                                             
                                       
                                </select>
                            </div>
                                         
                               
                        </div> 
                            
                        <div id="body1_div2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To* (Delivery) : :
                            
                            
                            <div style="margin-left:30px; width:200px; float:left">
                                <select id="e2" name ="to" style="width:200px">
                                   <option value="">Select Destination </option>
                                    <% 
           try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
                  Statement  st =  con.createStatement();
                  ResultSet rs = st.executeQuery("select * from demo.pincode");
                  
                     while(rs.next())
                        {
                            String pincode  = rs.getString("pin");
        %>    
                                    <option value="<%out.println(pincode);%>"><%out.println(pincode);%></option>
           <% }}catch(Exception e){}%>
                                              
                                    </select>
                            </div>
                        </div>


                        <div id="body1_div3" class="radio">
                         
   							 <label class="radio-inline"> 
   						     <input type="radio" name="type" value="document"><img src="image/document.png" alt="Documents" height="60" width="80" />
   							 </label>
  						
  							  <label class="radio-inline">
    						  <input type="radio" name="type" value="parcel"><img src="image/parcels.png" alt="Parcel" height="60" width="80" />
   							  </label>
    					   
  							
                        </div>
                       
                        <div id="body1_div5">			
                            <br>  
                            &nbsp;&nbsp;&nbsp; Weight 
                            <div class="wrapper">
                              <input  type="text" class="textbox_design" name="weight" placeholder="Required" style="width:150px;" />
                                <label>Kg</label>
                            </div>
                        </div>
                        
                        <div id="body1_div6">
                            <center>------Enter Parcel Dimensions-------</center>
                        </div>
                        
                        <div id="body1_div7">
                             &nbsp;&nbsp;&nbsp; Length
                             <div class="wrapper">
                              <input type="text" class="textbox_design" name="lenght" placeholder="Required" style="width:120px;" />
                                <label>cm</label>
                            </div>
                        </div>
                         <div id="body1_div8">
                             &nbsp;&nbsp;&nbsp; Width
                             <div class="wrapper">
                              <input  type="text" class="textbox_design" name="width" placeholder="Required" style="width:120px;" />
                                <label>cm</label>
                            </div>
                        </div>
                         <div id="body1_div9">
                             &nbsp;&nbsp;&nbsp; Height
                             <div class="wrapper">
                              <input  type="text" class="textbox_design" name="height"
                              placeholder="Required" style="width:120px;" />
                                <label>cm</label>
                            </div>
                        </div>
                        <div id="body1_div10">
                            <input type="submit" style="height: 100%;width:90%;background-color: #FF8E44;border-radius:10px; color: #000000; font-size: 20px;" value="Get Free Quote"> 
                        </div>
                      
                      </form>   
                </div>
                            
            </div>
               
            
 <!--
    body2 of the html page
-->
            <div id="body2">
                <br><br>
                <center style="font-size: 32px;">How it works?</center>
                <div  id="body2_div1">
                    <img src="image/send.jpg" alt="Image" style="width:auto;height:auto;">
                    <br><br>
                    <center style="font-size:36px;color:#7ACF27;"> Send</center>
                    <pre style="font-size:16px;color:black;">   Our system makes booking your
        delivery a breeze.</pre>
                </div>
                <div id="body2_div2">
                    <img src="image/compare.jpg" alt="Image" style="width:auto;height:auto;">
                    <br><br>
                    <center style="font-size:36px;color:#7ACF27;"> Compare</center>
                    <pre style="font-size:16px;color:black;">   Get instant quotes & compare from 
  a range of courier delivery services.</pre>
                </div>
                <div id="body2_div3">
                    <img src="image/save.jpg" alt="Image" style="width:auto;height:auto;">
                    <br><br>
                    <center style="font-size:36px;color:#7ACF27;">Save</center>
                    <pre style="font-size:16px;color:black;">   With lots of choice at a great price
            you'll save a bundle.</pre>
                </div>
                
            </div>
         <div class="fluid div2_3" id="body3">
    <div class="fluid div2_3_1"><img src="image/ecom.png"  alt="" width="166" height="100"/></div>
    <div class="fluid div2_3_2"><img src="image/aramex.png"  alt="" width="166" height="98"/></div>
    <div class="fluid div2_3_2"><img src="image/bluedart.png"  alt="" width="166" height="100"/></div>
    <div class="fluid div2_3_2"><img src="image/gati.png"  alt="" width="166" height="100"/></div>
    <div class="fluid div2_3_2"><img src="image/tnt.png"  alt="" width="166" height="100"/></div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
        <div id="body4">

            <div class="panel panel-success" >
                <div class="panel-heading"><h1>About: Easycourier.com</h1>
                </div> 
            
           
            <div class="panel-body">
                <br>
                <p>Ever wondered how convenient it would have been if you could send across priceless treasures to your loved ones while being at home!
We are pleased to introduce you to PickParcel.com - India's leading online courier booking portal which is conceptualized in providing express courier delivery just at the click of a 
button!!!
                </p>
                <br>
                <a href="">Read more</a>
            </div>
            </div>
            
   <div class="container-fluid clearfix" style="background-color:#f4f4f4;">
 
    <section style="margin:3%;">
      <p>   PickParcel.com is India's first and cheapest online courier booking service, offering the simplest way to book a parcel delivery service online within India. You book and choose which of our premium carriers (eg. Blue Dart, DTDC etc) you'd like to collect and deliver your item. You pay for the service online and it will be collected from your place, then delivered. Simple! </p>
     </section>
  </div>
  </div>
  <
            

   <footer>
            <div id="body5">
                <div>
                    <ul id="body5_div1">
                        <li>Easy Courier.com</li>
                        <hr>
                        <li>Home</li>
                        <li>About Us</li>
                        <li>Service</li>
                        <li>Contact Us</li>
                        <li>Testomonials</li>
                    </ul>
                </div>
                <div>
                    <ul id="body5_div2">
                        <li>Our Courier</li>
                        <hr>
                        <li>Aramex Couriers</li>
                        <li>Aramex Couriers
                        <li>The Professional Couriers</li>
                        <li>Skynet Worldwide Express</li>
                        <li>Overseas Express</li>
                        <li>FedEx Express</li>
                        <li>Bombino Couriers</li>
                    </ul>
                </div>
                <div>
                    <ul id="body5_div3">
                        <li>Our Courier</li>
                        <hr    
                        <li>UPS Courier Services</li>
                        <li>Gati KWE Services</li>
                        <li>VRL Courier Services</li>
                        <li>Orbit Worldwide Express</li>
                        <li>Flyking Courier Services</li>
                        <li>Madhur Courier Services</li>
                        <li>Delhivery Couriers</li>
                    </ul>
                </div>
                <div id="body5_div4">
                            Follow Us
                            <hr>
                                <a id="menu" target="_blank" title="PickParcel Facebook" href="">
                                       <img src="image/facebook.png" alt="Image" style="width:35px;height:35px;">
                                </a>
                                 <a id="menu" target="_blank" title="PickParcel Twitter" href="">
                                        <img src="image/twitter.png" alt="Image" style="width:35px;height:35px;">
                                </a>
                           
                                <a id="menu"  target="_blank" title="PickParcel Google Plus" href="">
                                        <img src="image/googleplus.png" alt="Image" style="width:35px;height:35px;">                               
                                </a>
                           
                                <a id="menu"  target="_blank" title="PickParcel Youtube" href="">
                                    <img src="image/youtube.png" alt="Image" style="width:35px;height:35px;">
                                </a>

                  </div>
                
                 <div id="body5_div5">
                    Featured in
                     <hr>
                     <br>
                           <img src="image/nbw-logo.png" alt="Image" style="width:auto;height:auto;">  
                           &nbsp;&nbsp;
                           <img src="image/ys-logo.png" alt="Image" style="width:auto;height:auto;">                               

                </div>
                <div id="body5_div6">
                    <hr>
                    <pre>Copyright © 2014 PickParcel.com. All Rights Reserved.                                                         Terms & Conditions | Privacy Policy | Refund Policy</pre>
                    
                   
                </div>
            </div>
               
                
            
   
</footer> 

      
    </body>

</html>
