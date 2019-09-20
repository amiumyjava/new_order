<!DOCTYPE html>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@page import="java.sql.*;"%>
<%ResultSet resultset =null;%>
<%String no_item=null;%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    
     <style>
p.a {
  font-family: "Papyrus", cursive, sans-serif;
}


</style>
     

  </head>
  <body class="goto-here">
		<div class="py-1 bg-primary">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text"> +94 912 246 724</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">sanrasholidayhome@gmail.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">Sanras Holiday Home</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">Sanras Holiday Home</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown">
              
            </li>
	          <li class="nav-item active"><a href="about.html" class="nav-link">About</a></li>
                   <li class="nav-item"><a href="order.jsp" class="nav-link">order</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Sanras Holiday Home</span></p>
            <h1 class="mb-0 bread">THANK YOU TO USE OUR SERVICE</h1>
          </div>
        </div>
      </div>
    </div>

    
    
    
    
    
     <%
          
          String customer_name = request.getParameter("customer_name");
            String address= request.getParameter("address");
             String Telephone_Number = request.getParameter("Telephone_Number");
             
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
       Statement st = conn.createStatement();
       st = conn.createStatement();
       ResultSet rs = st.executeQuery("SELECT MAX(`customerID`) FROM `customer` ");
       int nextid=0;
      
     
		

		while (rs.next()) {
			 nextid = rs.getInt(1)+1;
			
		}
                
                newpackage.NewClass.nextid(nextid);
 st.executeUpdate("INSERT INTO `customer`(`customerID`, `customer_name`, `address`, `Telephone_Number`) VALUES ('"+nextid+"','"+customer_name+"','"+address+"','"+Telephone_Number+"')");
       
		rs.close();
		st.close();
		conn.close();
       
        newpackage.NewClass.input_order();
        
        
        
       
       
          
          %>
        
     
  
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> 
    <p></p><p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p>
    <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> 
     <center>
   
    <h3><font color="#116507 "><p class="a">THANK YOU VERY MUCH TO USE OUR SERVICE  !</p></font></h3>
     <h4><b><font color="#116507 "><p class="a">Your lunch is on the way!</p></font></b></h4>
       <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p>
    <h4><b><font color="#116507 "><p class="a">-------------------*****-------------------</p></font></b></h4>
     </center>
    
    <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p> <p></p>
    
    
    
    
    
    
    
    
    

    <footer class="ftco-footer ftco-section bg-light">
      <div class="container">
      	<div class="row">
      		<div class="mouse">
						<a href="#" class="mouse-icon">
							<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
						</a>
					</div>
      	</div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Sanras Holiday Home</h2>
             <p>Sanras Holiday Home.The best place for lodging in the historical city of Galle. Comfortable rooms with delicious local,western and chines food.</p>
              
            </div>
          </div>
          
          
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">318 A, Colombo Road, Dadalla,Galle, Sri Lanka.</span></li>
	                <li><span class="icon icon-phone"></span><span class="text">+94 777 178 461</span></a></li>
	                <li><span class="icon icon-envelope"></span><span class="text"> sanrasholidayhome@gmail.com</span></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>