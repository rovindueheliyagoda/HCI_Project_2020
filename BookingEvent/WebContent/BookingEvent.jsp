<%@page import="com.BookingEvent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Event</title>
<link rel="stylesheet" href="Views/css/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/BookingEvent.js"></script>
<!-- Bootstrap CSS -->
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
                         <span>Booking Event</span>
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
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Booking Event</h1>
				<form id="formBookingEvent" name="formBookingEvent">
					Event code*: <input id="EventCode" name="EventCode" type="text"
						class="form-control form-control-sm"> <br> 
					Event  Name*: <input id="EventName" name="EventName" type="text"
						class="form-control form-control-sm"> <br>
					Event Type*: <input id="EventType" name="EventType" type="text"
						class="form-control form-control-sm"> <br>
					Event Date From*:<input type="date" id="EventDateFrom" name="EventDateFrom" placeholder=dd/mm/yyyy 
					    class="form-control form-control-sm"> <br>
			        Event Date To*:<input type="date" id="EventDateTo" name="EventDateTo" placeholder=dd/mm/yyyy
			            class="form-control form-control-sm"><br>		
					Company or Organization*: <input id="CompanyOrOrganization" name="CompanyOrOrganization" type="text"
						class="form-control form-control-sm"> <br>
					Describe Type of Event*:<input type="text" id="DescribeTypeEvent" name="DescribeTypeEvent" 
			            class="form-control form-control-sm"><br>
			        Additional Request*:<input type="text" id="AdditionalRequest" name="AdditionalRequest" placeholder="Write Something"
			            class="form-control form-control-sm"><br>    		 
						<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> 
						<input type="hidden" id="hidEventIDSave" name="hidEventIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				
				<br>
				<div id="divBookingEventGrid">
					<%
					BookingEvent BookingEventObj = new BookingEvent();
					out.print(BookingEventObj.readBookingEvent());
					%>
				</div>
			</div>
		</div>
	</div>
	
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