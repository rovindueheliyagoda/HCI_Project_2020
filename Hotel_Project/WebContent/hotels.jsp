<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.Hotel"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--favicon-->
<link rel="shortcut icon" href="Resources/favicon1.jpg"
	type="image/x-icon">
<title>Chester Tourist</title>
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
<script src="Components/auth.js"></script>

<style>

/* Welcome Model*/
.fa-times-circle:hover {
	color: red !important;
}

/* Bounce To Right */
.hvr-bounce-to-right {
	display: inline-block;
	vertical-align: middle;
	-webkit-transform: perspective(1px) translateZ(0);
	transform: perspective(1px) translateZ(0);
	box-shadow: 0 0 1px rgba(0, 0, 0, 0);
	position: relative;
	-webkit-transition-property: color;
	transition-property: color;
	-webkit-transition-duration: 0.5s;
	transition-duration: 0.5s;
}

.hvr-bounce-to-right:before {
	content: "";
	position: absolute;
	z-index: -1;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: #4BB543;
	-webkit-transform: scaleX(0);
	transform: scaleX(0);
	-webkit-transform-origin: 0 50%;
	transform-origin: 0 50%;
	-webkit-transition-property: transform;
	transition-property: transform;
	-webkit-transition-duration: 0.5s;
	transition-duration: 0.5s;
	-webkit-transition-timing-function: ease-out;
	transition-timing-function: ease-out;
}

.hvr-bounce-to-right:hover, .hvr-bounce-to-right:focus,
	.hvr-bounce-to-right:active {
	color: white;
}

.hvr-bounce-to-right:hover:before, .hvr-bounce-to-right:focus:before,
	.hvr-bounce-to-right:active:before {
	-webkit-transform: scaleX(1);
	transform: scaleX(1);
	-webkit-transition-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
	transition-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
}

/* Animated Button Library */
[class^="hvr-"] {
	padding: 4px 30px;
	cursor: pointer;
	background: #00e600;
	text-decoration: none;
	border-radius: 3px;
	font-size: 16px;
	font-weight: bold;
	margin: 8px;
	color: black;
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2), 0 1px 5px 0
		rgba(0, 0, 0, 0.19);
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-font-smoothing: antialiased;
}
</style>

<!-- Date Calculator -->
<script type="text/javascript">
	function GetDays() {
		var dropdt = new Date(document.getElementById("drop_date").value);
		var pickdt = new Date(document.getElementById("pick_date").value);
		return parseInt((dropdt - pickdt) / (24 * 3600 * 1000));
	}

	function cal() {
		if (document.getElementById("drop_date")) {
			document.getElementById("numdays2").value = GetDays();
		}
	}
</script>
<!-- End of cal -->

<!-- Total Bill Calculator -->
<script type="text/javascript">
	function GetTotal() {
		var dateC = new Number(document.getElementById("numdays2").value);
		var serChar = new Number(document.getElementById("service").value);
		// return parseInt((dropdt + pickdt) / (24 * 3600 * 1000));
		return (parseInt(dateC) * 100) + parseInt(serChar);
	}

	function calTot() {
		if (document.getElementById("numdays2")) {
			document.getElementById("total").value = GetTotal();
		}
	}
</script>
<!-- End of Bill Calculator -->

