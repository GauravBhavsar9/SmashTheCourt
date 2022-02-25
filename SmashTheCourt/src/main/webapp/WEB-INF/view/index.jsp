<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    <title>Smash The Court</title>


    
  </head>
  <body>
   

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Smash The Court</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/login">Login</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled" href="/login">Login</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>


  </body>
</html> -->



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>SmashTheCourt</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/home/style.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/home/jquery.fancybox.min.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/home/owl.carousel.min.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/home/owl.theme.default.min.css"/>

<!-- Font Google -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
  <div class="container"> <a class="navbar-brand navbar-logo" href="#"> <img src="resources/images/logo-white.png" alt="logo" class="logo-1"> </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="fas fa-bars"></span> </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"> <a class="nav-link" href="" data-scroll-nav="0">Home</a> </li>
        <li class="nav-item"> <a class="nav-link" href="#" data-scroll-nav="1">About</a> </li>
        <li class="nav-item"> <a class="nav-link" href="#" data-scroll-nav="2">Services</a> </li>
        <li class="nav-item"> <a class="nav-link" href="#" data-scroll-nav="3">Own Work</a> </li>
        <li class="nav-item"> <a class="nav-link" href="#" data-scroll-nav="4">Contact</a> </li>
        <div class="dropdown show">
          <a class="btn dropdown-toggle text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Login/Register
          </a>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" href="/ownerlogin">Owner</a>
            <a class="dropdown-item" href="/userlogin">User</a> 
          </div>
        </div>
      </ul>
    </div>
  </div>
</nav>
<!-- End Navbar --> 

<!-- Banner Image -->

<div class="banner text-center" data-scroll-index='0'>
  <div class="banner-overlay">
    <div class="container">
      <h1 class="text-capitalize">Smash The Court</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec justo rhoncus, pharetra dui ut, cursus turpis. Aenean tincidunt vitae ligula eget congue.</p>
      <a href="#" class="banner-btn">Get Started</a> </div>
  </div>
</div>

<!-- End Banner Image --> 

<!-- About -->

<div class="about-us section-padding" data-scroll-index='1'>
  <div class="container">
    <div class="row">
      <div class="col-md-12 section-title text-center">
        <h3>We Are Best At Our Work</h3>
        <p>Suspendisse fringilla eget arcu et bibendum. Vestibulum elementum dui tempus dolor gravida, vel mattis erat fermentum.</p>
        <span class="section-title-line"></span> </div>
      <div class="col-md-6 mb-50">
        <div class="section-info">
          <div class="sub-title-paragraph">
            <h4>You can conquer the world.</h4>
            <h5>If you have right set of mind and thus you can rule the world. Cheers!</h5>
            <p>Nam non erat feugiat, pellentesque mi ut, finibus tellus. Ut eget ex sodales, feugiat elit non, semper ex. Sed laoreet lectus nisl, sit amet porttitor lacus porta nec. Quisque sit amet metus sagittis, tincidunt tellus in, efficitur lorem. Sed scelerisque tellus nisl, eget tincidunt elit aliquet vitae. Integer id felis ut ipsum tristique iaculis. Mauris sed nibh enim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc sagittis rhoncus sollicitudin. Maecenas eget dui a neque rutrum tincidunt sed non ipsum.</p>
          </div>
          <a href="#" class="anchor-btn">Learn more <i class="fas fa-arrow-right pd-lt-10"></i></a> </div>
      </div>
      <div class="col-md-6 mb-50">
        <div class="section-img"> <img src="resources/images/about.jpg" alt="" class="img-responsive"/> </div>
      </div>
    </div>
  </div>
</div>

<!-- End About --> 

<!-- Services -->
<div class="services section-padding bg-grey" data-scroll-index='2'>
  <div class="container">
    <div class="row">
      <div class="col-md-12 section-title text-center">
        <h3>We Are Best At Our Service</h3>
        <p>Vestibulum elementum dui tempus dolor gravida, vel mattis erat fermentum.</p>
        <span class="section-title-line"></span> </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-30">
        <div class="service-box bg-white text-center">
          <div class="icon"> <i class="fas fa-chart-line"></i> </div>
          <div class="icon-text">
            <h4 class="title-box">Chart Line</h4>
            <p>Sed malesuada, est eget condimentum iaculis, nisi ex facilisis metus.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-30">
        <div class="service-box bg-white text-center">
          <div class="icon"> <i class="fas fa-bullhorn "></i> </div>
          <div class="icon-text">
            <h4 class="title-box">Quick Anouncement</h4>
            <p>Sed malesuada, est eget condimentum iaculis, nisi ex facilisis metus.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-30">
        <div class="service-box bg-white text-center">
          <div class="icon"> <i class="fas fa-map-marked"></i> </div>
          <div class="icon-text">
            <h4 class="title-box">Mark Location</h4>
            <p>Sed malesuada, est eget condimentum iaculis, nisi ex facilisis metus.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-30">
        <div class="service-box bg-white text-center">
          <div class="icon"> <i class="fas fa-bug"></i> </div>
          <div class="icon-text">
            <h4 class="title-box">Bug Solution</h4>
            <p>Sed malesuada, est eget condimentum iaculis, nisi ex facilisis metus.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-30">
        <div class="service-box bg-white text-center">
          <div class="icon"> <i class="fas fa-comments"></i> </div>
          <div class="icon-text">
            <h4 class="title-box">Fast Communication</h4>
            <p>Sed malesuada, est eget condimentum iaculis, nisi ex facilisis metus.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-30">
        <div class="service-box bg-white text-center">
          <div class="icon"> <i class="fas fa-paint-brush"></i> </div>
          <div class="icon-text">
            <h4 class="title-box">Clean Design</h4>
            <p>Sed malesuada, est eget condimentum iaculis, nisi ex facilisis metus.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- End Services --> 

