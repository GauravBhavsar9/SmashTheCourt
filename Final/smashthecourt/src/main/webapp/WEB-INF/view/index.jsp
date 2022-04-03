<%@page import="com.smashthecourt.entity.UserDataEntity"%>
<%@page import="com.smashthecourt.entity.OwnerDataEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmashTheCourt</title>
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
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <!-- <h1 class="text-light"><a href="index.html"><span>SMASH THE COURT</span></a></h1> -->
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="/"><img src="resources/assets/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active " href="/">Home</a></li>
          <li><a href="/about">About</a></li>
          <li><a href="/services">Services</a></li>
          <!-- <li><a href="portfolio.html">Portfolio</a></li>
          <li><a href="team.html">Team</a></li>
          <li><a href="blog.html">Blog</a></li> -->
          <li><a href="/contact">Contact Us</a></li>
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
         <li><a href="#">DashBoard</a></li>
           <li><a href="/ownerlogout">Log-Out</a></li>
           
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

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown"> <span>Smash The Court</span></h2>
          <p class="animate__animated animate__fadeInUp">SMASH THE COURT Sports App  is the sports facility booking platform, which also helps sports enthusiast to find similar skills opponents/partners to play with. </p>
          <a href="/slotBooking" class="btn-get-started animate__animated animate__fadeInUp">Book Now</a>
        </div>
      </div>
<!-- 
      Slide 2
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Lorem Ipsum Dolor</h2>
          <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
          <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
        </div>
      </div>

      Slide 3
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Sequi ea ut et est quaerat</h2>
          <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
          <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
        </div>
      </div> -->
<!-- 
      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
      </a> -->

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="">Play</a></h4>
              <p class="description">You're the hero , you've found a stunning turf or court , booked with ease and now its time to play. The scene is set for epic match</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">Book</a></h4>
              <p class="description">Once you've found the perfect court. Connect with the venuw throgh the Book Now Button to make online booking & secure easier payment.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">Faster Booking</a></h4>
              <p class="description">Saving time and making your booking experience seamless is our priority. With our Fast Forward service, you can enjoy priority to check Availability.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">Search</a></h4>
              <p class="description">Are you looking to play after work, organize your Sunday Five's Badminton match? Explore the largest network of sports facilities whole over the India</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 video-box">
            <img src="resources/assets/img/why-us.jpg" class="img-fluid" alt="">
            <!-- <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a> -->
          </div>

          <div class="col-lg-6 d-flex flex-column justify-content-center p-5">

            <div class="icon-box">
              <!-- <div class="icon"><i class="bx bx-fingerprint"></i></div> -->
              <h4 class="title"><a href="">Rajiv Ouseph</a></h4>
              <p class="description">  Some smashes have been timed at more than 250 mph, so you get less than a second to react. People who see a professional badminton match up close are always shocked at the speed. </p>
            </div>

            <div class="icon-box">
              <!-- <div class="icon"><i class="bx bx-gift"></i></div> -->
              <h4 class="title"><a href="">P. V. Sindhu</a></h4>
              <p class="description">"Win or lose, I always focus only on giving my 100 percent." </p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
      <div class="container">

        <div class="section-title">
          <h2>Features</h2>
          <p>We provide's the functionality of booking , managing and tracking the Badminton court . User can check availability of courts and time slots according to his requirements . Owner can register with his clubs details to make it accessible for online booking . this provide easy and comprehensible interface which is user-friendly .</p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="resources/assets/img/features-1.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3>What we do</h3>
            <p class="fst-italic">
              Started in 2022,with just a click of a button, GW is revolutionizing how pickup games are planned and booked in clubs. “Smash The Court’ event team also organizes one of the most professionally run corporate sports in different cities. ‘Smash The Court’ mission to facilitate over 10 Cr Indians by 2023 and our vision is to make sports an integral part of Health & Fitness regime.
            </p>
            <ul>
              <li><i class="bi bi-check"></i> Ease Of One Click Booking.</li>
              <li><i class="bi bi-check"></i> Gives Proper Management Of Courts.</li>
            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="resources/assets/img/features-2.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Keeps it fast and simple</h3>
            <p class="fst-italic">
              Keeps it fast and simple so that no special software or downloads are needed for a customer in order to make a booking.
            </p>
            <p>
              Some systems demand that your guest have specialised software installed on their computer in order to make a booking. Many computers do not have the software and users are forced to download it. Online Booking keeps it fast and simple.
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="resources/assets/img/features-3.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5">
            <h3>Why choose us ? </h3>
            <p>‘Smash The Court’ provides sports enthusiast, the most uncomplicated and quickest booking experience. The platform offers the most comprehensive category of sports on its platform so if you are an expert of a Smash, we have got your back. Find similar skilled players and opponent teams by creating a game in our Connect section and enjoy competitive pickup games. With ‘Smash The Court’ subscription book sports facility in just 30 secs, Book now pay later, single click booking, cash backs etc. Choose and register in sports & fitness activities happening near you. So next time you or your company plan to play sports do check with us. </p>
            <!-- <ul>
              <li><i class="bi bi-check"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
              <li><i class="bi bi-check"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
              <li><i class="bi bi-check"></i> Facilis ut et voluptatem aperiam. Autem soluta ad fugiat.</li>
            </ul> -->
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="resources/assets/img/features-4.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Book Courts Online</h3>
            <p class="fst-italic">
             Users can check the court availability 24/7, Without registration . and book the court after login.
            </p>
            <p>
              The hassle of calling and endless coordination to reserve your favourite court is no more, as we have made the court booking process as painless as possible. Smash The Court is an online Badminton court booking application that makes it quick and easy for you to book and manage a Badminton court according to your preferences.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">


    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/services">Services</a></li>
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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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