<!-- Online Animated Button Library -->
<!-- <link rel="stylesheet"
	href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3/hover.css">-->
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
			<ul class="navbar-nav ml-auto">

				<!-- Nav Profile -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <!--<img
						src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg"
						width="30" height="30" class="rounded-circle">--> <i
						class="fas fa-user-circle" width="30" height="30"></i>
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						style="opacity: 0.9;" aria-labelledby="navbarDropdownMenuLink">
						<a href="myProfile.jsp" class="btn btn-primary btn-sm"
							style="height: 35px; width: 145px; color: white; font-size: 10px; font-weight: bold;">My
							Bookings<i class="fas fa-history ml-3"></i>
						</a>
						<button id="btnLogout" name="btnLogout" type="button"
							value="Logout" class="btn btn-danger btn-sm"
							style="width: 145px; font-weight: bold;">
							Logout <i class="fas fa-sign-out-alt ml-3"></i>
						</button>
					</div></li>
				<!-- End Nav Profile -->

				<!--<li class="nav-item"><button id="btnLogout" name="btnLogout"
						type="button" value="Logout"
						class="btn btn-outline-primary waves-effect btn-sm"
						style="color: white;">Logout</button></li>-->
			</ul>
			<!-- Links -->
		</div>
		<!-- Collapsible content -->
	</nav>
	<br>

	<!-- ---------------------------- End of Navigation Bar ----------------------------- -->




	<div class="container-fluid mt-5">

		<!-- ---------------------------- Start of Jumborone ----------------------------- -->
		<div class="row">
			<div class="col">
				<div class="jumbotron card card-image"
					style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">
					<div class="text-white text-center py-5 px-4">
						<div>
							<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
								<strong>Booking</strong>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- ---------------------------- End of Jumborone ----------------------------- -->

		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb ml-1" style="width: 300px;">
				<li class="breadcrumb-item"><a href="Error.jsp">Home</a></li>
				<li class="breadcrumb-item"><a href="hotels_home.jsp">Hotels</a></li>
				<li class="breadcrumb-item active" aria-current="page">Booking</li>
			</ol>
		</nav>
		<br>
		<!-- End of bread crums -->

		<!-- ------------------- Form to Add Details ------------------ -->

		<div class="container">

			<form action="paymentSuccess.jsp" id="formPatient" name="formPatient"
				class="text-center border">

				<div class="row justify-content-center">
					<div class="col-md-4">
						<p class="h4 mb-4 mt-3">
							<b>Reservation Details</b>
						</p>

						<!-- ------------------------ Check In date ---------------------------- -->
						<div class="d-flex justify-content-center">
							<input id="pick_date" name="pNic" type="date"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Check In:" data-date-format="DD MMMM YYYY" value=""
								onchange="cal()" required>
						</div>
						<!-- ------------------------ Check In date End ---------------------------- -->
						<br>
						<!-- ------------------------ Check out date ---------------------------- -->
						<div class="d-flex justify-content-center">
							<input id="drop_date" name="pName" type="date"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Check Out:" data-date-format="DD MMMM YYYY"
								value="" onchange="cal()" required>
						</div>
						<!-- ------------------------ Check out date End ---------------------------- -->
						<!--<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-users"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pAddress" name="pAddress" type="number"
									class="form-control form-control-sm" style="width: 267px;"
									placeholder="Adults:" pattern="/^-?\d+\.?\d*$/"
									onKeyPress="if(this.value.length==1) return false;"
									maxlength="1" required>
							</div>
						</div>-->
						<!-- Input Group End -->
						<br>
						<div class="row justify-content-center">
							<div class="col-sm">
								<div class="input-group input-group-sm ml-4">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon1"><i
											class="fas fa-child"></i></span>
									</div>
									<div class="d-flex justify-content-center">
										<input id="pTele" name="pTele" type="number"
											class="form-control form-control-sm" style="width: 110px;"
											placeholder="Child:" pattern="/^-?\d+\.?\d*$/"
											onKeyPress="if(this.value.length==1) return false;"
											maxlength="1" required>
									</div>
								</div>
								<!-- Input Group End -->
							</div>
							<br>
							<div class="col-sm mr-3">
								<div class="input-group input-group-sm">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon1"><i
											class="fas fa-users"></i></span>
									</div>
									<div class="d-flex justify-content-center">
										<input id="pAge" name="pAge" type="number"
											class="form-control form-control-sm" style="width: 110px;"
											placeholder="Adults:" pattern="/^-?\d+\.?\d*$/"
											onKeyPress="if(this.value.length==1) return false;"
											maxlength="1" required>
									</div>
								</div>
								<!-- Input Group End -->
							</div>
						</div>
						<br>

						<p class="h4 mb-4 mt-3">
							<b>Guest Information</b>
						</p>

						<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-user"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pStatus" name="pStatus" type="text"
									class="form-control form-control-sm" style="width: 270px;"
									placeholder="Name" required>
							</div>
						</div>
						<!-- Input Group End -->
						<br>
						<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-at"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pAllergic" name="pAllergic" type="email"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
									class="form-control form-control-sm" style="width: 267px;"
									placeholder="Email" required>
							</div>
						</div>
						<!-- Input Group End -->
						<br>
						<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-mobile-alt"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pWard" name="pWard" type="tel"
									pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
									class="form-control form-control-sm" style="width: 271px;"
									placeholder="Phone - xxx-xxx-xxxx" required>
							</div>
						</div>
						<!-- Input Group End -->
						<br>
						<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-map-marked-alt"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pBed" name="pBed" type="number"
									class="form-control form-control-sm" style="width: 265px;"
									placeholder="Postal Code - xxxxx" pattern="/^-?\d+\.?\d*$/"
									onKeyPress="if(this.value.length==5) return false;"
									maxlength="2" required>
							</div>
						</div>
						<!-- Input Group End -->

						<!-- Actual Submit Button -->

						<!--
						<br> <input id="btnSave" name="btnSave" type="button"
							value="Save" class="btn btn-dark-green"> <input
							type="hidden" id="hidPatientIDSave" name="hidPatientIDSave"
							value="">-->

					</div>
					<!-- End of Column -->

					<div class="col-md-4 ml-5">

						<p class="h4 mb-4 mt-3">
							<b>Your Bill</b>
						</p>

						<div class="jumbotron p-4" onmouseover="calTot()"
							style="height: 230px;">

							<dl class="row">
								<dt class="col-sm-4">Room</dt>
								<dd class="col-sm-8">Superior</dd>
								<dt class="col-sm-4">Nights</dt>
								<dd class="col-sm-8">
									<div id="numdays">
										<input type="text"
											style="text-align: center; width: 100px; background-color: #E9ECEF; border: none;"
											class="textbox" id="numdays2" name="numdays" />
									</div>
								</dd>
								<!--<dt class="col-sm-4">
									<h4>SUBTOTAL</h4>
								</dt>
								<dd class="col-sm-8" style="color: #D4AF37;">
									<h4>
										<b>$825.60</b>
									</h4>
								</dd>-->
								<dt class="col-sm-4">Service</dt>
								<dd class="col-sm-8">
									<b>$</b><input type="text"
										style="text-align: center; width: 100px; background-color: #E9ECEF; border: none;"
										class="textbox" id="service" value="100" />
								</dd>
								<dt class="col-sm-4">
									<h3>TOTAL</h3>
								</dt>
								<dd class="col-sm-8" style="color: #D4AF37;">
									<b>$</b><input type="text"
										style="font-size: 30px; text-align: center; color: #D4AF37; width: 100px; font-weight: bold; border-left: none; border-right: none; border-top: none; border-bottom: solid black 1px; background-color: #E9ECEF;"
										class="textbox" id="total" />
								</dd>
							</dl>

						</div>

						<p class="h4 mb-4">
							<b>Card Details</b>
						</p>

						<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-credit-card"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pAge" name="pAge" type="text"
									class="form-control form-control-sm" style="width: 268px;"
									placeholder="Name on the card" required>
							</div>
						</div>
						<!-- Input Group End -->
						<br>
						<div class="d-flex justify-content-center">
							<input id="pStatus" name="pStatus" type="month"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="MM-YY" min="2020-10" value="2021-09" required>
						</div>
						<br>
						<div class="input-group input-group-sm ml-4">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="far fa-credit-card"></i></span>
							</div>
							<div class="d-flex justify-content-center">
								<input id="pAllergic" name="pAllergic" type="tel"
									class="form-control form-control-sm" style="width: 268px;"
									placeholder="Card Number - xxxx-xxxx-xxxx-xxxx"
									pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}"
									onKeyPress="if(this.value.length==19) return false;" required>
							</div>
						</div>
						<!-- Input Group End -->
						<button herf="paymentSuccess.jsp" type="submit"
							class="btn btn-success m-3" style="border: none;">Pay
							Now</button>
						<!--<div id="effects" class="effects">
							<a type="submit" class="hvr-bounce-to-right">Pay Now</a>
						</div>-->
						<!-- Actual Submit Button -->
						<!--
						<br> <input id="#" name="btnSave" type="button"
							value="Pay Now" class="btn btn-dark-green"> <input
							type="hidden" id="#" name="#" value="">-->

						<!-- Button to Open the Modal -->
						<!--<button type="submit" class="btn btn-primary" data-toggle="modal"
							data-target="#myModal">Pay Now</button>-->
						<!-- End of Model payment Button -->

					</div>
					<!-- End of Column -->
				</div>
				<!-- End of Row -->
			</form>
			<br>

			<!-- ---------------------------------------- End of Form ------------------------------------------- -->


			<!-- ----------------------------------- success & Error alert --------------------------------------- -->

			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
			<br>

			<!-- ----------------------------------- End of success & Error alert -------------------------------- -->

			<!-- -------------------------------------- Model - Confirm Payment ---------------------------------- -->

			<!-- The Modal -->

			<div class="modal" id="myModal">
				<div class="modal-dialog modal-dialog-scrollable modal-lg">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h1 class="modal-title"></h1>
							<button type="button" class="close" data-dismiss="modal">
								<i class="far fa-times-circle"></i>
							</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<div class="row">
								<div class="col-sm">
									<img class="card-img-top" src="Resources/payment.jpg"
										alt="Card image cap">
								</div>
								<div class="col-sm">
									<div class="jumbotron p-4" style="height: 300px;">
										<div class="d-flex justify-content-center">
											<h3>
												<b>Card Details</b>
											</h3>
										</div>
										<div class="row mt-2">
											<div class="col-sm">
												<p>Name on Card</p>
												<p>Card Number</p>
												<p>Expiration Date</p>
											</div>
											<div class="col-sm">
												<p>Thamindu</p>
												<p>xxxx xxxx xxxx xxxx</p>
												<p>xx / xx</p>
											</div>
										</div>
										<div class="d-flex justify-content-center">
											<h2>
												<b>Amount</b>
											</h2>
										</div>
										<div class="d-flex justify-content-center">
											<h3 style="color: #D4AF37;">
												<b>$19.00</b>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="row">
								<div class="col-sm">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Cancel</button>
								</div>
								<div class="col-sm">
									<div id="effects" class="effects">
										<a href="paymentSuccess.jsp" type="button"
											class="hvr-bounce-to-right">CONTINUE</a>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!--</div>-->

			<!-- -------------------------------------- Model Close --------------------------------------- -->



		</div>
		<!-- End of Form Container -->
	</div>
	<!-- End of Fluid Container -->

	<!-- ----------------------------------- Table -------------------------------- -->

	<!-- 
	<div class="container-fluid">
		<div class="row">
			<div class="col">

				<p class="h4 text-center mb-4">Manage Bookings</p>

				<div id="divPatientsGrid">
			Hotel patientObj = new Hotel();
out.print(patientObj.readPatients());				%>
				</div>

			</div> -->
	<!-- End of Column -->
	<!--  </div> -->
	<!-- End of Row -->
	<!-- </div> -->
	<!-- End of Table Container -->

	<!-- Logout -->
	<%
		if (session.getAttribute("Username") == null) {
		response.sendRedirect("hotels_home.jsp");
	}
	%>
	<!-- End of logout -->

	<!-- ----------------------------------- End of Table -------------------------------- -->

	<!-- --------------------------- Footer -------------------------- -->
	<footer class="page-footer font-small special-color-dark pt-4">

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">Chester Tourist</div>
		<!-- Copyright -->

	</footer>
	<!-- ------------------------- End of Footer --------------------- -->

</body>
</html>