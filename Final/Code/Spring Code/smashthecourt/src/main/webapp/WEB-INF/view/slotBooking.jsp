<%@page import="com.smashthecourt.entity.UserDataEntity"%>
<%@page import="com.smashthecourt.entity.OwnerDataEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
    <title>Book Now - Smash The Court</title>

	<!--  required referances for navbar -->
 
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>About - Moderna Bootstrap Template</title>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
<script >
  $(document).ready(()=>{


    $.ajax({url: "http://localhost:9090/clubDetails/getcity", success: function(result){
        var res = result;
        $("#city").html("");
        $("#city").append( new Option("Select","Select"));
        for(let a =0;a<res.length;a++){
          $("#city").append( new Option(res[a],res[a]));
        }           
    }});


   /*  $("#city").change(function(){

  //     var city = $("#city").val();
  //     console.log(city);
  //     $.ajax({url: `http://localhost:9090/clubDetails/getclub/${city}`, success: function(result){
  //       var res = result;
  //       for(let a =0;a<res.length;a++){
  //         $("#city").append( new Option(res[a],res[a]));
  //       }           
  //   }
  // }
  // );
  console.log("sucess");
  });
 */
    $("#city").change(function(){
    	var ct=$("#city").val()
    	console.log(ct);
    	var url = "http://localhost:9090/clubDetails/getClubAll/" + ct;
    	
    $.ajax({
    	url:url, 
    	success: function(result){
        var res = result;
        $("#club").html("");
        $("#club").append( new Option("Select","Select"));
        for(let a =0;a<res.length;a++){
        	
          $("#club").append( new Option(res[a].clubName,res[a].clubId));
        }           
    }
    })
    });
 
    $("#club").change(function(){
    	var id=$("#club").val()
    	
    	var url = "http://localhost:9090/courtdetails/getcourt/" + id;
    	
    $.ajax({
    	url:url, 
    	success: function(result){
        var res = result;
        console.log(res);
        $("#court").html("");
        $("#court").append( new Option("Select","Select"));
        for(let a =0;a<res.length;a++){
        	
          $("#court").append( new Option(res[a].courtNo,res[a].courtId));
        }           
    }
    })
    });
    
    
    
   /*  $("#court").change(function(){
    	var id=$("#court").val()
    	
    	var url = "http://localhost:9090/courtdetails/getcourtbycourtid/" + id;
    	
    $.ajax({
    	url:url, 
    	success: function(result){
        var res = result;
        console.log(res);
        $("#amount").html("");
        $("#amount").html( <h3>Amount :  res.charges</h3>);
                 
    }
    })
    }); */
    
    $("#court").change(function(){
    	var id=$("#court").val()
    	var url = "http://localhost:9090/courtdetails/getcourtbycourtid/" + id;
    $.ajax({
    	url:url, 
    	type : "GET" ,
    	success: function(result){
        var res = result;
        console.log(res.charges);
        $("#amount1").html('Amount : <input type="text" name="amount" value="'+res.charges+'" style="width:200px"> '); 
        /* $("#amount").val(res.charges)
        $("#amount1").append("Amount : "); 
        $("#amount1").append(res.charges); 
        $("#amount").value(res.charges); */
        
    }
    })
    });
    
    $("#month").change(function(){
    	var month=$("#month").val()
    	console.log(month);
    	var url = "http://localhost:9090/bookingdetails/getavailableslot/" + month;
    	
    $.ajax({
    	url:url, 
    	type : "GET" ,
    	success: function(result){
        var res = result;
        console.log(res);
        $("#slot").html("");
        $("#slot").append( new Option("Select","Select"));
        
        for(let a =0;a<res.length;a++){
        	let x=res[a] + " - " + parseInt(res[a] + 1);
        	
          $("#slot").append( new Option(x,res[a]));
        }           
    }
    })
    });
    
  })
</script>
  </script>
    
</head>
<body background="resources/images/SlotBooking.jpg">

	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <!-- <h1 class="text-light"><a href="index.html"><span>Moderna</span></a></h1> -->
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        <a href="/"><img src="resources/assets/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="" href="/">Home</a></li>
          <li><a class="" href="/about">About</a></li>
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
          <!-- <li><a href="contact.html">Contact Us</a></li> -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

    
<br><br><br>
<form action="/slotBooking" method="POST">
<div style="height: 500px;">


  <div class="d-flex justify-content-center" style="margin-top: 150px;">

        
<div class="mx-5">
  City:  <select name="city" id="city">

  </select>
</div>

<div class="mx-5">
  Club : <select name="club" id="club">
<option value="Select">Select</option>
</select>
</div>

<div class="mx-5">
  Court : <select name="court" id="court">
<option value="Select">Select</option>
</select>
</div>



<div class="mx-5">
 Month : <select name="month" id="month">
  <option value="Select">Select</option>
  <option value="1">Jan</option>
  <option value="2">Feb</option>
  <option value="3">March</option>
  <option value="4">April</option>
  <option value="5">May</option>
  <option value="6">June</option>
  <option value="7">July</option>
  <option value="8">Aug</option>
  <option value="9">Sep</option>
  <option value="10">Oct</option>
  <option value="11">Nov</option>
  <option value="12">Dec</option>
  </select>
</div>


<div class="mx-5">
  Available Slots : <select name="slot" id="slot">
<option value="Select">Select</option>
</select>
</div>
  </div>
<br><br>

<div class="mx-5"  >
 <div class="row justify-content-md-center" id="amount1">
 </div>
  </div>

<br><br>
<div class="mx-5" >
 <div class="row justify-content-md-center">
  <input type="Submit" value="Book" name="book" id="book" class="col-md-2">
</div>
  </div>
</div>
</form>
</div>


         <div>

	<!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">


    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/services">Services</a></li>
              <!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Court Booking</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Slot Availability Check</a></li>
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

</div>
   <!--  <div class="text-center p-3 " style="background-color: rgba(0, 0, 0, 0.2);">
    2022 � Smash The Court.
      </div> -->
</body>
</html>