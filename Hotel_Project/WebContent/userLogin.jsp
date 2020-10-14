<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!--favicon-->
<link rel="shortcut icon" href="Resources/favicon1.jpg"
	type="image/x-icon">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="Views/bootstrap.min.css">

<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/auth.js"></script>

</head>
<body>

	<!-- --------------- Navigation Bar -------------- -->
	<!--<nav class="navbar navbar-expand-md navbar-dark special-color-dark">

  		<!-- Collapse button -->
	<!--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav2" aria-controls="basicExampleNav2" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>

  			<a class="navbar-brand" href="hotels_home.jsp"><i class="fas fa-hotel"></i></a>
  			
  			<div class="collapse navbar-collapse" id="basicExampleNav">-->

	<!-- Links -->
	<!--<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="hotels_home.jsp">Hotels</a></li>
			</ul>
			</div>
	</nav>-->
	<!-- ---------- End of Navigation Bar ---------- -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<div class="jumbotron mt-3"
					style="border-radius: 20px; background-image: linear-gradient(to right, #4A7FDA, #6796E5); background-color: #4A7FDA; height: 672px;">
					<div class="row">
						<div class="col">
							<div class="text-black text-center py-5 px-5">
								<div>
									<h2 class="card-title h1-responsive pt-3 mb-5 font-bold"
										style="color: white;">
										<strong>Sign In</strong>
									</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col"></div>
					</div>
					<div class="row">
						<div class="col"></div>
						<p class="card-title h4-responsive p-3 mb-5 font-bold"
							style="color: white;">
							<strong></strong>
						</p>
					</div>
					<div class="row">
						<div class="col"></div>
						<p class="card-title h4-responsive p-3 mb-5 font-bold"
							style="color: white;">
							<strong>Get Started in few clicks and Books your
								favorite hotel end enjoy your holiday</strong>
						</p>
					</div>

						<div class="col"></div>
						<a href="hotels_home.jsp"  class="btn btn-outline-white btn-sm" style="color:white; float: left; font-weight: bold;"><i class="fas fa-long-arrow-alt-left"></i>&nbsp;&nbsp;&nbsp; Back to hotels</a>

				</div>
			</div>
			<div class="col-sm-8 pt-5">

				<form id="formLogin" class="text-center border border-light p-5 m-5">

					<p class="h4 mb-4 pt-5 pb-3" style=" font-size: 30px; font-weight: bold;">Sign In</p>

					<div class="d-flex justify-content-center">
						<input id="txtUsername" name="txtUsername" type="text"
							class="form-control form-control-sm mb-4" style="width: 300px;"
							placeholder="User Name:">
					</div>
					<div class="d-flex justify-content-center">
						<input id="txtPassword" name="txtPassword" type="password"
							class="form-control form-control-sm mb-4" style="width: 300px;"
							placeholder="Password:">
					</div>
					<br> <input id="btnLogin" name="btnLogin" type="button"
						value="Login" class="btn btn-primary"><br> <br>

					<!-- Alert -->
					<div class="d-flex justify-content-center">
						<div id="alertError" class="alert alert-danger"
							style="width: 300px;"></div>
					</div>

				</form>
				<!-- End of Form -->

			</div>
			<!-- End of column -->
		</div>
		<!-- End of row -->
	</div>
	<!-- End of main container -->

	<%
		if (session.getAttribute("Username") != null) {
		response.sendRedirect("hotels.jsp");
	}
	%>

	<!--<footer class="page-footer font-small special-color-dark fixed-bottom pt-4">
		<div class="footer-copyright text-center py-3">Chester Tourist</div>
	</footer>-->
</body>
</html>