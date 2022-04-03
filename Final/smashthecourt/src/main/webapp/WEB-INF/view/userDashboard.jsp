<%@page import="com.smashthecourt.dao.UserDao"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.smashthecourt.restcontroller.UserDetailsRest"%>
<%@page import="com.smashthecourt.repository.UserDataRepository"%>
<%@page import="com.smashthecourt.entity.UserDataEntity"%>
<%@page import="com.smashthecourt.entity.OwnerDataEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>DashBoard - Smash The Court</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/assets/img/favicon.png" rel="icon">
<link href="resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Moderna - v4.8.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
  
  $(document).ready(()=>{
	  let userId2 =document.getElementById("userId").value;
	  $.ajax({
		  url: "http://localhost:9090/bookingdetails/getbookingbyuserid/" + userId2 , 
		  success: function(result){
	        var res = result;
	        
	        for(let a =0;a<res.length;a++){
	        	console.log(res[a].startDate);
	        	$("#tb").append(
	        	`<tr>
	            <th scope="row">` + res[a].courtId + `</th>
	            <td>` + res[a].startDate + `</td>
	            <td>` + res[a].endDate + `</td>
	            <td>` + res[a].startTime +'-'+ res[a].endTime + `</td>
	            <td>` + res[a].amount + `</td>
	          </tr>`
	          );
	        }           
	    }});
	  
	  
	  
  
  $("#go").click(function(){
	  
	 	let userId1 =document.getElementById("userId").value;
	    let firstName1 =document.getElementById("firstName").value;
	    let lastName1 =document.getElementById("lastName").value;
	    let email1 =document.getElementById("email").value;
	    let password1 =document.getElementById("password").value;
	    let mobileNo1 =document.getElementById("mobileNo").value;
	    let gender1 =document.getElementById("gender").value;
	    let address1 =document.getElementById("address").value;
	    let question1 =document.getElementById("question").value;
	    let answer1 =document.getElementById("answer").value;
	    console.log(password1);
  	
  $.ajax({
  	url: "http://localhost:9090/userdetails/updateuser/" + userId1 + "/" + firstName1 + "/" + lastName1 + "/" + email1 + "/" + password1 + "/" + mobileNo1 + "/" + gender1 + "/" + address1 + "/" + answer1 ,
  	 type : "POST" ,
  	 
 
  })
  alert("Profile Updated Successfully!");
  });

  });
  
  
  
  </script>
</head>

