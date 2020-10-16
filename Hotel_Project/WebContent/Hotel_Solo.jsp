<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chester Tourist</title>
<!--favicon-->
<link rel="shortcut icon" href="Resources/favicon1.jpg"
	type="image/x-icon">

<link rel="stylesheet" href="Views/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/patients.js"></script>

<style>
/*Scroll Button*/
#scolbtn {
	display: inline-block;
	background-color: none;
	width: 50px;
	height: 50px;
	text-align: center;
	border-radius: 4px;
	position: fixed;
	bottom: 30px;
	right: 30px;
	transition: background-color .3s, opacity .5s, visibility .5s;
	opacity: 0;
	visibility: hidden;
	z-index: 1000;
}

#scolbtn::after {
	font-family: FontAwesome;
	font-weight: normal;
	font-style: normal;
	font-size: 2em;
	line-height: 50px;
	color: none;
}

#scolbtn:hover {
	cursor: pointer;
	background-color: none;
}

#scolbtn:active {
	background-color: none;
}

#scolbtn.show {
	opacity: 1;
	visibility: visible;
}
</style>

</head>
<body>


	<!-- ------------------------ Navigation Bar ---------------------------------- -->

	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark special-color-dark">
		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#basicExampleNav" aria-controls="basicExampleNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Collapsible content -->
		<div class="collapse navbar-collapse" id="basicExampleNav">

			<!-- Links -->
			<ul class="navbar-nav mr-auto">
				<li class="nav-item "><a class="nav-link"
					href="LandingPage.jsp"><i class="fas fa-hotel"></i></a></li>
				<li class="nav-item "><a class="nav-link" href="#">Hotels</a></li>
				<li class="nav-item "><a class="nav-link" href="#">Guest
						House</a></li>
				<li class="nav-item "><a class="nav-link" href="#">Resturant</a></li>
				<li class="nav-item "><a class="nav-link" href="#">Events</a></li>
				<li class="nav-item "><a class="nav-link" href="#">Pubs</a></li>
			</ul>
			<!-- Links -->
		</div>
		<!-- Collapsible content -->
	</nav>
	<br>

	<!-- ---------------------------- End of Navigation Bar ----------------------------- -->

	<a id="scolbtn"><i class="fas fa-arrow-circle-up"
		style='font-size: 40px; color: #007BFC'></i></a>

	<!-- Welcome Banner -->
	<div class="jumbotron card card-image m-5"
		style="background-image: url(Resources/r2.jpg); background-position: center; background-size: 900px 550px;">
		<div class="container">
			<div class="text-white text-center py-5 px-4">
				<div>
					<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
						<strong>Accommodation</strong>
					</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- End of welcome Banner -->

	<!-- Breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb ml-5 mt-5" style="width: 350px;">
			<li class="breadcrumb-item"><a href="LandingPage.jsp">Home</a></li>
			<li class="breadcrumb-item"><a href="hotels_home.jsp">Hotels</a></li>
			<li class="breadcrumb-item"><a href="hotel_info.jsp">Hotel</a></li>
			<li class="breadcrumb-item active" aria-current="page">Accommodation</li>
		</ol>
	</nav>
	<br>
	<!-- End of bread crums -->


	<!-- Main Body -->
	<div class="container-fluid mt-3">
		<div class="row m-3">
			<div class="col-sm-4">
				<div class="jumbotron m-3">
					<h1>SUPERIOR ROOM</h1>
					<p>In the heart of historic Sigiriya, accommodation of the most
						indulgent kind awaits you at our Superior Rooms. Set in the
						Dambulla Wing you can relax in the comforts.</p>
				</div>
			</div>
			<div class="col-sm-8"
				style="border-radius: 20px; background-color: #f2f2f2;">
				<div class="container">
					<div class="row">
						<div class="col p-3">
							<p class="h3 mb-3 mt-3"
								style="font-weight: bold; color: #34495E;">ROOM DETAILS</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>NO OF ROOMS</p></li>
								<li class="list-inline-item"><i
									class="fas fa-expand-arrows-alt"></i>
									<p>ROOM SIZE</p></li>
								<li class="list-inline-item"><i class="fas fa-bed"></i>
									<p>BEDS</p></li>
							</ul>
							<ul class="list-inline">
								<li class="list-inline-item">10 ROOMS</li>
								<li class="list-inline-item">192.32 SQ.FT</li>
								<li class="list-inline-item">TWIN BEDS</li>
							</ul>
							<p class="h3 mb-3 mt-3"
								style="font-weight: bold; color: #34495E;">ROOM FEATURES</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-tv"></i>
									<p>FLAT-SCREEN TV</p></li>
								<li class="list-inline-item"><i class="fas fa-chair"></i></i>
									<p>SPACE</p></li>
								<li class="list-inline-item"><i class="fas fa-wifi"></i>
									<p>WIFI</p></li>
							</ul>
						</div>
						<!-- Column -->
						<div class="col">
							<div class="row">
								<div class="card mt-5" style="width: 18rem;">
									<img src="Resources/r1.jpg" class="card-img-top"
										alt="hotel room">
								</div>
							</div>
							<div class="row">
								<div class="col mt-5">
									<span class="fas fa-hand-holding-usd"
										style="color: #CCA100; font-size: 18px;"> &nbsp; Rooms
										from $100</span>
								</div>
							</div>
						</div>
						<!-- Col closed -->
					</div>
					<!-- Row Closed -->
					<a href="userLogin.jsp" class="btn btn-success"
						style="border: none; float: right; font-weight: bold;">BOOK</a>
				</div>
			</div>
		</div>
		<!-- Second Row -->
		<div class="row m-3">
			<div class="col-sm-4">
				<div class="jumbotron m-3">
					<h1>DELUXE ROOM</h1>
					<p>With expansive views over the Kandalama Lake and the hills
						of Dambulla, hotel amenities in our Deluxe Rooms are of the most
						delightful kind. You will find beauty within the room as well as
						without.</p>
				</div>
			</div>
			<div class="col-sm-8"
				style="border-radius: 20px; background-color: #f2f2f2;">
				<div class="container">
					<div class="row">
						<div class="col p-3">
							<p class="h3 mb-3 mt-3"
								style="font-weight: bold; color: #34495E;">ROOM DETAILS</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>NO OF ROOMS</p></li>
								<li class="list-inline-item"><i
									class="fas fa-expand-arrows-alt"></i>
									<p>ROOM SIZE</p></li>
								<li class="list-inline-item"><i class="fas fa-bed"></i>
									<p>BEDS</p></li>
							</ul>
							<ul class="list-inline">
								<li class="list-inline-item">10 ROOMS</li>
								<li class="list-inline-item">192.32 SQ.FT</li>
								<li class="list-inline-item">TWIN BEDS</li>
							</ul>
							<p class="h3 mb-3 mt-3"
								style="font-weight: bold; color: #34495E;">ROOM FEATURES</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-tv"></i>
									<p>FLAT-SCREEN TV</p></li>
								<li class="list-inline-item"><i class="fas fa-chair"></i></i>
									<p>SPACE</p></li>
								<li class="list-inline-item"><i class="fas fa-wifi"></i>
									<p>WIFI</p></li>
							</ul>
						</div>
						<!-- Column -->
						<div class="col">
							<div class="row">
								<div class="card mt-5" style="width: 18rem;">
									<img src="Resources/r2.jpg" class="card-img-top"
										alt="hotel room">
								</div>
							</div>
							<div class="row">
								<div class="col mt-5">
									<span class="fas fa-hand-holding-usd"
										style="color: #CCA100; font-size: 18px;""> &nbsp; Rooms
										from $200</span>
								</div>
							</div>
						</div>
						<!-- Col closed -->
					</div>
					<!-- Row Closed -->
					<a href="userLogin.jsp" class="btn btn-success"
						style="border: none; float: right; font-weight: bold;">BOOK</a>
				</div>
			</div>
		</div>
		<!-- End Second Row -->
		<!-- Third Row -->
		<div class="row m-3">
			<div class="col-sm-4">
				<div class="jumbotron m-3">
					<h1>LUXURY ROOM</h1>
					<p>When you choose a Luxury Room at one of the most beautiful
						hotels, you will find all as it should be. Little indulgences are
						everywhere, and so are pleasant surprises</p>
				</div>
			</div>
			<div class="col-sm-8"
				style="border-radius: 20px; background-color: #f2f2f2;">
				<div class="container">
					<div class="row">
						<div class="col p-3">
							<p class="h3 mb-3 mt-3"
								style="font-weight: bold; color: #34495E;">ROOM DETAILS</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>NO OF ROOMS</p></li>
								<li class="list-inline-item"><i
									class="fas fa-expand-arrows-alt"></i>
									<p>ROOM SIZE</p></li>
								<li class="list-inline-item"><i class="fas fa-bed"></i>
									<p>BEDS</p></li>
							</ul>
							<ul class="list-inline">
								<li class="list-inline-item">10 ROOMS</li>
								<li class="list-inline-item">192.32 SQ.FT</li>
								<li class="list-inline-item">TWIN BEDS</li>
							</ul>
							<p class="h3 mb-3 mt-3"
								style="font-weight: bold; color: #34495E;">ROOM FEATURES</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-tv"></i>
									<p>FLAT-SCREEN TV</p></li>
								<li class="list-inline-item"><i class="fas fa-hot-tub"></i>
									<p>Hot Tub</p></li>
								<li class="list-inline-item"><i class="fas fa-wifi"></i>
									<p>WIFI</p></li>
							</ul>
						</div>
						<!-- Column -->
						<div class="col">
							<div class="row">
								<div class="card mt-5" style="width: 18rem;">
									<img src="Resources/r3.jpg" class="card-img-top"
										alt="hotel room">
								</div>
							</div>
							<div class="row">
								<div class="col mt-5">
									<span class="fas fa-hand-holding-usd"
										style="color: #CCA100; font-size: 18px;""> &nbsp; Rooms
										from $300</span>
								</div>
							</div>
						</div>
						<!-- Col closed -->
					</div>
					<!-- Row Closed -->
					<a href="userLogin.jsp" class="btn btn-success"
						style="border: none; float: right; font-weight: bold;">BOOK</a>
				</div>
			</div>
		</div>
		<!-- End Second Row -->
	</div>
	<!-- End of main body -->

	<!-- Scoll Up Btn -->
	<script type="text/javascript">
		var btn = $('#scolbtn');

		$(window).scroll(function() {
			if ($(window).scrollTop() > 300) {
				btn.addClass('show');
			} else {
				btn.removeClass('show');
			}
		});

		btn.on('click', function(e) {
			e.preventDefault();
			$('html, body').animate({
				scrollTop : 0
			}, '300');
		});
	</script>
	<!-- End scroll Btn -->

	<!-- --------------------------- Footer -------------------------- -->
	<footer class="page-footer font-small special-color-dark pt-4">

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">Chester Tourist</div>
		<!-- Copyright -->

	</footer>
	<!-- ------------------------- End of Footer --------------------- -->
</body>
</html>