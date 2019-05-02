<%-- 
    Document   : order
    Created on : 23 Feb, 2016, 5:25:36 PM
    Author     : sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>

<html class="">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Untitled Document</title>

<!-- bootstrap files -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!-- css files -->
  <link href="boilerplate.css" rel="stylesheet" type="text/css">
<link href="order.css" rel="stylesheet" type="text/css">
<link href="menu.css" type="text/css" rel="stylesheet">
<!--<link href="page.css" rel="stylesheet" type="text/css"> -->
<script src="respond.min.js"></script>
</head>
<body>
    
    <%
          String from =(String)session.getAttribute("from");
          String to =(String)session.getAttribute("to");
          String type =(String)session.getAttribute("type");
          String weight =(String)session.getAttribute("weight");
          String lenght =(String)session.getAttribute("lenght");
          String width =(String)session.getAttribute("width");
          String height =(String)session.getAttribute("height");
          String cname =(String)session.getAttribute("canme");
          Double rate =(Double)session.getAttribute("rate");
          
          
          out.println(from);
           out.println(to);
            out.println(type);
             out.println(weight);
              out.println(lenght);
               out.println(width);
                out.println(height);
                 out.println(cname);
                  out.println(rate);
             
          
          
          
          
          %>
<div class="gridContainer clearfix">
<div class="fluid order_div2">
<header class="fluid headr zeroMargin_desktop">
      <div class="fluid header_logo zeroMargin_desktop">
        <p><img src="image/logo-2.jpg"  alt="" width="330" height="134"/></p>
      </div><p>&nbsp;</p>
          <div class="fluid header_list" style="margin-left:20%"">
            <p><br>
            </p>
            <ul id="css3menu1" class="topmenu">
          <li class="switch">
            <label onClick="" for="css3menu-switcher"></label>
          </li>
         <li class="topmenu"><a href="index.html" style="height:16px;line-height:16px;">Home</a></li>
	
	<li class="topmenu"><a href="track.html" style="height:16px;line-height:16px;"><span>Tracking</span></a></li>
	<li class="topmenu"><a href="contact-us.html" style="height:16px;line-height:16px;">Contact</a></li>
	<li class="topmenu"><a href="login.html" style="height:16px;line-height:16px;">Login</a></li>
        </ul>
      </div>
      </header>
    <!--  <div class="fluid r_div1 ">
 <div class="fluid r_div22"> -->
</div>
  <div id="div1" class="fluid">
    <center>
      <h1>Pickup & Delivery Details</h1></center>

      <div class=" fluid row ">
          <div class=" fluid col-md-8 span4 ">
  		 <div class="panel panel-success">
         <div class="panel-heading"><h5>SENDER & RECEIVER DETAILS (Please provide the Sender's Address & the Receiver's contact details)</h5>
         </div>
         <div class="panel-body">
         <div class="alert alert-info">
                    <p class="show header-text">Sender Details :</p>
          </div>
          <form role="form" action="receipt.jsp">
     			<div class="form-group col-md-4">
     				 <label>Sender Name *</label>
      				<input type="text" class="form-control" name="sender-name"/>
   			    </div>
    			<div class="form-group col-md-4">
   					   <label>Mobile number *</label>
  					   <input type="tel" class="form-control" name="sender-phone"/>
  			    </div>
                <div class="form-group col-md-4">
   					   <label>Email *</label>
  					   <input type="email" class="form-control" name="sender-email"/>
  			    </div>
                <hr>
                <div class="form-group col-md-8">
      				<label>Sender Address *</label>
      				<textarea class="form-control" rows="5" name="sender-address"></textarea>
                    <p> ? Maximum 105 characters allowed</p>
    			</div>
                <div class="form-group row">
                            
                  <div class="col-md-4">
                                <div class="col-md-3 col-xs-6">
                                    <label class="labelhead" for=""></label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                
                                <div class="col-md-3 col-xs-6">
                                    <label class="labelhead" for="">City:</label>
                                </div>
                                <div class="col-md-9 col-xs-6 text-right">
                                    <label class="labeltext" id="pCity" name="pCity"><%out.println(from);%></label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="col-md-5 col-xs-6">
                                    <label class="control-label" for="">Zipcode:</label>
                                </div>
                                <div class="col-md-7 col-xs-6 text-right">
                                    <label name="pPinCode" id="pPincode"><%out.println(from);%></label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="col-md-4 col-xs-6">
                                    <label class="control-label" for="" style="">State:</label>
                                </div>
                                <div class="col-md-8 col-xs-6 text-right">
                                    <label value="" name="pickupState" id="pickupState">Madhya Pradesh</label>
                                </div>
                                <!-- replace with  -->
                            </div>
                            <div class="col-md-4">
                                <div class="col-md-5 col-xs-6">
                                    <label class="control-label" for="">Country:</label>
                                </div>
                                <div class="col-md-7 col-xs-6 text-right">
                                    <label value="" name="pickupCountry" id="pickupCountry">India</label>
                                    <!-- replace with  -->
                                </div>
                            </div>
           
                 </div>
                     <div class="alert alert-info">
                	    <p class="show header-text">Receiver Details :</p>
          			</div>
                    
                    		<div class="form-group col-md-4">
     				 <label>receiver Name *</label>
      				<input type="text" class="form-control" name="receiver-name"/>
   			    </div>
    			<div class="form-group col-md-4">
   					   <label>Mobile number *</label>
  					   <input type="tel" class="form-control" name="receiver-phone"/>
  			    </div>
                <div class="form-group col-md-4">
   					   <label>Email *</label>
  					   <input type="email" class="form-control" name="receiver-email"/>
  			    </div>
                <hr>
                <div class="form-group col-md-8">
      				<label>Sender Address *</label>
      				<textarea class="form-control" rows="5" name="receiver-address"></textarea>
                    <p> ? Maximum 105 characters allowed</p>
    			</div>
                <div class="form-group row">
                            
                            <div class="col-md-4">
                                <div class="col-md-3 col-xs-6">
                                    <label class="labelhead" for=""></label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                
                                <div class="col-md-3 col-xs-6">
                                    <label class="labelhead" for="">City:</label>
                                </div>
                                <div class="col-md-9 col-xs-6 text-right">
                                    <label class="labeltext" id="pCity" name="pCity"><%out.println(to);%></label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="col-md-5 col-xs-6">
                                    <label class="control-label" for="">Zipcode:</label>
                                </div>
                                <div class="col-md-7 col-xs-6 text-right">
                                    <label name="pPinCode" id="pPincode"><%out.println(to);%></label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="col-md-4 col-xs-6">
                                    <label class="control-label" for="" style="">State:</label>
                                </div>
                                <div class="col-md-8 col-xs-6 text-right">
                                    <label value="" name="pickupState" id="pickupState">Madhya Pradesh</label>
                                </div>
                                <!-- replace with  -->
                            </div>
                            <div class="col-md-4">
                                <div class="col-md-5 col-xs-6">
                                    <label class="control-label" for="">Country:</label>
                                </div>
                                <div class="col-md-7 col-xs-6 text-right">
                                    <label value="" name="pickupCountry" id="pickupCountry">India</label>
                                    <!-- replace with  -->
                                </div>
                            </div>
                        </div>
                    <div class="form-group col-md-8">
      						<input type="submit" class="btn btn-primary has-ripple" value="Proceed"/>
                    </div>
 
                        
         </div>
         </div>
         
    </div>
          
          
          
          
          
    <div class=" col-md-4">
    	<div class="panel panel-success">
         <div class="panel-heading"><h5>Order Details :</h5>
         </div>
         <div class="panel-body">
         	<ul class="list-group">
  			<li class="list-group-item">From:   <label> <%out.println(from);%></label></li> 
  			<li class="list-group-item">To:     <label> <%out.println(to);%></label></li>
  			<li class="list-group-item">Service Provider:  <label><%out.println(cname);%></label></li>
            <li class="list-group-item">Weight:   <label> <% out.println(weight);%></label></li>
            <li class="list-group-item">Total: <label> <%out.println(rate);%></label></li>
