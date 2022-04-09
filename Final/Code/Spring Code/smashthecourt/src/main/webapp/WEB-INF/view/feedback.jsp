<%@page import="com.smashthecourt.entity.UserDataEntity"%>
<%@page import="com.smashthecourt.entity.OwnerDataEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="/resources/css/feedback/feedback.css">
  
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact - Smash The Court</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Moderna - v4.8.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

     <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <!-- <h1 class="text-light"><a href="index.html"><span>Moderna</span></a></h1> -->
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->
        <a href="/"><img src="resources/assets/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="" href="/">Home</a></li>
          <li><a  href="/about">About</a></li>
          <li><a href="/services">Services</a></li>
          <!-- <li><a href="portfolio.html">Portfolio</a></li>
          <li><a href="team.html">Team</a></li>
          <li><a href="blog.html">Blog</a></li> -->
          <li><a class="" href="/contact">Contact Us</a></li>
           <%
         OwnerDataEntity owner =(OwnerDataEntity)session.getAttribute("owner"); 
         UserDataEntity user = (UserDataEntity)session.getAttribute("user"); 
         
         if( owner == null && user == null){
        	 %>
         <li class="dropdown"><a href="#"><span>Login / Sign-Up</span> <i class="bi bi-chevron-down"></i></a>
         <ul>
           <li><a href="/userlogin">User</a></li>
           <li><a href="http://localhost:3000/">Owner Login</a></li>
           <li><a href="/ownerRegistration">Owner Registration</a></li>
         </ul>
       </li>
       
       <%} else if(owner != null){%>
         
            <li class="dropdown"><a href="#"><span><%=owner.getFirstName()+" "+owner.getLastName()%></span> <i class="bi bi-chevron-down"></i></a>
         <ul>
           <li><a href="/ownerlogout">Log-Out</a></li>
           <li><a href="#">DashBoard</a></li>
         </ul>
       </li>
        
        	 
         <%
         }
       else if(user != null){%>
         
         <li class="dropdown"><a href="#"><span><%=user.getFirstName()+" "+user.getLastName()%></span> <i class="bi bi-chevron-down"></i></a>
         <ul>
           <li><a href="/userdashboard">DashBoard</a></li>
           <li><a href="/userlogout">Log-Out</a></li>
         </ul>
       </li>
       <%
       }
         %>
        
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
   
  
  <div class="container" style="width: 600px">  
    <form id="contact" action="" method="post">
      <h3> Feedback Form</h3>
      <h4></h4>
      <fieldset>
        <input placeholder="Your name" type="text" tabindex="1" required autofocus>
      </fieldset>
      <!-- <fieldset>
        <input placeholder="Your Email Address" type="email" tabindex="2" required>
      </fieldset> -->
      
      <fieldset>
        <input placeholder="Court id..." type="text" tabindex="3" required >
      </fieldset>
      <fieldset>
        <textarea placeholder="Type your Comments here...." tabindex="5" required></textarea>
      </fieldset>

      <label>Ratings : </label>
      <p class="clasificacion">
          
        <input id="radio1" type="radio" name="estrellas" value="5"><!--
       --><label for="radio1">&#9733;</label><!--
       --><input id="radio2" type="radio" name="estrellas" value="4"><!--
       --><label for="radio2">&#9733;</label><!--
       --><input id="radio3" type="radio" name="estrellas" value="3"><!--
       --><label for="radio3">&#9733;</label><!--
       --><input id="radio4" type="radio" name="estrellas" value="2"><!--
       --><label for="radio4">&#9733;</label><!--
       --><input id="radio5" type="radio" name="estrellas" value="1"><!--
       --><label for="radio5">&#9733;</label>
     </p>
     <br>
      <fieldset>
        <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
      </fieldset>
      
      <p class="copyright"><a href="" target="_blank" title="Colorlib"></a></p>
    </form>
  </div>
  
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">


  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bx bx-chevron-right"></i> <a href="/">Home</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="/about">About us</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
            <!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li> 
            <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><i class="bx bx-chevron-right"></i> <a href="/slotBooking">Court Booking</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="/slotBooking">Slot Availability Check</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Court Management</a></li>
            <!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li> -->
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-contact">
          <h4>Contact Us</h4>
          <p>
            Office No. 401, A-wing, Swastik Society Manikchand Galleria, Model Colony, <br>
            Shivajinagar, Pune ,<br>
            Maharashtra 411016<br><br>
            <strong>Phone:</strong> +91 7744556677<br>
            <strong>Email:</strong> smashthecourt@gmail.com<br>
          </p>

        </div>

        <div class="col-lg-3 col-md-6 footer-info">
          <h3>About Smash The Court</h3>
          <p>Smash The Court Is Platform Where Player Can Book The Court With Ease Of Click And Club Owners Can List There Clubs For Booking .</p>
          <div class="social-links mt-3">
            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>
  </div>

  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong><span>Smash The Court</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      
      <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
    </div>
  </div>
</footer><!-- End Footer -->


<!-- Vendor JS Files -->
<script src="resources/assets/vendor/purecounter/purecounter.js"></script>
<script src="resources/assets/vendor/aos/aos.js"></script>
<script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
<script src="resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="resources/assets/js/main.js"></script>

  </body>
  </html>