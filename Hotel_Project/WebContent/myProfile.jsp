<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.Hotel"%>
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
			<ul class="navbar-nav ml-auto">

				<!-- Nav Profile -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"><i
						class="fas fa-user-circle" width="30" height="30"></i> </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<button id="btnLogout" name="btnLogout" type="button"
							value="Logout" class="btn btn-warning waves-effect btn-sm"
							style="width: 145px; font-weight: bold;">
							Logout <i class="fas fa-sign-out-alt ml-3"></i>
						</button>
					</div></li>
				<!-- End Nav Profile -->
			</ul>
			<!-- Links -->
		</div>
		<!-- Collapsible content -->
	</nav>
	<br>

	<!-- ---------------------------- End of Navigation Bar ----------------------------- -->


	<div class="container-fluid">

		<!-- ---------------------------- Start of Jumborone ----------------------------- -->
		<div class="row">
			<div class="col">
				<div class="jumbotron card card-image mt-5"
					style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">
					<div class="text-white text-center py-5 px-4">
						<div>
							<h2 class="card-title h1-responsive pt-3 mb-5 font-bold">
								<strong>My Profile</strong>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- ---------------------------- End of Jumborone ----------------------------- -->

		<!-- ------------------- Form to Add Details ------------------ -->

		<div class="container">
			<div class="row">
				<div class="col">

					<form id="formPatient" name="formPatient"
						class="text-center border border-light p-5">

						<p class="h4 mb-4">Update My Bookings</p>

						<div class="d-flex justify-content-center">
							<input id="pNic" name="pNic" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Name:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pName" name="pName" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Email:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pAddress" name="pAddress" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Phone:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pEmail" name="pEmail" type="email" 
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="No of adults:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pTele" name="pTele" type="tel"
								pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="No of Children:">
						</div>
						<br>
						<!--<div class="d-flex justify-content-center">
							<input id="pAge" name="pAge" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Patient Age:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pStatus" name="pStatus" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Patient Status:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pAllergic" name="pAllergic" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Patient Allergic:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pWard" name="pWard" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Patient Ward:">
						</div>
						<br>
						<div class="d-flex justify-content-center">
							<input id="pBed" name="pBed" type="text"
								class="form-control form-control-sm" style="width: 300px;"
								placeholder="Patient Bed:">
						</div>-->
						<br> <input id="btnSave" name="btnSave" type="button"
							value="Save" class="btn btn-dark-green"> <input
							type="hidden" id="hidPatientIDSave" name="hidPatientIDSave"
							value="">

					</form>
					<br>

					<!-- ---------------------------------------- End of Form ------------------------------------------- -->


					<!-- ----------------------------------- success & Error alert --------------------------------------- -->

					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>
					<br>

					<!-- ----------------------------------- End of success & Error alert -------------------------------- -->

				</div>
				<!-- End of Column -->
			</div>
			<!-- End of Row -->
		</div>
		<!-- End of Form Container -->
	</div>
	<!-- End of Fluid Container -->

	<!-- ----------------------------------- Table -------------------------------- -->

	<div class="container-fluid">
		<div class="row">
			<div class="col">

				<p class="h4 text-center mb-4">Manage My Bookings</p>

				<div id="divPatientsGrid">
					<%
						Hotel patientObj = new Hotel();
					out.print(patientObj.readPatients());
					%>
				</div>

			</div>
			<!-- End of Column -->
		</div>
		<!-- End of Row -->
	</div>
	<!-- End of Table Container -->



	<!-- ----------------------------------- End of Table -------------------------------- -->


	<!-- Logout -->
	<%
		if (session.getAttribute("Username") == null) {
		response.sendRedirect("hotels_home.jsp");
	}
	%>
	<!-- End of logout -->
	


	<!-- --------------------------- Footer -------------------------- -->
	<footer class="page-footer font-small special-color-dark pt-4">

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">Chester Tourist</div>
		<!-- Copyright -->

	</footer>
	<!-- ------------------------- End of Footer --------------------- -->

</body>
</html>