<body style="background-color: rgb(255 250 250)">

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top d-flex align-items-center ">
		<div
			class="container d-flex justify-content-between align-items-center">

			<div class="logo">
				<!-- <h1 class="text-light"><a href="index.html"><span>Moderna</span></a></h1> -->
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->
				<a href="/"><img src="resources/assets/img/logo.png" alt=""
					class="img-fluid"></a>
			</div>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="" href="/">Home</a></li>
					<li><a href="/about">About</a></li>
					<li><a class="" href="/services">Services</a></li>
					<!-- <li><a href="portfolio.html">Portfolio</a></li>
          <li><a href="team.html">Team</a></li>
          <li><a href="blog.html">Blog</a></li> -->
					<li><a href="/contact">Contact Us</a></li>
					<%
					OwnerDataEntity owner = (OwnerDataEntity) session.getAttribute("owner");
					UserDataEntity user = (UserDataEntity) session.getAttribute("user");

					if (owner == null && user == null) {
					%>
					<li class="dropdown"><a href="#"><span>Login /
								Sign-Up</span> <i class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="/userlogin">User</a></li>
							<li><a href="http://localhost:3000/">Owner Login</a></li>
							<li><a href="/ownerRegistration">Owner Registration</a></li>
						</ul></li>

					<%
					} else if (owner != null) {
					%>

					<li class="dropdown"><a href="#"><span><%=owner.getFirstName() + " " + owner.getLastName()%></span>
							<i class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="/ownerlogout">Log-Out</a></li>
							<li><a href="#">DashBoard</a></li>
						</ul></li>


					<%
					} else if (user != null) {
					%>

					<li class="dropdown"><a href="#"><span><%=user.getFirstName() + " " + user.getLastName()%></span>
							<i class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="/userdashboard">DashBoard</a></li>
          					 <li><a href="/userlogout">Log-Out</a></li>
						</ul></li>
					<%
					}
					%>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<%
		UserDataEntity userObj = (UserDataEntity) session.getAttribute("user");
		%>


		<!-- ======= Service Details Section ======= -->
		<section class="service-details">
			<div class="container">

				<div class="container-fluid">
					<h1>Welcome<%=" "+userObj.getFirstName()+" "+userObj.getLastName() %></h1>

					<div class="row">

						<!--  <form action="/updateuser" method="get"> -->

						<div class="col-sm-12"
							style="background-color: rgb(230 230 250);">

							<div class="row">
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>User Id</p>
									<input type="text" name="userId" id="userId"
										value="<%=userObj.getUserId()%>">
								</div>
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>First Name</p>
									<input type="text" name="firstName" id="firstName"
										value="<%=userObj.getFirstName()%>">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Last Name</p>
									<input type="text" name="lastName" id="lastName"
										value="<%=userObj.getLastName()%>">
								</div>
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Email</p>
									<input type="text" name="email" id="email"
										value="<%=userObj.getEmail()%>">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Password</p>
									<input type="text" name="password" id="password"
										value="<%=userObj.getPassword()%>">
								</div>
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Mobile No.</p>
									<input type="text" name="mobileNo" id="mobileNo"
										value="<%=userObj.getMobileNo()%>">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Gender</p>
									<input type="text" name="gender" id="gender"
										value="<%=userObj.getGender()%>">
								</div>
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Address</p>
									<input type="text" name="address" id="address"
										value="<%=userObj.getAddress()%>">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Question</p>
									<input type="text" name="question" id="question"
										value="<%=userObj.getQuestion()%>">
								</div>
								<div class="col-sm-6"
									style="background-color: rgb(230 230 250);">
									<p>Answer</p>
									<input type="text" name="answer" id="answer"
										value="<%=userObj.getAnswer()%>">
								</div>
							</div>

							<br>

							<div class="row">
								<div class="col-sm-4"
									style="background-color: rgb(230 230 250);"></div>
								<div class="col-sm-8"
									style="background-color: rgb(230 230 250);">

									<input type="button" value="Update" id="go">
									<br><br>
								</div>
							</div>

						</div>

						<!-- </form> -->
					</div>
					<!-- End of left portion -->
					<br> <br> <br>

					<div class="row">
						<h1>Your Bookings</h1>
						<div class="col-sm-12"
							style="background-color: rgb(255, 182, 193);">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Court Id</th>
										<th scope="col">Booking Start Date</th>
										<th scope="col">Booking End Date</th>
										<th scope="col">Slot</th>
										<th scope="col">Payment Amount</th>
									</tr>
								</thead>
								<tbody id="tb">
								</tbody>
							</table>

						</div>
					</div>
				</div>

			</div>
		</section>
		<!-- End Service Details Section -->



	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out"
		data-aos-duration="500">


		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="/">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="/about">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a
								href="/slotBooking">Court Booking</a></li>
							<li><i class="bx bx-chevron-right"></i> <a
								href="/slotBooking">Slot Availability Check</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Court
									Management</a></li>
							<!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li> -->
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-contact">
						<h4>Contact Us</h4>
						<p>
							Office No. 401, A-wing, Swastik Society Manikchand Galleria,
							Model Colony, <br> Shivajinagar, Pune ,<br> Maharashtra
							411016<br> <br> <strong>Phone:</strong> +91 7744556677<br>
							<strong>Email:</strong> smashthecourt@gmail.com<br>
						</p>

					</div>

					<div class="col-lg-3 col-md-6 footer-info">
						<h3>About Smash The Court</h3>
						<p>Smash The Court Is Platform Where Player Can Book The Court
							With Ease Of Click And Club Owners Can List There Clubs For
							Booking .</p>
						<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
								href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
							<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>Smash The Court</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">

				<!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="resources/assets/vendor/purecounter/purecounter.js"></script>
	<script src="resources/assets/vendor/aos/aos.js"></script>
	<script
		src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script src="resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/assets/js/main.js"></script>

</body>

</html>