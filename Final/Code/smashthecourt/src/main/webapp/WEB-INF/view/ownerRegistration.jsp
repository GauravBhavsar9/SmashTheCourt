
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!--  required referances for navbar -->
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Registration - Smash The Court</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="resources/assets/img/favicon.png" rel="icon" />
    <link
      href="resources/assets/img/apple-touch-icon.png"
      rel="apple-touch-icon"
    />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="resources/assets/vendor/animate.css/animate.min.css"
      rel="stylesheet"
    />
    <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet" />
    <link
      href="resources/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/boxicons/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/glightbox/css/glightbox.min.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/swiper/swiper-bundle.min.css"
      rel="stylesheet"
    />

    <!-- Template Main CSS File -->
    <link href="resources/assets/css/style.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: Moderna - v4.8.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

    <title>Owner Registration</title>


    <!--===============================================================================================-->
    <link
      rel="icon"
      type="image/png"
      href="resources/images/registration/icons/favicon.ico"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/vendor/registration/bootstrap/css/bootstrap.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/fonts/registration/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/fonts/registration/Linearicons-Free-v1.0.0/icon-font.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/fonts/registration/iconic/css/material-design-iconic-font.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/vendor/registration/animate/animate.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/vendor/registration/css-hamburgers/hamburgers.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/vendor/registration/animsition/css/animsition.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/vendor/registration/select2/select2.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/vendor/registration/daterangepicker/daterangepicker.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/css/registration/util.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="resources/css/registration/main.css"
    />
    <!--===============================================================================================-->
  </head>
  <body style="background-color: #999999">
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex justify-content-between align-items-center">
        <div class="logo">
          <!-- <h1 class="text-light"><a href="index.html"><span>Moderna</span></a></h1> -->
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
          <a href="/"
            ><img src="resources/assets/img/logo.png" alt="" class="img-fluid"
          /></a>
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
           <!--  <li class="dropdown">
              <a class="active" href="#"
                ><span>Login / Sign-Up</span> <i class="bi bi-chevron-down"></i
              ></a>
              <ul>
                <li><a href="/userlogin">User</a></li>
                <li><a href="/ownerlogin">Owner</a></li>
              </ul>
            </li> -->
            <!-- <li><a href="contact.html">Contact Us</a></li> -->
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <div class="limiter">
      <div class="container-login100">
        <div
          class="login100-more"
          style="
            background-image: url('resources/images/registration/bg-01.jpg');
          "
        ></div>

        <div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
          
          
          <form class="login100-form validate-form"
            method="get"
            action="/ownerregistrationdata"
          >
          
          <span class="login100-form-title p-b-59"> Owner Sign Up </span>

            <div
              class="wrap-input100 validate-input"
              data-validate="Name is required"
            >
              <span class="label-input100">First Name</span>
              <input
                class="input100"
                type="text"
                name="firstName"
                placeholder="First Name..."
              />
              <span class="focus-input100"></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Name is required"
            >
              <span class="label-input100">Last Name</span>
              <input
                class="input100"
                type="text"
                name="lastName"
                placeholder="Last Name..."
              />
              <span class="focus-input100"></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Valid email is required: ex@abc.xyz"
            >
              <span class="label-input100">Email</span>
              <input
                class="input100"
                type="text"
                name="email"
                placeholder="Email addess..."
              />
              <span class="focus-input100"></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Password is required"
            >
              <span class="label-input100">Password</span>
              <input
                class="input100"
                type="password"
                name="password"
                placeholder="*************"
              />
              <span class="focus-input100"></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Name is required"
            >
              <span class="label-input100">Mobile No.</span>
              <input
                class="input100"
                type="text"
                name="mobileNo"
                placeholder="Mobile No..."
              />
              <span class="focus-input100"></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Name is required"
            >
              <span class="label-input100">Security Question</span>
              <input
                class="input100"
                type="text"
                name="question"
                value="What is your school name?"
                placeholder="What was the first concert you attended ?"
              />
              <span class="focus-input100"></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Name is required"
            >
              <span class="label-input100">Answer</span>
              <input
                class="input100"
                type="text"
                name="questionAns"
                placeholder="Answer"
              />
              <span class="focus-input100"></span>
            </div>

            <!-- <div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Address</span>
						<select name="" id="">
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
						</select>
						<span class="focus-input100"></span>
					</div> -->

            <div class="flex-m w-full p-b-33">
              <div class="contact100-form-checkbox">
                <input
                  class="input-checkbox100"
                  id="ckb1"
                  type="checkbox"
                  name="remember-me"
                />
                <label class="label-checkbox100" for="ckb1">
                  <span class="txt1">
                    I agree to the
                    <a href="#" class="txt2 hov1"> Terms of User </a>
                  </span>
                </label>
              </div>
            </div>

            <div class="container-login100-form-btn">
              <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
                <button class="login100-form-btn" id="signup">Sign Up</button>
              </div>

              <a
                href="http://localhost:3000/"
                class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30"
              >
                Sign in
                <i class="fa fa-long-arrow-right m-l-5"></i>
              </a>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div>
      <!-- ======= Footer ======= -->
      <footer
        id="footer"
        data-aos="fade-up"
        data-aos-easing="ease-in-out"
        data-aos-duration="500"
      >
        <div class="footer-top">
          <div class="container">
            <div class="row">
              <div class="col-lg-3 col-md-6 footer-links">
                <h4>Useful Links</h4>
                <ul>
                  <li>
                    <i class="bx bx-chevron-right"></i> <a href="/">Home</a>
                  </li>
                  <li>
                    <i class="bx bx-chevron-right"></i>
                    <a href="/about">About us</a>
                  </li>
                  <li>
                    <i class="bx bx-chevron-right"></i>
                    <a href="/services">Services</a>
                  </li>
                  <!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                  <li>
                    <i class="bx bx-chevron-right"></i>
                    <a href="#">Privacy policy</a>
                  </li> -->
                </ul>
              </div>

              <div class="col-lg-3 col-md-6 footer-links">
                <h4>Our Services</h4>
                <ul>
                  <li>
                    <i class="bx bx-chevron-right"></i>
                    <a href="/slotBooking">Court Booking</a>
                  </li>
                  <li>
                    <i class="bx bx-chevron-right"></i>
                    <a href="/slotBooking">Slot Availability Check</a>
                  </li>
                  <li>
                    <i class="bx bx-chevron-right"></i>
                    <a href="#">Court Management</a>
                  </li>
                  <!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li> -->
                </ul>
              </div>

              <div class="col-lg-3 col-md-6 footer-contact">
                <h4>Contact Us</h4>
                <p>
                  Office No. 401, A-wing, Swastik Society Manikchand Galleria,
                  Model Colony, <br />
                  Shivajinagar, Pune ,<br />
                  Maharashtra 411016<br /><br />
                  <strong>Phone:</strong> +91 7744556677<br />
                  <strong>Email:</strong> smashthecourt@gmail.com<br />
                </p>
              </div>

              <div class="col-lg-3 col-md-6 footer-info">
                <h3>About Smash The Court</h3>
                <p>
                  Smash The Court Is Platform Where Player Can Book The Court
                  With Ease Of Click And Club Owners Can List There Clubs For
                  Booking .
                </p>
                <div class="social-links mt-3">
                  <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                  <a href="#" class="facebook"
                    ><i class="bx bxl-facebook"></i
                  ></a>
                  <a href="#" class="instagram"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                  <a href="#" class="linkedin"
                    ><i class="bx bxl-linkedin"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container">
          <div class="copyright">
            &copy; Copyright <strong><span>Smash The Court</span></strong
            >. All Rights Reserved
          </div>
          <div class="credits">
            <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
          </div>
        </div>
      </footer>
      <!-- End Footer -->

      <a
        href="#"
        class="back-to-top d-flex align-items-center justify-content-center"
        ><i class="bi bi-arrow-up-short"></i
      ></a>

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

    <!--===============================================================================================-->
    <script src="resources/vendor/registration/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="resources/vendor/registration/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="resources/vendor/registration/bootstrap/js/popper.js"></script>
    <script src="resources/vendor/registration/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="resources/vendor/registration/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="resources/vendor/registration/daterangepicker/moment.min.js"></script>
    <script src="resources/vendor/registration/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="resources/vendor/registration/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="resources/registration/js/main.js"></script>
  </body>
</html>