<!-- Gallery -->
<div class="portfolio section-padding" data-scroll-index='3'>
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 section-title text-center">
        <h3>Check our recent works</h3>
        <p>Vestibulum elementum dui tempus dolor gravida, vel mattis erat fermentum.</p>
        <span class="section-title-line"></span> </div>
      <div class="filtering text-center mb-30">
        <button type="button" data-filter='*' class="active">All</button>
        <button type="button" data-filter='.summer'>Summer</button>
        <button type="button" data-filter='.winter'>Winter</button>
        <button type="button" data-filter='.rainy'>Rainy</button>
        <button type="button" data-filter='.spring'>Spring</button>
      </div>
      <div class="gallery no-padding col-lg-12 col-sm-12">
        <div class="col-lg-4 col-sm-6 spring no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall1.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall1.jpg" alt="image">
              <div class="overlay-img">
                <h4>Spring</h4>
                <h6>Autumn Leaves</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 spring no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall2.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall2.jpg" alt="image">
              <div class="overlay-img">
                <h4>Spring</h4>
                <h6>Flower Pot</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 spring no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall3.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall3.jpg" alt="image">
              <div class="overlay-img">
                <h4>Spring</h4>
                <h6>Bird with Flower</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 summer no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall4.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall4.jpg" alt="image">
              <div class="overlay-img">
                <h4>Summer</h4>
                <h6>Vacation Trip Van</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 winter no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall5.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall5.jpg" alt="image">
              <div class="overlay-img">
                <h4>Winter</h4>
                <h6>Girl in the snow</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 rainy no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall6.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall6.jpg" alt="image">
              <div class="overlay-img">
                <h4>Rainy</h4>
                <h6>Man with an Umberalla</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 summer no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall7.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall7.jpg" alt="image">
              <div class="overlay-img">
                <h4>Summer</h4>
                <h6>New Beginning</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 rainy no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall8.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall8.jpg" alt="image">
              <div class="overlay-img">
                <h4>Rainy</h4>
                <h6>Girl in the Rain</h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 summer no-padding">
          <div class="item-img"> <a class="single-image" href="resources/images/gall9.jpg"></a>
            <div class="part-img"> <img src="resources/images/gall9.jpg" alt="image">
              <div class="overlay-img">
                <h4>Summer</h4>
                <h6>Fun at the Seashores</h6>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Gallery -->
<!-- Testimonials -->
<div class="testimonials">
  <div class="testimonials-overlay section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-10 offset-md-1">
          <div class="owl-carousel owl-theme">
            <div class="testimonial-item text-center">
              <div class="icon"> <i class="fas fa-comments"></i> </div>
              <p class="m-auto">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
              <div class="testimonial-author text-center">
                <h5>Rup Jakhar</h5>
                <h6>Web Desinger</h6>
              </div>
            </div>
            <div class="testimonial-item text-center">
              <div class="icon"> <i class="fas fa-comments"></i> </div>
              <p class="m-auto">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="testimonial-author text-center">
                <h5>Yogesh Singh</h5>
                <h6>Web Desinger</h6>
              </div>
            </div>
            <div class="testimonial-item text-center">
              <div class="icon"> <i class="fas fa-comments"></i> </div>
              <p class="m-auto">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
              <div class="testimonial-author text-center">
                <h5>Vivek Singh</h5>
                <h6>Web Desinger</h6>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Testimonials --> 

