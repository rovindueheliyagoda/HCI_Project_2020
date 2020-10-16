
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang= "en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Chester Tourist Hotel</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="Views/css/bootstrap.min.css">
	<script src="Components/jquery-3.2.1.min.js"></script>
	<script src="Components/EventHome.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<link rel="stylesheet" href="vendors/popup/magnific-popup.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

<style>
#custom-search-input {
   margin:0;
    margin-top: 10px;
    padding: 0;
}
 
#custom-search-input .search-query {
    width:1050px;
    padding-right: 3px;
    padding-left: 15px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
    margin-bottom: 0;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 0;
}
 
#custom-search-input button {
    border: 0;
    background: none;
    /** belows styles are working good */
    padding: 2px 5px;
    margin-top: 2px;
    position: absolute;
    right:0;
    /* IE7-8 doesn't have border-radius, so don't indent the padding */
    margin-bottom: 0;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    color:#D9230F;
    cursor: unset;
    z-index: 2;
}
 
.search-query:focus{
    z-index: 0;   
}


</style>

</head>

<body>

	<!--================Header Menu Area =================-->
	<header class="header_area">
	
		
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container" style="height: 100px ">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.html"><img src="img/logo.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="index.html"></a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Contacts us</a>
															</li>
							<li class="nav-item"><a class="nav-link" href="contact.html">Find Reservation</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->
					<div >
                        <a href="#"><i class="fa fa-home"></i>Home > </a>
                        <span>Meeting & Events > </span>
                         <span>Find a Venue</span>
                    </div>
					

	<!--================Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="overlay bg-parallax" data-stellar-ratio="2" data-stellar-vertical-offset="0" data-background=""></div>
			<!-- <div class="overlay overlay-bg"></div> -->



			<div class="container">
				<div class="banner_content text-center">
					
					<h1 style="color:white">Meeting<br><br><br>   
					 & <br><br><br>
					Event</h1>
					
						
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Booking Area =================-->
	<section class="container">
		<div class="booking_area">
			<form action="">
				<div class="row">
					<div class="col-lg-3 col-sm-6 col-6">
						<div class="booking_item">
							<p>Event Type</p>
							<span class="ballroom">Meeting</span>
				
							<label for="EventType">
								<i class="fa fa-angle-down"></i>
							</label>
							<input class="form-control" name='EventType' id="EventType" aria-describedby="emailHelp">
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 col-6">
						<div class="booking_item">
							<p>Capacity</p>
							<span class="capacity">100 above</span>
							
							<label for="Capacity">
								<i class="fa fa-angle-down"></i>
							</label>
							<input class="form-control" name='Capacity' id="Capacity" aria-describedby="emailHelp">
						</div>
					</div>


					<div class="col-lg-3 col-sm-6 col-6">
						<div class="booking_item">
							<p>Total guests</p>
							<span class="day">05</span>
							<span class="month">person</span>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 col-6 coupon-code">
						<div class="booking_item">
							<p class="text-capitalize">
								<a href="#">Got a Coupon Code?</a>
							</p>
							<button type="submit" class="main_btn text-uppercase">Find Space</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!--================End Booking Area =================-->
<br>
	<div class="container">

          <div class="row">
	   
    	    <div id="custom-search-input">
                <div class="input-group">
                    <input type="text" class="search-query form-control" placeholder="Search" />
                    <span class="input-group-btn">
                        <button type="button" disabled>
                            <span class="fa fa-search"></span>
                        </button>
                    </span>
                </div>
            </div>
        
	</div>

	<!--================About Area =================-->
	<section class="about_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="main_title">
						<div class="top-part">
							<p>About Us Our History Meeting & Events</p>
						</div>
						<h2>
							About Us Our History <br>
							Meeting & Events
						</h2>
						<div class="bottom_part">
							<p>
								inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards
								especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond
								reproach.
								inappropriate behavior is often laughed.
							</p>
						</div>
						
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				
			</div>
		</div>
	</section>
	<!--================End About Area =================-->

	<!-- Start Our Room Area -->
	<section class="our_room_area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="main_title">
						<div class="top-part">
							<p>Our Event & Meetings</p>
						</div>
						<h2>Our Event & Meetings</h2>
						<div class="bottom_part">
							<p>
								Chester Tourist offers multiple private halls and spacious boardrooms, ideal for annual meetings or training programmes, that can be transformed for a sit-down dinner. 
								Reserve the multi-purpose Samudra Ballroom for a wedding or home-coming with a mesmerizing view of the ocean.
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="room_left">
						<img class="img-fluid" src="img/room/g1.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="owl-carousel owl-room">
						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>250<span></span>
							</h1>
							<h1 class="type">
								Grand Ballroom
							</h1>
							<p>
								The Grand Ballroom, with over 500 guests seated and over 1000 guests for cocktails, is Chester's wedding venue and is being redesigned by all who see it.
								Set the ballroom setting for your next luxury party
								Experience the tradition.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 50</li>
										<li>U shaped: 25</li>
										<li>Classroom: 30</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 40</li>
										<li>Boardroom: 20</li>
										<li>Reception: 40</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>

						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>250<span></span>
							</h1>
							<h1 class="type">
								Grand Ballroom
							</h1>
							<p>
								The Grand Ballroom, with over 500 guests seated and over 1000 guests for cocktails, is Chester's wedding venue and is being redesigned by all who see it.
								Set the ballroom setting for your next luxury party
								Experience the tradition.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 50</li>
										<li>U shaped: 25</li>
										<li>Classroom: 30</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 40</li>
										<li>Boardroom: 20</li>
										<li>Reception: 40</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>