</ul>                                             
    		  		</div>
  </div>
</div>
</div></div>
<div class="gridContainer-fluid clearfix" style="background-color:#f4f4f4;">
   <div class="gridContainer clearfix">
  <div class="fluid div2_4">
    <section style="margin:3%;">
      <p>   PickParcel.com is India's first and cheapest online courier booking service, offering the simplest way to book a parcel delivery service online within India. You book and choose which of our premium carriers (eg. Blue Dart, DTDC etc) you'd like to collect and deliver your item. You pay for the service online and it will be collected from your place, then delivered. Simple! </p>
     </section>
  </div>
  </div>
  </div>
  <div class="gridContainer-fluid clearfix" style="background-color: #7AAC38; opacity: 0.9;">
   <div class="gridContainer clearfix">
  <div class="fluid div3">
    <p>&nbsp;</p>
    <div class="fluid div3_1">
     <ul class="fluid fluidList div3_1_1">
             <li>Easy Courier.com</li>
                 <hr>
             <li>Home</li>
              <li>About Us</li>
             <li>Service</li>
              <li>Contact Us</li>
             <li>Testomonials</li>
             <li></li>
     </ul>
    </div>
    <div class="fluid div3_1">
    	 <ul class="fluid fluidList div3_2_1">
         	<li>Our Courier</li>
                        <hr>
                        <li>Aramex Couriers</li>
                        <li>Aramex Couriers
                        <li>The Professional Couriers</li>
                        <li>Skynet Worldwide Express</li>
                        <li>Overseas Express</li>
                        <li>FedEx Express</li>
                        <li>Bombino Couriers</li>
                        <li></li>
         </ul> 
    </div>
    <div class="fluid div3_1">
    	 <ul class="fluid fluidList div3_3_1">
          <li>Our Courier</li>
                        <hr    
                        <li>UPS Courier Services</li>
                        <li>Gati KWE Services</li>
                        <li>VRL Courier Services</li>
                        <li>Orbit Worldwide Express</li>
                        <li>Flyking Courier Services</li>
                        <li>Madhur Courier Services</li>
                        <li>Delhivery Couriers</li>
                        <li></li>
         
         </ul> 
    </div>
    <div class="fluid div3_2">
    	 Follow Us
                            <hr>
                            <p><a id="menu" target="_blank" title="PickParcel Facebook" href="">
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
                              
                            </p>
                           
                            Featured in
                     <hr>
                     <br>
                           <img src="image/nbw-logo.png" alt="Image" style="width:auto;height:auto;">  
                           &nbsp;&nbsp;
                           <img src="image/ys-logo.png" alt="Image" style="width:auto;height:auto;">                               

    </div>
  
    <div class="fluid div4">
  	<hr>
                    <pre style="background-color: #7AAC38; opacity: 0.9; border-style:none;">Copyright © 2014 PickParcel.com. All Rights Reserved.                           Terms & Conditions | Privacy Policy | Refund Policy</pre>
  </div>
  </div>
  
 </div>
</div>
</body>
</html>