<!-- Contact -->
<div class="contact section-padding" data-scroll-index='4'>
  <div class="container">
    <div class="row">
      <div class="col-md-12 section-title text-center">
        <h3>Contact Us For More</h3>
        <p>Vestibulum elementum dui tempus dolor gravida, vel mattis erat fermentum.</p>
        <span class="section-title-line"></span> </div>
      <div class="col-lg-5 col-md-4">
        <div class="part-info">
          <div class="info-box">
            <div class="icon"> <i class="fas fa-phone"></i> </div>
            <div class="content">
              <h4>Phone :</h4>
              <p>0123456789</p>
            </div>
          </div>
          <div class="info-box">
            <div class="icon"> <i class="fas fa-map-marker-alt"></i> </div>
            <div class="content">
              <h4>Address :</h4>
              <p>New Delhi, India</p>
            </div>
          </div>
          <div class="info-box">
            <div class="icon"> <i class="fas fa-envelope"></i> </div>
            <div class="content">
              <h4>Mail :</h4>
              <p><a href="#">info@123.com</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-7 col-md-8">
        <div class="contact-form">
          <form class='form' id='contact-form' method='post' data-toggle='validator'>
            <input type='hidden' name='form-name' value='contact-form' />
            <div class="messages"></div>
            <div class="controls">
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <input id="form_name" type="text" name="name" placeholder="Name *" required data-error="name is required.">
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <input id="form_email" type="email" name="email" placeholder="Email *" required data-error="Valid email is required.">
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group">
                    <input id="form_subject" type="text" name="subject" placeholder="Subject">
                  </div>
                </div>
                <div class="col-lg-12 form-group">
                  <textarea id="form_message" name="message" class="form-control" placeholder=" Type Your Message " rows="4" required data-error="Please,leave us a message."></textarea>
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-lg-12 text-center">
                  <button class="bttn">Send Message</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Contact -->
<footer class="footer-copy">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <p>2018 &copy; Elegant. Website Designed by <a href="http://w3Template.com" target="_blank" rel="dofollow">W3 Template</a></p>
      </div>
    </div>
  </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script> 
<!-- owl carousel js --> 
<script src="resources/js/home/owl.carousel.min.js"></script> 
<!-- magnific-popup --> 
<script src="resources/js/home/jquery.fancybox.min.js"></script> 

<!-- scrollIt js --> 
<script src="resources/js/home/scrollIt.min.js"></script> 

<!-- isotope.pkgd.min js --> 
<script src="resources/js/home/isotope.pkgd.min.js"></script> 
<script>
  $(window).on("scroll",function () {

      var bodyScroll = $(window).scrollTop(),
          navbar = $(".navbar");

      if(bodyScroll > 130){

          navbar.addClass("nav-scroll");
          $('.navbar-logo img').attr('src','resources/images/logo-black.png');


      }else{

          navbar.removeClass("nav-scroll");
          $('.navbar-logo img').attr('src','resources/images/logo-white.png');

      }

  });

  $(window).on("load",function (){



var bodyScroll = $(window).scrollTop(),
navbar = $(".navbar");

if(bodyScroll > 130){

navbar.addClass("nav-scroll");
$('.navbar-logo img').attr('src','resources/images/logo-black.png');


}else{

navbar.removeClass("nav-scroll");
$('.navbar-logo img').attr('src','resources/images/logo-white.png');

}

/* smooth scroll
  -------------------------------------------------------*/
  $.scrollIt({

easing: 'swing',      // the easing function for animation
scrollTime: 900,       // how long (in ms) the animation takes
activeClass: 'active', // class given to the active nav element
onPageChange: null,    // function(pageIndex) that is called when page is changed
topOffset: -63
});

/* isotope
-------------------------------------------------------*/
var $gallery = $('.gallery').isotope({});
$('.gallery').isotope({

    // options
    itemSelector: '.item-img',
    transitionDuration: '0.5s',

});


$(".gallery .single-image").fancybox({
  'transitionIn'  : 'elastic',
  'transitionOut' : 'elastic',
  'speedIn'   : 600,
  'speedOut'    : 200,
  'overlayShow' : false
});


/* filter items on button click
-------------------------------------------------------*/
$('.filtering').on( 'click', 'button', function() {

    var filterValue = $(this).attr('data-filter');

    $gallery.isotope({ filter: filterValue });

    });

$('.filtering').on( 'click', 'button', function() {

    $(this).addClass('active').siblings().removeClass('active');

});

})

$(function () {
$( ".cover-bg" ).each(function() {
    var attr = $(this).attr('data-image-src');

    if (typeof attr !== typeof undefined && attr !== false) {
      $(this).css('background-image', 'url('+attr+')');
    }

  });

  /* sections background color from data background
  -------------------------------------------------------*/
  $("[data-background-color]").each(function() {
      $(this).css("background-color", $(this).attr("data-background-color")  );
  });


/* Owl Caroursel testimonial
  -------------------------------------------------------*/
  
  $('.testimonials .owl-carousel').owlCarousel({
    loop:true,
    autoplay:true,
    items:1,
    margin:30,
    dots: true,
    nav: false,
    
  });

});

</script>
</body>
</html>



