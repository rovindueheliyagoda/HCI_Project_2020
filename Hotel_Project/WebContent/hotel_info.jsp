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
					href="hotels_home.jsp"><i class="fas fa-hotel"></i></a></li>
			</ul>
			<!-- Links -->
		</div>
		<!-- Collapsible content -->
	</nav>
	<br>

	<!-- ---------------------------- End of Navigation Bar ----------------------------- -->

	<!-- Intro -->

	<!-- Welcome Banner -->
	<div class="jumbotron card card-image m-5"
		style="background-image: url(Resources/h4.jpg); background-position: center; background-size: 1165px 800px;">
		<div class="container">
			<div class="text-white text-center py-5 px-4">
				<div>
					<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
						<strong>Hotel</strong>
					</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- End of welcome Banner -->



	<!--<div class="container" style="border: 1px;">
		<div class="row mt-5">
			<div class="col ">
				<div class="jumbotron mt-5"
					style="background-color: #a9cad6; height: 300px;">
					<div class="text-black text-center py-5 px-4">
						<div>
							<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
								<strong>Welcome to Hotel!</strong>
							</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="col pl-5 pt-4 ml-5 mt-5" style="background-color: none;">
				<div class="container" style="background-color: none;">
					<div class="text-black text-center py-5 px-4">
						<div>
							<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
								<strong>Welcome to Hotel!</strong>
							</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="col ">
				<div class="jumbotron card card-image mt-5"
					style="background-color: none; height: 300px; background-image: url(Resources/Hotel.jpg); background-position: center; background-size: 580px 380px;">
				</div>
			</div>
		</div>
	</div>
	<hr style="width: 92%;">-->


	<!--<div class="jumbotron card card-image mr-3 ml-3 mt-5"
					style="background-image: url(Resources/.jpg);">
  <div class="container">
					<div class="text-white text-center py-5 px-4">
						<div>
							<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
								<strong>Welcome to Hotel!</strong>
							</h2>
						</div>
					</div>
  </div>
