<%-- 
    Document   : get_the_order
    Created on : Jul 20, 2019, 8:34:10 AM
    Author     : isuru udana
--%>
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
<!DOCTYPE html>

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
      
       <h6><b><font color="#116507 "><p class="a">
      
      
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
            <h1 class="mb-0 bread">YOUR ORDER</h1>
          </div>
        </div>
      </div>
    </div>

   
    
    
    
    
    
          <% nutrition.customer_nutrition.all_protien=0;
             nutrition.customer_nutrition.all_carbohydrate=0;
             nutrition.customer_nutrition.all_fat=0;
                nutrition.customer_vitamins. all_Vit_A=0;
                nutrition.customer_vitamins.all_Vit_Thiamin=0;
                nutrition.customer_vitamins.all_Vit_Ribloflevin=0;
                nutrition.customer_vitamins.all_Vit_niacin=0;
                nutrition.customer_vitamins.all_Vit_pantothenic=0;
                nutrition.customer_vitamins.all_Vit_biotin=0;
                nutrition.customer_vitamins.all_Vit_piridoxine=0;
                nutrition.customer_vitamins.all_Vit_B12=0;
                nutrition.customer_vitamins.all_Vit_folic_acid=0;
                nutrition.customer_vitamins.all_Vit_C=0;
                nutrition.customer_vitamins.all_Vit_D2=0;
                nutrition.customer_vitamins.all_Vit_E2=0;
                nutrition.customer_vitamins.all_Vit_k2=0;
                nutrition.customer_minarals. all_calcium =0;
                nutrition.customer_minarals. all_chloride =0;
                nutrition.customer_minarals.all_chromium =0;
                nutrition.customer_minarals.all_copper=0;
                nutrition.customer_minarals.all_fluoride =0;
                nutrition.customer_minarals.all_Iodine=0;
                nutrition.customer_minarals. all_iron =0;
                nutrition.customer_minarals. all_magnesium =0;
                nutrition.customer_minarals. all_molybdenum =0;
                nutrition.customer_minarals.all_phosphorus =0;
                nutrition.customer_minarals.all_potassium =0;
                nutrition.customer_minarals. all_selenium =0;
                nutrition.customer_minarals.all_znc=0;
                nutrition.customer_minarals.all_sodium =0; 
        
  
          %>
           <%
                    String rice, vegi1, vegi2, vegi3, vegi4,meat,desert,quntity= "x";
                          
                   nutrition.daily_nead_nutrition.daly_nead_nutrition();
        
                          
                    
                    
                    
                    
                    
                            rice = request.getParameter("rice");
                            vegi1 = request.getParameter("vegi1");
                              vegi2= request.getParameter("vegi2");
                              vegi3 = request.getParameter("vegi3");
                              vegi4 = request.getParameter("vegi4");
                              meat = request.getParameter("meat");
                             desert = request.getParameter("desert");
                              quntity = request.getParameter("quntity");
                              
                          
                              
                         
                              
                            String  massage="please,select an item"; 
                            if( rice.equals(massage)){  rice="not entered";}
                         if(  vegi1.equals(massage)){  vegi1="not entered";}
                          if(vegi2.equals(massage)){  vegi2="not entered";}
                         if(vegi3.equals(massage)){  vegi3="not entered";}
                         if(vegi4.equals(massage)){  vegi4="not entered";}
                          if(meat.equals(massage)){  meat="not entered";}
                           if(desert.equals(massage)){  desert="not entered";}
          
      
                 
                       
                           
                           
                           
                           
                           
                           
                          newpackage.NewClass.m(rice, vegi1, vegi2, vegi3, vegi4,meat,desert,quntity);
                        
             
               
                
                %>
        
        <center><b><b>
             <section class="ftco-section img" style="background-image: url(images/conform1.jpg);">
    
      <h1><b><font color="#116507 "><p class="a">You Selected items!</p></font></b></h1>
    
    <table border="0">
       
        <tbody>
            <tr>
                <td>Rice: </td>
                <td><%=rice%></td>
            </tr>
            <tr>
                <td>Vegetable1: </td>
                <td><%=vegi1%></td>
            </tr>
            <tr>
                <td>Vegetable2: </td>
                 <td><%=vegi2%></td>
            </tr>
            <tr>
                <td>Vegetable3: </td>
                 <td><%=vegi3%></td>
            </tr>
            <tr>
                <td>Vegetable4: </td>
                 <td><%=vegi4%></td>
            </tr>
            <tr>
                <td>Meat or Fish:</td>
                 <td><%=meat%></td>
            </tr>
            <tr>
                <td>Desert:</td>
                 <td><%=desert%></td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td><%=quntity%></td>
            </tr>
        </tbody>
    </table>
            
            
            
          <p></p><p></p>  
            
        
               
            
            
            
            
            

    
    <table border="0">
        <thead>
            <tr>
                <th>
                   <form action="get_customer_details.jsp">
                       <button onclick="myFunction(value)"     class=" btn btn-primary" style="font-size:16px;hight:50px;width:100px; background-color: #2EF519 ;"  type="submit"  value="conform">conform</button>
                         
                        
                          </form> 
                
                
                </th>
                <th>
                    
                   <form action="order.jsp">
                         <button onclick="myFunction(value)"     class=" btn btn-primary" style="font-size:16px;hight:50px;width:100px; background-color: #FF0A02 ;"  type="submit"  value="cancle">Cancle</button>
                         
                   
                </form>     
               
                </th>
            </tr>
        </thead>
       
    </table>
            <p></p>
            <p></p>

    
       
       
                                                    <h3><b><font color="#116507 "><p class="a">Vitamins </p></font></b></h3>
        <table border="1">
           
            <tbody>
               
              
                 <tr>
                     <td>You selected items </td>
                    <td>Vitamin_A</td>
                   <td> Thiamin</td>
                    <td>Ribloflevin</td>
                    <td>niacin</td>
                     <td>pantothenic</td>
                       <td>biotin</td>
                       <td>piridoxine</td>
                        <td>vitamin_B12</td>
                         <td>folic_acid</td>
                          <td>Vitamin_C</td>
                           <td>Vitamin_D</td>
                            <td>vitamin_E</td>
                             <td>vitamin_k</td>
                            
                </tr>
                <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(rice,1);%>
                     <td>Rice: <%=rice%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                
                <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(vegi1,2);%>
                     <td>Vegetable 1: <%=vegi1%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                 <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(vegi2,2);%>
                      <td>Vegetable 2: <%=vegi2%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                 
                 <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(vegi3,2);%>
                     <td>Vegetable 3: <%=vegi3%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                 
                 
                 <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(vegi4,2);%>
                      <td>Vegetable 4: <%=vegi4%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                  <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(meat,3);%>
                      <td>Meat or Fish: <%=meat%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                  <tr><%nutrition.customer_vitamins. vitamins_vegetablesList1(desert,4);%>
                       <td>Desert: <%=desert%></td>
                    <td><%= nutrition.customer_vitamins.Vit_A %></td>
                  <td><%= nutrition.customer_vitamins.Vit_Thiamin %></td>
                   <td><%= nutrition.customer_vitamins.Vit_Ribloflevin %></td>
                    <td><%= nutrition.customer_vitamins.Vit_niacin %></td>
                     <td><%= nutrition.customer_vitamins.Vit_pantothenic %></td>
                      <td><%= nutrition.customer_vitamins.Vit_biotin %></td>
                       <td><%= nutrition.customer_vitamins.Vit_piridoxine %></td>
                        <td><%= nutrition.customer_vitamins.Vit_B12  %></td>
                         <td><%= nutrition.customer_vitamins.Vit_folic_acid %></td>
                          <td><%= nutrition.customer_vitamins.Vit_C %></td>
                           <td><%= nutrition.customer_vitamins.Vit_D %></td>
                            <td><%= nutrition.customer_vitamins.Vit_E %></td>
                             <td><%= nutrition.customer_vitamins.Vit_k  %></td>
                            
                </tr>
                
                
            </tbody>
        </table>
  <p></p><p></p>
        
                               <h3><b><font color="#116507 "><p class="a">Minarals  </p></font></b></h3>
                                                 
    
    <table border="1">
        <thead>
            <tr>
                 <td>You selected items</td>    
                <th>calcium</th>
                <th>chloride</th>
                <th>chromium</th>
                <th>copper</th>
                <th>fluoride</th>
                <th>Iodine</th>
                <th>iron</th>
                <th>magnesium</th>
                <th>molybdenum</th>
                <th>phosphorus</th>
                <th>potassium</th>
                <th>selenium</th>
                <th>znc</th>
                <th>sodium</th>
            </tr>
        </thead>
        <tbody>
            <tr><%nutrition.customer_minarals.minarals(rice,1);%>
                <td>Rice :<%=rice%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
                
            </tr>
            <tr><%nutrition.customer_minarals.minarals(vegi1,2);%>
                <td>Vegetable1 :<%=vegi1%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
            </tr>
               <tr><%nutrition.customer_minarals.minarals(vegi2,2);%>
                <td>Vegetable 2 :<%=vegi2%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
            </tr>
           </tr>
               <tr><%nutrition.customer_minarals.minarals(vegi3,2);%>
                <td>Vegetable 3:<%=vegi3%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
            </tr>
            
               <tr><%nutrition.customer_minarals.minarals(vegi4,2);%>
                <td>Vegetable 4 :<%=vegi4%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
            </tr>
             <tr><%nutrition.customer_minarals.minarals(meat,3);%>
                <td>Meat or Fish: :<%=meat%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
            </tr>
           
            <tr><%nutrition.customer_minarals.minarals(desert,4);%>
                <td>Desert  :<%=desert%></td>
                <td><%= nutrition.customer_minarals.calcium %></td>
                <td><%= nutrition.customer_minarals.chloride %></td>
                <td><%= nutrition.customer_minarals.chromium %></td>
                <td><%= nutrition.customer_minarals.copper %></td>
                <td><%= nutrition.customer_minarals.fluoride %></td>
                <td><%= nutrition.customer_minarals.Iodine %></td>
                <td><%= nutrition.customer_minarals.iron %></td>
                <td><%= nutrition.customer_minarals.magnesium %></td>
                <td><%= nutrition.customer_minarals.molybdenum %></td>
                <td><%= nutrition.customer_minarals.phosphorus %></td>
                <td><%= nutrition.customer_minarals.potassium%></td>
                <td><%= nutrition.customer_minarals.selenium %></td>
                <td><%= nutrition.customer_minarals.znc %></td>
                <td><%= nutrition.customer_minarals.sodium %></td>
            </tr>
           
            
        </tbody>
    </table>
            <p></p><p></p>
                                  <h3><b><font color="#116507 "><p class="a">Nutrition   </p></font></b></h3>
                                
                                         
    
            <table border="1">
                <thead>
                    <tr>
                   <td>You selected items</td>    
                <th>carbohydrate</th>
                <th>fat</th>
                <th>protien</th>
                    </tr>
                </thead>
                <tbody>
                    <tr><%nutrition.customer_nutrition.nutrition(rice,1);
                        %>
                        <td>Rice :<%=rice%></td>
                         <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                    <tr><%nutrition.customer_nutrition.nutrition(vegi1,2);%>
                        <td>Vegetable1 :<%=vegi1%></td>
                        <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                    <tr><%nutrition.customer_nutrition.nutrition(vegi2,2);%>
                         <td>Vegetable 2 :<%=vegi2%></td>
                         <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                    
                       <tr><%nutrition.customer_nutrition.nutrition(vegi3,2);%>
                            <td>Vegetable 3:<%=vegi3%></td>
                         <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                      <tr><%nutrition.customer_nutrition.nutrition(vegi4,2);%>
                           <td>Vegetable 4 :<%=vegi4%></td>
                         <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                    <tr><%nutrition.customer_nutrition.nutrition(meat,3);%>
                         <td>Meat or Fish: :<%=meat%></td>
                         <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                     <tr><%nutrition.customer_nutrition.nutrition(desert,4);%>
                         <td>Desert  :<%=desert%></td>
                         <td><%= nutrition.customer_nutrition.carbohydrate %></td>
                        <td><%= nutrition.customer_nutrition.fat %></td>
                        <td><%= nutrition.customer_nutrition.protien %></td>
                    </tr>
                    
                </tbody>
            </table>

  <p></p><p></p><p></p>
    

                           <h3><b><font color="#116507 "><p class="a">Your vitamins today</p></font></b></h3>
                                
                                                         
                   
            <table border="1">
               <thead>
                    
                          <tr>
                     <td>vitamins : </td>
                    <td>Vitamin_A</td>
                   <td> Thiamin</td>
                    <td>Ribloflevin</td>
                    <td>niacin</td>
                     <td>pantothenic</td>
                       <td>biotin</td>
                       <td>piridoxine</td>
                        <td>vitamin_B12</td>
                         <td>folic_acid</td>
                          <td>Vitamin_C</td>
                           <td>Vitamin_D</td>
                            <td>vitamin_E</td>
                             <td>vitamin_k</td>
                            
                </tr>
                    </thead>
                
                <tbody>
                    
                         <tr>
                     <td>Your vitamins today:</td>
                    <td><div id="centerbox4"><%= nutrition.customer_vitamins.all_Vit_A %> </div></td>
                     <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_A %> < <%=nutrition.daily_nead_nutrition.dn_Vit_A%>) {document.getElementById("centerbox4").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox4").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                  <td><div id="centerbox5"><%= nutrition.customer_vitamins.all_Vit_Thiamin %> </div></td>
                   <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_Thiamin%> < <%=nutrition.daily_nead_nutrition.dn_Vit_Thiamin%>) {document.getElementById("centerbox5").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox5").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                   <td><div id="centerbox6"><%= nutrition.customer_vitamins.all_Vit_Ribloflevin %> </div></td>
                    <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_Ribloflevin%> < <%= nutrition.daily_nead_nutrition.dn_Vit_Ribloflevin%>) {document.getElementById("centerbox6").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox6").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                    <td><div id="centerbox7"><%= nutrition.customer_vitamins.all_Vit_niacin %> </div></td>
                     <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_niacin%> < <%= nutrition.daily_nead_nutrition.dn_Vit_niacin %>) {document.getElementById("centerbox7").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox7").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                     <td><div id="centerbox8"><%= nutrition.customer_vitamins.all_Vit_pantothenic %> </div></td>
                      <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_pantothenic %> < <%= nutrition.daily_nead_nutrition.dn_Vit_pantothenic %>) {document.getElementById("centerbox8").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox8").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                      <td><div id="centerbox9"><%= nutrition.customer_vitamins.all_Vit_biotin %> </div></td>
                       <script>(function () {if (<%=nutrition.customer_vitamins.all_Vit_biotin%> < <%=nutrition.daily_nead_nutrition.dn_Vit_biotin%>) {document.getElementById("centerbox9").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox9").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                       <td><div id="centerbox10"><%= nutrition.customer_vitamins.all_Vit_piridoxine %></td>
                        <script>(function () {if (<%=  nutrition.customer_vitamins.all_Vit_piridoxine%> < <%=nutrition.daily_nead_nutrition.dn_Vit_piridoxine%>) {document.getElementById("centerbox10").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox10").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                        <td><div id="centerbox11"><%= nutrition.customer_vitamins.all_Vit_B12  %> </div></td>
                         <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_B12%> < <%=nutrition.daily_nead_nutrition.dn_Vit_B12%>) {document.getElementById("centerbox11").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox11").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                         <td><div id="centerbox12"><%= nutrition.customer_vitamins.all_Vit_folic_acid %> </div></td>
                          <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_folic_acid%> < <%= nutrition.daily_nead_nutrition.dn_Vit_folic_acid%>) {document.getElementById("centerbox12").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox12").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                          <td><div id="centerbox13"><%= nutrition.customer_vitamins.all_Vit_C %> </div></td>
                           <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_C%> < <%= nutrition.daily_nead_nutrition.dn_Vit_C %>) {document.getElementById("centerbox13").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox13").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                           <td><div id="centerbox14"><%= nutrition.customer_vitamins.all_Vit_D2 %> </div></td>
                            <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_D2%> < <%=nutrition.daily_nead_nutrition.dn_Vit_D %>) {document.getElementById("centerbox14").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox14").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                            <td><div id="centerbox15"><%= nutrition.customer_vitamins.all_Vit_E2 %> </div></td>
                             <script>(function () {if (<%=  nutrition.customer_vitamins.all_Vit_E2%> < <%= nutrition.daily_nead_nutrition.dn_Vit_E %>) {document.getElementById("centerbox15").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox15").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                             <td><div id="centerbox16"><%= nutrition.customer_vitamins.all_Vit_k2  %> </div></td>
                              <script>(function () {if (<%= nutrition.customer_vitamins.all_Vit_k2%> < <%= nutrition.daily_nead_nutrition.dn_Vit_k%>) {document.getElementById("centerbox16").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox16").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                    </tr>
                    <tr><td>Daily need vitamins :</td>
                       <td><%=nutrition.daily_nead_nutrition.dn_Vit_A %></td>
                  <td><%= nutrition.daily_nead_nutrition.dn_Vit_Thiamin %></td>
                   <td><%= nutrition.daily_nead_nutrition.dn_Vit_Ribloflevin %></td>
                    <td><%= nutrition.daily_nead_nutrition.dn_Vit_niacin %></td>
                     <td><%= nutrition.daily_nead_nutrition.dn_Vit_pantothenic %></td>
                      <td><%= nutrition.daily_nead_nutrition.dn_Vit_biotin %></td>
                       <td><%= nutrition.daily_nead_nutrition.dn_Vit_piridoxine %></td>
                        <td><%= nutrition.daily_nead_nutrition.dn_Vit_B12  %></td>
                         <td><%= nutrition.daily_nead_nutrition.dn_Vit_folic_acid %></td>
                          <td><%= nutrition.daily_nead_nutrition.dn_Vit_C %></td>
                           <td><%= nutrition.daily_nead_nutrition.dn_Vit_D %></td>
                            <td><%= nutrition.daily_nead_nutrition.dn_Vit_E %></td>
                             <td><%= nutrition.daily_nead_nutrition.dn_Vit_k  %></td>
                             
                    </tr>
                    
                </tbody>
            </table>

                         <h3><b><font color="#116507 "><p class="a">Your minarals today</p></font></b></h3>
                            
                                           
                  <table border="1">
                        <thead>
                            <tr>
                                   <td>minarals:</td>    
                <th>calcium</th>
                <th>chloride</th>
                <th>chromium</th>
                <th>copper</th>
                <th>fluoride</th>
                <th>Iodine</th>
                <th>iron</th>
                <th>magnesium</th>
                <th>molybdenum</th>
                <th>phosphorus</th>
                <th>potassium</th>
                <th>selenium</th>
                <th>znc</th>
                <th>sodium</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               <tr>
                <td>Your minarals today:</td>
                <td><div id="centerbox17"><%= nutrition.customer_minarals.all_calcium %></div></td>
                 <script>(function () {if (<%=  nutrition.customer_minarals.all_calcium%> < <%= nutrition.daily_nead_nutrition.dn_calcium%>) {document.getElementById("centerbox17").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox17").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox18"><%= nutrition.customer_minarals.all_chloride %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_chloride%> < <%=nutrition.daily_nead_nutrition.dn_chloride%>) {document.getElementById("centerbox18").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox18").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox19"><%= nutrition.customer_minarals.all_chromium %></div></td>
                 <script>(function () {if (<%=nutrition.customer_minarals.all_chromium %> < <%=nutrition.daily_nead_nutrition.dn_chromium%>) {document.getElementById("centerbox19").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox19").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox20"><%= nutrition.customer_minarals.all_copper %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_copper%> < <%= nutrition.daily_nead_nutrition.dn_copper%>) {document.getElementById("centerbox20").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox20").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox21"><%= nutrition.customer_minarals.all_fluoride %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_fluoride%> < <%=nutrition.daily_nead_nutrition.dn_fluoride%>) {document.getElementById("centerbox21").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox21").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox22"><%= nutrition.customer_minarals.all_Iodine %></div></td>
                 <script>(function () {if (<%=  nutrition.customer_minarals.all_Iodine%> < <%= nutrition.daily_nead_nutrition.dn_Iodine%>) {document.getElementById("centerbox22").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox22").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox23"><%= nutrition.customer_minarals.all_iron %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_iron%> < <%=nutrition.daily_nead_nutrition.dn_iron%>) {document.getElementById("centerbox23").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox23").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox24"><%= nutrition.customer_minarals.all_magnesium %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_magnesium%> < <%=nutrition.daily_nead_nutrition.dn_magnesium%>) {document.getElementById("centerbox24").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox24").style.backgroundColor = '#56FD62  '; }})(); </script>
    
                <td><div id="centerbox25"><%= nutrition.customer_minarals.all_molybdenum %></div></td>
                 <script>(function () {if (<%=nutrition.customer_minarals.all_molybdenum%> < <%= nutrition.daily_nead_nutrition.dn_molybdenum%>) {document.getElementById("centerbox25").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox25").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id=centerbox26><%= nutrition.customer_minarals.all_phosphorus %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_phosphorus%> < <%=  nutrition.daily_nead_nutrition.dn_phosphorus%>) {document.getElementById("centerbox26").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox26").style.backgroundColor = '#56FD62  '; }})(); </script>
    
                <td><div id="centerbox27"><%= nutrition.customer_minarals.all_potassium%></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_potassium%> < <%= nutrition.daily_nead_nutrition.dn_potassium%>) {document.getElementById("centerbox27").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox27").style.backgroundColor = '#56FD62  '; }})(); </script>
    
                <td><div id="centerbox28"><%= nutrition.customer_minarals.all_selenium %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_selenium%> < <%=  nutrition.daily_nead_nutrition.dn_selenium%>) {document.getElementById("centerbox28").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox28").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox29"><%= nutrition.customer_minarals.all_znc %></div></td>
                 <script>(function () {if (<%= nutrition.customer_minarals.all_znc %> < <%=  nutrition.daily_nead_nutrition.dn_znc%>) {document.getElementById("centerbox29").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox29").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                <td><div id="centerbox30"><%= nutrition.customer_minarals.all_sodium %></div></td>
                 <script>(function () {if (<%=  nutrition.customer_minarals.all_sodium%> < <%= nutrition.daily_nead_nutrition.dn_sodium%>) {document.getElementById("centerbox30").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox30").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                
            </tr>
                            </tr>
                            <tr><td>  Daily need minarals :</td>
                <td><%= nutrition.daily_nead_nutrition.dn_calcium %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_chloride %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_chromium %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_copper %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_fluoride %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_Iodine %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_iron %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_magnesium %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_molybdenum %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_phosphorus %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_potassium%></td>
                <td><%= nutrition.daily_nead_nutrition.dn_selenium %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_znc %></td>
                <td><%= nutrition.daily_nead_nutrition.dn_sodium %></td>
                            </tr>
                           
                           
                        </tbody>
                    </table>
       
                             <h3><b><font color="#116507 "><p class="a">Your nutrition today</p></font></b></h3>
                                   
     <table border="1">
                    <thead>
                        <tr>
                           <td>nutrition :</td>    
                <th>carbohydrate</th>
                <th>fat</th>
                <th>protien</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                           <tr>
                        <td>Your nutrition today:</td>
                         
                        
                        
                        
                        
                        
                        
                        <td> <div id="centerbox1"><%=nutrition.customer_nutrition.all_carbohydrate%> </div></td>
                        <script>(function () {if (<%=nutrition.customer_nutrition.all_carbohydrate%> < <%=nutrition.daily_nead_nutrition.dn_carbohydrate%>) {document.getElementById("centerbox1").style.backgroundColor = '#FA5252 ';}else{document.getElementById("centerbox1").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                        <td><div id="centerbox2"><%= nutrition.customer_nutrition.all_fat %></td>
                         <script>(function () {if (<%= nutrition.customer_nutrition.all_fat%> < <%=nutrition.daily_nead_nutrition.dn_fat%>) {document.getElementById("centerbox2").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox2").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                        <td><div id="centerbox3"><%= nutrition.customer_nutrition.all_protien%></td>
                         <script>(function () {if (<%=  nutrition.customer_nutrition.all_protien%> < <%=nutrition.daily_nead_nutrition.dn_protien%>) {document.getElementById("centerbox3").style.backgroundColor = '#FA5252  ';}else{document.getElementById("centerbox3").style.backgroundColor = '#56FD62 '; }})(); </script>
    
                        
                        
                        </tr>
                        <tr><td>Daily need nutrition :</td>
                            <td><%=nutrition.daily_nead_nutrition.dn_carbohydrate%></td>
                            <td><%=nutrition.daily_nead_nutrition.dn_fat%></td>
                            <td><%=nutrition.daily_nead_nutrition.dn_protien%></td>
                        </tr>
                       
                    </tbody>
                </table>
    

    
   

               <table border="0">
        <tbody>
           <tr><p></p>
               <p>----***----</p>
          <p><h6>Home Foods</h6></p>
          <p><h6>Protect the health of every home</h6></p>
          </tr>
            <tr>
                
                <td>
                   <form action="get_customer_details.jsp">
                       <button onclick="myFunction(value)"     class=" btn btn-primary" style="font-size:16px;hight:50px;width:100px; background-color: #2EF519 ;"  type="submit"  value="conform">conform</button>
                         
                        
                          </form> 
                
                
               </td>
               <td>
                    
                   <form action="order.jsp">
                         <button onclick="myFunction(value)"     class=" btn btn-primary" style="font-size:16px;hight:50px;width:100px; background-color: #FF0A02 ;"  type="submit"  value="cancle">Cancle</button>
                         
                   
                </form>     
               
                </td>
            </tr>
        </tbody>
       
    </table>

                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
     </section></b></b>
    </center>
     
    </p></font></b></h6>
    
    
    
    
		
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
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