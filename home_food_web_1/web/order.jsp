
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
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
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
	          <li class="nav-item "><a href="about.jsp" class="nav-link">About</a></li>
                   <li class="nav-item active"><a href="order.jsp" class="nav-link">order</a></li>
	          <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
	          
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
            <h1 class="mb-0 bread">Order now!</h1>
          </div>
        </div>
      </div>
    </div>

    

        
        
        
      <center>
          
          
          
          
          <section class="ftco-section img" style="background-image: url(images/a.jpg);">
        
    
      
              <h1><b><font color="#116507 "><p class="a">Hello, Please select your items!!!</p></font></b></h1>
              
              
               <h1><b><font color="#116507 "><p class="a">--- Today manu ---</p></font></b></h1>

              
         <div class="slider-item" style="image: url();">
          </div>  
            <table border="0">
               <tbody>
                   <col width="0">
 
                    <tr>
                        <td> <h5><b><font color="#116507 "><p class="a">Select rice:</p></font></b></h5></td>
                        <td><%  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root",""); 
                                Statement statement = connection.createStatement() ;
                        try{
//Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
        
        resultset =statement.executeQuery("SELECT Name_of_the_Rice FROM `rice_varieties` WHERE 1") ;
%>

        <%  while(resultset.next()){ %>
            <button onclick="myFunction1(value)"  class=" btn btn-primary"  style="font-size:15px;hight:60px;width:190px; " value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>

        <% } %>
 


<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
                        
                         <td><p> <center>   <input type="text" id="r" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly" /></center></p></td>
                               
                    </tr>
                  
      
                    <script>
function myFunction1(value) {
  document.getElementById("rice").value =value;
  document.getElementById("r").value =value;
}
</script>
          
                 <tr>
                       <td> <h5><b><font color="#116507 "><p class="a">Select veditable1:</p></font></b></h5></td> 
                         <td><%   
       try{
//Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
        
        resultset =statement.executeQuery("SELECT  `Name_of_the_Vegetable` FROM `vegetables` WHERE 1") ;
%>

   
        <%  while(resultset.next()){ %>
           <button onclick="myFunction2(value)"   class=" btn btn-primary"  style="font-size:15px;hight:60px;width:190px;"    value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>
        <% } %>



<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
                        
                            <td><p><center>    <input type="text" id="v1" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly" /></center></p></td>
                    </tr>                        
                                                                                                     
          <script>
function myFunction2(value) {
 
  document.getElementById("v1").value =value;
  document.getElementById("vegi1").value =value;
}
</script>          
                 






<tr>
                       <td><h5><b><font color="#116507 "><p class="a">Select veditable2:</p></font></b></h5></td> 
                         <td><%   
       try{
//Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
       
        resultset =statement.executeQuery("SELECT  `Name_of_the_Vegetable` FROM `vegetables` WHERE 1") ;
%>
        <%  while(resultset.next()){ %>
           <button onclick="myFunction3(value)"   class=" btn btn-primary"    style="font-size:15px;hight:60px;width:190px;" id="field1" value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>
        <% } %>
 


<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
                        
                          <td> <p> <center><input type="text" id="v2" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly"></center></p></td>
                    </tr>      
                    <script>
function myFunction3(value) {
  document.getElementById("vegi2").value =value;
  document.getElementById("v2").value =value;
}
</script>
                     <tr>
                       <td><h5><b><font color="#116507 "><p class="a">Select veditable3:</p></font></b></h5></td> 
                         <td><%   
       try{
//Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
       
        resultset =statement.executeQuery("SELECT `Name_of_the_Vegetable` FROM `vegetables` WHERE 1") ;
%>
 
        <%  while(resultset.next()){ %>
            <button onclick="myFunction4(value)"   class=" btn btn-primary"   style="font-size:15px;hight:60px;width:190px;"  id="field1" value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>
        <% } %>



<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
                        
                          <td><p><center><input type="text" id="v3" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly"></center></p></td>
                    </tr>      
                    <script>
function myFunction4(value) {
  document.getElementById("vegi3").value =value;
  document.getElementById("v3").value =value;
}
</script>
                     <tr>
                       <td><h5><b><font color="#116507 "><p class="a">Select veditable4:</p></font></b></h5></td> 
                         <td><%   
       try{

       
        resultset =statement.executeQuery("SELECT  `Name_of_the_Vegetable` FROM `vegetables` WHERE 1") ;
%>

        <%  while(resultset.next()){ %>
            <button onclick="myFunction5(value)"   class=" btn btn-primary"    style="font-size:15px;hight:60px;width:190px;"  id="field1" value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>
        <% } %>


<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
                        
                          <td><p><center>  <input type="text" id="v4" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly"></center></p></td>
                    </tr>               
                    <script>
function myFunction5(value) {
  document.getElementById("vegi4").value =value;
  document.getElementById("v4").value =value;
}
</script>
                     <tr>
                       <td><h5><b><font color="#116507 "><p class="a">Select meat:</p></font></b></h5></td> 
                         <td><%   
       try{
    
        resultset =statement.executeQuery("SELECT  `Name_of_the_Meat_or_Fish` FROM `meat_and_fish` WHERE 1") ;
%>
 
        <%  while(resultset.next()){ %>
            <button onclick="myFunction6(value)"    class=" btn btn-primary"  style="font-size:15px;hight:60px;width:190px;"   id="field1" value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>
        <% }  %>



<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
                       
                         <td><p><center> <input type="text" id="m" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly"></center></p> </td>
                    </tr>
                    <script>
function myFunction6(value) {
  document.getElementById("meat").value =value;
  document.getElementById("m").value =value;
}
</script>
                    <tr>
                       <td><h5><b><font color="#116507 "><p class="a">Select desert:</p></font></b></h5></td> 
                         <td><%   
       try{
 
        resultset =statement.executeQuery("SELECT  `Name_of_the_Dessert` FROM `dessert` WHERE 1") ;
%>
 
        <%  while(resultset.next()){ %>
             
            <button onclick="myFunction7(value)"   class=" btn btn-primary"    style="font-size:15px;hight:100px;width:190px;" id="field1" value="<%= resultset.getString(1)%>" ><%= resultset.getString(1)%> </button>
        <% }

         
                  connection .close();
                statement.close();
		 resultset.close();
        
        
        
        %>



<%
   } catch(Exception e)
        {out.println("wrong entry"+e);}
%></td>
           <td><p><center> <input type="text" id="d" style="font-size:15px;hight:60px;width:150px;" placeholder="choose any item" readonly="readonly"></center></p></td>
                            
                    <script>
function myFunction7(value) {
  document.getElementById("desert").value =value;
  document.getElementById("d").value =value;
}
</script>    
<tr> <td> </td>
    <td><font color="#000000  ">you must select at least from first two selection (select rice,select vegetable1) to make a order </font> </td>
    <td><center><button onclick="myFunction(value)"     class=" btn btn-primary" style="font-size:16px;hight:60px;width:100px; background-color: #F4D03F ;"  id="field1" placeholder="quntity" >refish</button></center></tr></td>


<script>
function myFunction(value) {
    document.getElementById("rice").value =value;
  document.getElementById("r").value =value;
   document.getElementById("v1").value =value;
  document.getElementById("vegi1").value =value;
   document.getElementById("vegi2").value =value;
  document.getElementById("v2").value =value;
  document.getElementById("vegi3").value =value;
  document.getElementById("v3").value =value;
   document.getElementById("vegi4").value =value;
  document.getElementById("v4").value =value;
  document.getElementById("meat").value =value;
  document.getElementById("m").value =value;
  document.getElementById("desert").value =value;
  document.getElementById("d").value =value;
   document.getElementById("quntity").value ="";
}

</script>        
                         <form action="comform_the_order.jsp"> 
                                       <tr>
                       <td><h5><b><font color="#116507 "><p class="a">Insert the quntity:</p></font></b></h5></td> 
                         <td>  
                             <input type="number" min="1" id="quntity" name="quntity" placeholder="quntity" required/>
                           
</td>
                        
                        
                    </tr>

                </tbody>
        </table>
                   

              
                  
                  <table border="0">
                      
                      <tbody>
                          <tr>
                              <td><center><input type="submit"   class=" btn btn-primary" style="font-size:40px;hight:520px;width:520px; background-color:  #2EF519  ; "value="       ORDER      " /></center> </td>
                             
                          
  
  </tr>
                         <tr>
                              <td></td>
                             
                          </tr>
                          <tr>
                              <td><br><br></td>
                             
                          </tr>
                          <tr>
                              <td> <center>   <h1><b><font color="#116507 "><p class="a">-Your order-</p></font></b></h1>
     </center> </td>
                           
                          </tr> 
                           </tbody>
                  </table>

                          <table border="0">
                      
                      <tbody>
                          <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Rice:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="rice" name="rice" readonly="readonly" > </center> </td>
                                      
                          </tr>                                                                                                             
                          <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Vegetable1:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="vegi1"name="vegi1" readonly="readonly" > </center> </td>
                             
                          </tr>
                           <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Vegetable2:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="vegi2" name="vegi2"readonly="readonly" > </center> </td>
                             
                          </tr>
                           <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Vegetable3:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="vegi3" name="vegi3"readonly="readonly" > </center> </td>
                             
                          </tr>
                           <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Vegetable4:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="vegi4" name="vegi4"readonly="readonly" > </center> </td>
                             
                          </tr>
                           <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Meat or Fish:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="meat" name="meat"readonly="readonly" > </center> </td>
                             
                          </tr>
                           <tr>
                              <td><center> <h3><b><font color="#116507 "><p class="a">Desert:</p></font></b></h3>  </center></td><td> <center> <input type="text" id="desert" name="desert"readonly="readonly" > </center> </td>
                             
                          </tr>
                          
                      </tbody>
                  </table>

          
     
        </form>

     
    
    
    
    
    
    
     </section>
    
    
    
    </center>  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

		<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
        <div class="row d-flex justify-content-center py-5">
          <div class="col-md-6">
          	<h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
          	<span>Get e-mail updates about our latest shops and special offers</span>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <form  class="subscribe-form">
                
                
              <div class="form-group d-flex">
                  

               
                <input type="email" class="form-control" name="email1" placeholder="Enter email address" value="" required/>
        
                <input type="submit" onclick="alert('thank you for your subcrition!')"  value="Subscribe" name="sub"   class="submit px-3" >
               
               
               
              </div>
            </form>

<% 
        if(request.getParameter("sub") != null) {
             
             String email = request.getParameter("email1");
            
   Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
      Statement st = conn.createStatement(); 
     
       try{
          
       
      st.executeUpdate("INSERT INTO `email`(`emali_address`) VALUES ('"+email+"')");
      
       
		st.close();
		conn.close();
    
       }catch(Exception e){
       out.println(e);}
    
      
        }
    %>


          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_4.jpg);">
    	<div class="container">
    		<div class="row justify-content-center py-5">
    			<div class="col-md-10">
		    		<div class="row">
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                  
                                    <span>               Happy Customers:         </span>
                                            <td> + <strong class="number" data-number="1000">0</strong> </td>
                                            
                              
		             
		              </div>
		            </div>
		          </div>
		          
		           
		         
		        </div>
	        </div>
        </div>
    	</div>
    </section>
		
		<section class="ftco-section testimony-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading">Testimony</span>
            <h2 class="mb-4">Our satisfied customer says</h2>
           
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/image_13.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">Thank you for the wonderful food.It was almost like homemade food.You provide a variety of dishes for the food lovers.Great job.</p>
                    <p class="name">Garreth Smith</p>
                    <span class="position">Marketing Manager</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image:  url(images/download_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">Me and my family wish to thank you for the wonderful hospitality shown by you during our short stay in your hotel .The quality of the food and the service was great.Thank</p>
                    <p class="name">Savithri D Silva</p>
                    <span class="position">Interface Designer</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/image_14.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line"> The quality of the food and  the services provided is perfect . we enjoyed our stay with them.the kind attention given to us by the staff is much appreciate</p>
                    <p class="name">Oliver Jcob</p>
                    <span class="position">UI Designer</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/image_15.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">Wish to mention that the staff always tried to provide nutritional meals for us . the service provided is admirable. the cleanliness and quality of the meals were great.</p>
                    <p class="name">Tharindu Buddhika</p>
                    <span class="position">Web Developer</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/image16.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">Quick service provided by the hotel staff is appreciated.Food is carefully wrapped for take away and thank you for providing delicious hygienic meals</p>
                    <p class="name">Leo caralina</p>
                    <span class="position">System Analyst</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row no-gutters ftco-services">
         
          <div class="col-lg-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-diet"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Always Fresh</h3>
                <span>Product well package</span>
              </div>
            </div>    
          </div>
          <div class="col-lg-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-award"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Superior Quality</h3>
                <span>Quality Products</span>
              </div>
            </div>      
          </div>
          <div class="col-lg-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-customer-service"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Support</h3>
                <span>6.00 a.m to 10.00 p.m/7 Support</span>
              </div>
            </div>      
          </div>
        </div>
			</div>
		</section>

    <footer class="ftco-footer ftco-section">
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
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                
                <li class="ftco-animate"> <h6>like us on face book</h6><a href="https://www.facebook.com/sanras318a/"><span class="icon-facebook"></span></a></li>
              
              </ul>
            </div>
          </div>
          
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">318 A, Colombo Road, Dadalla,Galle, Sri Lanka.</span></li>
	                <li><span class="icon icon-phone"></span><span class="text">+94 777 178 461</span></a></li>
	                <li><span class="icon icon-envelope"></span><span class="text">sanrasholidayhome@gmail.com</span></a></li>
	              </ul>
	            </div>
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