</div>-->
	<!-- End -->

	<!-- Breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb ml-5 mt-3" style="width: 300px;">
			<li class="breadcrumb-item"><a href="Error.jsp">Home</a></li>
			<li class="breadcrumb-item"><a href="hotels_home.jsp">Hotels</a></li>
			<li class="breadcrumb-item active" aria-current="page">Hotel</li>
		</ol>
	</nav>
	<br>
	<!-- End of bread crums -->


	<!-- Main Body -->
	<div class="container-fluid mt-3">


		<div class="row m-2" style="background-color: none;">
			<div class="col-sm-8">
				<div class="jumbotron p-4 m-3" style="background-color: #eaf2f5;">
					<h1>About</h1>
					<p>Ideally situated on the edge of the Roman City of Chester,
						located just off the A55 adjacent to Chester Business Park the
						Holiday Inn Chester South offers comfortable accommodation in an
						excellent location for both business and leisure visitors alike.</p>
					<p class="h4 mb-3 mt-3" style="color: #34495E;">
						Point Of Interest <i class="fas fa-street-view"
							style="color: green;"></i>
					</p>
					<ul class="list-inline" style="font-weight: bold;">
						<li class="list-inline-item"><i class="fas fa-paw"
							style="color: black;"></i>
							<p>Chester Zoo</p></li>
						<li class="list-inline-item"><i class="fas fa-fish"
							style="color: black;"></i>
							<p>Blue Planet Aquarium</p></li>
						<li class="list-inline-item"><i class="fas fa-tree"
							style="color: green;"></i>
							<p>Delamere Forest Park</p></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-4">

				<div class="row">
					<div class="col m-3">

						<img src="Resources/Bank%20Icon.jpg" class="card-img-top"
							alt="hotel room">
					</div>
					<!-- Col closed -->
				</div>
				<!-- Row Closed -->

			</div>
		</div>

		<div class="row m-2" style="background-color: none;">
			<div class="col-sm-4">
				<div class="row">
					<div class="col m-3">

						<img src="Resources/hotel_icon1.png" class="card-img-top"
							alt="hotel room">
					</div>
					<!-- Col closed -->
				</div>
				<!-- Row Closed -->


			</div>
			<div class="col-sm-8">
				<div class="jumbotron p-4 m-3" style="background-color: #f4f5ef;">
					<h1>Facilities</h1>
					<p>With expansive views over the Kandalama Lake and the hills
						of Dambulla, hotel amenities in our Deluxe Rooms are of the most
						delightful kind. You will find beauty within the room as well as
						without.</p>
					<div class="row">
						<div class="col">
							<p class="h4 mb-3 mt-3" style="color: #34495E;">Accomodation</p>
							<ul class="list-inline"
								style="font-weight: bold; margin-bottom: -5px;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>Rooms 20</p></li>
								<li class="list-inline-item"><i class="fas fa-crown"
									style="color: black;"></i>
									<p>Room Type</p></li>
							</ul>
							<a href="Hotel_Solo.jsp" class="btn btn-success btn-sm"
								style="border: none; font-weight: bold;">Accommodation&nbsp;&nbsp;&nbsp; <i class="fas fa-long-arrow-alt-right"></i></a>
						</div>
						<div class="col">
							<p class="h4 mb-3 mt-3" style="color: #34495E;">Other
								Facilities</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-table-tennis"></i>
									<p>Tennis</p></li>
								<li class="list-inline-item"><i class="fas fa-swimmer"></i>
									<p>Pool</p></li>
								<li class="list-inline-item"><i class="fas fa-parking"
									style="color: blue;"></i>
									<p>Parking</p></li>
								<li class="list-inline-item"><i class="fas fa-wifi"></i>
									<p>Wifi</p></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="row m-2" style="background-color: none">
			<div class="col-sm-8">
				<div class="jumbotron p-4 m-3" style="background-color: #dfefea;">
					<h1>Contact Us</h1>
					<div class="row">
						<div class="col">
							<p class="h4 mb-3 mt-3" style="color: #34495E;">Address</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>NO OF ROOMS</p></li>
								<li class="list-inline-item"><i
									class="fas fa-expand-arrows-alt"></i>
									<p>ROOM SIZE</p></li>
								<li class="list-inline-item"><i class="fas fa-bed"></i>
									<p>BEDS</p></li>
							</ul>
						</div>
						<div class="col">
							<p class="h4 mb-3 mt-3" style="color: #34495E;">Phone</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>NO OF ROOMS</p></li>
								<li class="list-inline-item"><i
									class="fas fa-expand-arrows-alt"></i>
									<p>ROOM SIZE</p></li>
								<li class="list-inline-item"><i class="fas fa-bed"></i>
									<p>BEDS</p></li>
							</ul>
						</div>
						<div class="col">
							<p class="h4 mb-3 mt-3" style="color: #34495E;">Email</p>
							<ul class="list-inline" style="font-weight: bold;">
								<li class="list-inline-item"><i class="fas fa-door-open"></i>
									<p>NO OF ROOMS</p></li>
								<li class="list-inline-item"><i
									class="fas fa-expand-arrows-alt"></i>
									<p>ROOM SIZE</p></li>
								<li class="list-inline-item"><i class="fas fa-bed"></i>
									<p>BEDS</p></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">

				<div class="row">
					<div class="col m-3">

						<img src="Resources/call1.jpg" class="card-img-top"
							alt="hotel room">
					</div>
					<!-- Col closed -->
				</div>
				<!-- Row Closed -->

			</div>
		</div>

	</div>
	<!-- End of main body -->


	<!-- --------------------------- Footer -------------------------- -->
	<footer class="page-footer font-small special-color-dark pt-4">

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">Chester Tourist</div>
		<!-- Copyright -->

	</footer>
	<!-- ------------------------- End of Footer --------------------- -->
</body>
</html>