
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	          <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
                  <li class="nav-item"><a href="order.jsp" class="nav-link">order</a></li>
	          <li class="nav-item active"><a href="blog.jsp" class="nav-link">Blog</a></li>
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
            <h1 class="mb-0 bread">Blog</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 ftco-animate">
						<div class="row">
							<div class="col-md-12 d-flex ftco-animate">
		            <div class="blog-entry align-self-stretch d-md-flex">
		              <a  class="block-20" style="background-image: url('images/k.jpg');">
		              </a>
		              <div class="text d-block pl-md-4">
		              	<div class="meta mb-3">
		                  <div>July 20, 2019</a></div>
		                  <div><a >Admin</a></div>
		                  <div><a  class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <h3 class="heading"><a href="#">Sanras Holiday Home is situated on the Galle ? Colombo Road in the area known as Dadalla. 
                                        The hotel is approximately 2 Km away from the Historical Galle City, facing to the largest and highly rated 5 Star Hotel in Galle.
                                        Dadalla beach is also an attraction to many visitors, which is only 100m away from Sanras.
                                        Also the exciting beaches of the south coast such as Unawatuna & Hikkaduwa are 5 to 10 km away from Sanras. 
		               
		              </div>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex ftco-animate">
		            <div class="blog-entry align-self-stretch d-md-flex">
		              <a  class="block-20" style="background-image: url('images/j.jpg');">
		              </a>
		              <div class="text d-block pl-md-4">
		              	<div class="meta mb-3">
		                  <div>July 20, 2019</a></div>
		                  <div>Admin</a></div>
		                  <div><a  class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <h3 class="heading">Public transport fare is Rs 13.00 and Tuk ?Tuk taxi fare is Rs. 150/-to 200/- from the Galle City centre to Sanras.
                                        The historical Dutch Fort known as the Galle Fort is famous for its archeological value, ancient mansions, beautiful landscape and two museums is within 2.5 Km from Sanras. 
                                        Many popular restaurants to experience worldwide cuisine are also located in the Fort fortress.</p>
		               
		              </div>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex ftco-animate">
		            <div class="blog-entry align-self-stretch d-md-flex">
		              <a  class="block-20" style="background-image: url('images/g.jpg');">
		              </a>
		              <div class="text d-block pl-md-4">
		              	<div class="meta mb-3">
		                  <div><a >July 20, 2019</a></div>
		                  <div><a >Admin</a></div>
		                  <div><a class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <h3 class="heading">
		                <p>Sanras Holiday Home comprises with 8 spacious bed rooms with en-suite bath rooms. Guests can watch the sunset and have breakfast, 
                                    lunch or dinner in the restaurant located in the 4th floor.</p>
		                
		              </div>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex ftco-animate">
		            <div class="blog-entry align-self-stretch d-md-flex">
		              <a href="blog-single.html" class="block-20" style="background-image: url('images/s.jpg');">
		              </a>
		              <div class="text d-block pl-md-4">
		              	<div class="meta mb-3">
		                  <div><a>July 20, 2019</a></div>
		                  <div><a >Admin</a></div>
		                  <div><a  class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <h3 class="heading">
		                <p>When traveling to the country side Sri Lankan culture, livelihood of villages, Buddhist temples, cultivations such as coconut, tea, and cinnamon could be seen.
                                    Boating in Dadalla River for bird watching and sailing in deep sea form Galle harbor and whale watching are very much popular activities among nature lovers.
                                    World famous rain forests such as Kannellya and Kottawa with its compelling bio diversity are also within 25 Km from Sanras. 
                                    These forests border spectacular sites with waterfalls and fountains too. 
                                    Gems and Jewelry, Wood carving, Hand looms, Moonstone Mines, Tea factories also available to explore within fairly short distances from Sanras. </p>
		                
		              </div>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex ftco-animate">
		            <div class="blog-entry align-self-stretch d-md-flex">
		              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_5.jpg');">
		              </a>
		              <div class="text d-block pl-md-4">
		              	<div class="meta mb-3">
		                  <div><a href="#">July 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <h3 class="heading"><a href="#">Nutrition</a></h3>
		                <p>Nutrition is the science that interprets the interaction of nutrients and other substances in food in relation to maintenance,
                                    growth, reproduction, health and disease of an organism. 
                                    It includes food intake, absorption, assimilation, biosynthesis, catabolism and excretion.[1]

                                          The diet of an organism is what it eats, which is largely determined by the availability and palatability of foods.
                                          For humans,a healthy diet includes preparation of food and storage methods that preserve nutrients from oxidation,
                                    heat or leaching, and that reduces risk of foodborne illnesses.</p>
		               
		              </div>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex ftco-animate">
		            <div class="blog-entry align-self-stretch d-md-flex">
		              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_6.jpg');">
		              </a>
		              <div class="text d-block pl-md-4">
		              	<div class="meta mb-3">
		                  <div><a href="#">July 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <h3 class="heading"><a href="#">Nutrition</a></h3>
		                <p></p>
		                
		              </div>
		            </div>
		          </div>
						</div>
          </div> <!-- .col-md-8 -->
          <div class="col-lg-4 sidebar ftco-animate">
         
           

            <div class="sidebar-box ftco-animate">
              <h3 class="heading">Recent Blog</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/k.jpg);"></a>
                <div class="text">
                  <h3 class="heading-1">Sanras Holiday Home is situated on the Galle ? Colombo Road in the area known as Dadalla.
                          The hotel is approximately 2 Km away from the Historical Galle City,</a></h3>
                  <div class="meta">
                    <div><span class="icon-calendar"></span> April 09, 2019</a></div>
                    <div><span class="icon-person"></span> Admin</a></div>
                    <div><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/j.jpg);"></a>
                <div class="text">
                  <h3 class="heading-1"><a href="#">Public transport fare is Rs 13.00 and Tuk ?Tuk taxi fare is
                          Rs. 150/-to 200/- from the Galle City centre to Sanras.</a></h3>
                  <div class="meta">
                    <div>><span class="icon-calendar"></span> April 09, 2019</a></div>
                    <div><span class="icon-person"></span> Admin</a></div>
                    <div><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
             
            </div>

           

            <div class="sidebar-box ftco-animate">
              <h3 class="heading">Paragraph</h3>
              <p>The importance of nutrition and a balanced diet

Nutrition is vital for your body and all of its systems to function properly,by having good nutrition 
it will help you maintain a healthy weight, reduce body fat,provide your body with energy, promote good sleep and generally make you feel better.
</p>
            </div>
          </div>

        </div>
      </div>
    </section> <!-- .section -->
    
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
      
       }catch(Exception e){
       out.println(e);}
    
      
        }
    %>


          </div>
        </div>
      </div>
    </section>

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