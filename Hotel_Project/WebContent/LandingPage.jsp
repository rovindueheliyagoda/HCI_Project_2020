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


<style>
body {
	background-color: #f1f1f1;
	overflow-x: hidden;
	font-family: Arial;
}

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
					href="hotels_home.jsp"><i class="fas fa-hotel"></i></a></li>
				<li class="nav-item "><a class="nav-link" href="hotels_home.jsp">Hotels</a></li>
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
	<br>
	<br>
	<br>

	<!-- ---------------------------- End of Navigation Bar ----------------------------- -->
  <div class="container mb-4">
	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner" style="height: 500px;">
			<div class="carousel-item active">
				<img src="Resources/r1.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="Resources/r1.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="Resources/r1.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
	</div>
	</div>

	<div class="row justify-content-center mb-3">
		<h3>
			<b>Our Services</b>
		</h3>
	</div>

	<!-- Body -->
	<div class="container mb-5">
		<div class="row mb-5">
			<div class="col-sm">
				<div class="card" style="width: auto;">
					<img src="Resources/Hotel.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Hotels</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="hotels_home.jsp" class="btn btn-primary">View</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card" style="width: auto;">
					<img src="Resources/Hotel.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Guest Houses</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">View</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card" style="width: auto;">
					<img src="Resources/Hotel.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Resturants</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">View</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm">
				<div class="card" style="width: auto;">
					<img src="Resources/Hotel.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Events</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">View</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card" style="width: auto;">
					<img src="Resources/Hotel.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Pubs</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">View</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card" style="width: auto;">
					<img src="Resources/Hotel.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Other</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">View</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Body -->

	<a id="scolbtn"><i class="fas fa-arrow-circle-up"
		style='font-size: 40px; color: #007BFC'></i></a>


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

	<!-- --------------------------- Footer -------------------------- -->
	<footer class="page-footer font-small special-color-dark pt-5">

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">Chester Tourist</div>
		<!-- Copyright -->

	</footer>
	<!-- ------------------------- End of Footer --------------------- -->

</body>
</html>