<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>250<span>/night</span>
							</h1>
							<h1 class="type">
								Grand Ballroom
							</h1>
							<p>
								The Grand Ballroom, with over 500 guests seated and over 1000 guests for cocktails, is Chester's wedding venue and is being redesigned by all who see it.
								Set the ballroom setting for your next luxury party
								Experience the tradition.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 50</li>
										<li>U shaped: 25</li>
										<li>Classroom: 30</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 40</li>
										<li>Boardroom: 20</li>
										<li>Reception: 40</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>



<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="room_left">
						<img class="img-fluid" src="img/room/new.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="owl-carousel owl-room">
						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>550<span></span>
							</h1>
							<h1 class="type">
								On Golden Room
							</h1>
							<p>
								The extensive glass windows of this venue offer spectacular views of the flourishing lawns outside, making it perfect for product launches and annual meetings.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 150</li>
										<li>U shaped: 100</li>
										<li>Classroom: 80</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 140</li>
										<li>Boardroom: 120</li>
										<li>Reception: 140</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>

						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>550<span></span>
							</h1>
							<h1 class="type">
								On Golden Room
							</h1>
							<p>
								The extensive glass windows of this venue offer spectacular views of the flourishing lawns outside, making it perfect for product launches and annual meetings.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 150</li>
										<li>U shaped: 100</li>
										<li>Classroom: 80</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 140</li>
										<li>Boardroom: 120</li>
										<li>Reception: 140</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>
					</div>
				</div>
			</div>
		

<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="room_left">
						<img class="img-fluid" src="img/room/ab.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="owl-carousel owl-room">
						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>150<span></span>
							</h1>
							<h1 class="type">
								Grand Crystal Ballroom
							</h1>
							<p>
								Spacious and modern, the wedding halls are the ideal backdrop to make your special day magical. 
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 200</li>
										<li>U shaped: 60</li>
										<li>Classroom: 80</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 200</li>
										<li>Boardroom: 60</li>
										<li>Reception: 180</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>

						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>150<span></span>
							</h1>
							<h1 class="type">
								Grand Crystal Ballroom
							</h1>
							<p>
								Spacious and modern, the wedding halls are the ideal backdrop to make your special day magical. 
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 200</li>
										<li>U shaped: 60</li>
										<li>Classroom: 80</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 200</li>
										<li>Boardroom: 60</li>
										<li>Reception: 180</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>
					</div>
				</div>
			</div>
		
<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="room_left">
						<img class="img-fluid" src="img/room/s1.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="owl-carousel owl-room">
						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>150<span></span>
							</h1>
							<h1 class="type">
								On Meeting Room
							</h1>
							<p>
								This extensive private space is the ideal venue for board meetings and business lunches.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 50</li>
										<li>U shaped: 40</li>
										<li>Classroom: 25</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 20</li>
										<li>Boardroom: 30</li>
										<li>Reception: 40</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>

						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>150<span></span>
							</h1>
							<h1 class="type">
								On Meeting Room
							</h1>
							<p>
								This extensive private space is the ideal venue for board meetings and business lunches.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 50</li>
										<li>U shaped: 40</li>
										<li>Classroom: 25</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 20</li>
										<li>Boardroom: 30</li>
										<li>Reception: 40</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>
					</div>
				</div>
			</div>

	<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="room_left">
						<img class="img-fluid" src="img/room/gr.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="owl-carousel owl-room">
						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>150<span></span>
							</h1>
							<h1 class="type">
								Luxury Grand Banquet Hall
							</h1>
							<p>
								The largest banquet hall in chester, the Grand Banquet offers your guests an uninterrupted view of the interior.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 270</li>
										<li>U shaped: 60</li>
										<li>Classroom: 120</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 300</li>
										<li>Boardroom: 100</li>
										<li>Reception: 250</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>

						<div class="room_right">
							<h1 class="price">
								<i class="fa fa-dollar"></i>150<span></span>
							</h1>
							<h1 class="type">
								Luxury Grand Banquet Hall
							</h1>
							<p>
								The largest banquet hall in chester, the Grand Banquet offers your guests an uninterrupted view of the interior.
							</p>
							<div class="row">
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Theatre: 270</li>
										<li>U shaped: 60</li>
										<li>Classroom: 120</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-5">
									<ul>
										<li>Circular: 300</li>
										<li>Boardroom: 100</li>
										<li>Reception: 250</li>
									</ul>
								</div>
							</div>
							<a href="RequestEvent.jsp" class="main_btn">Inquire Now</a>
						</div>
					</div>
				</div>
			</div>	
		</div>	




	</section>
	<!-- End Our Room Area -->


	<!--================ start footer Area  =================-->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Chester Hotel</h6>
						
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						
						<div class="row">
							
							
						</div>
					</div>
				</div>

				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="d-flex flex-row">
									
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				
			</div>
			<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
				<div>
					<p class="footer-text m-0">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
				</div>
				<div class="footer-social d-flex align-items-center">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/stellar.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="vendors/isotope/isotope.pkgd.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/owl-carousel-thumb.min.js"></script>
	<script src="vendors/popup/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendors/counter-up/jquery.counterup.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/theme.js"></script>

</body>
</html>