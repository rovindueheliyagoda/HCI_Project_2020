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
<link href="Views/bootstrap.min.css" rel="stylesheet">
<!-- Font -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

<style>
.content {
	max-width: 500px;
	margin: auto;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

/* Style the container/contact section */
.container {
	border-radius: 5px;
	/*background-color: #f2f2f2;*/
	background-color: none;
	padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
	float: left;
	width: 50%;
	margin-top: 6px;
	padding: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.column, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
</style>
</head>
<body>

	<div class="content">
		<div class="container mt-5">

			<div style="text-align: center">
				<h2 style="color: green; font-weight: bold;">Payment Success!</h2>
				<p style="color: #EDB265; font-weight: bold;">Thank you!</p>
			</div>
			<div class="d-flex justify-content-center">
				<img src="Resources/confirm uccess Animation.gif"
					style="width: 480px">
			</div>
			<div class="d-flex justify-content-center">
				<div class="row mt-3">

					<div class="col-sm mr-4">
						<input type="submit"
							style="width: 220px; font-size: 16px; font-weight: bold; background-color: #8DA195;"
							value="Print">
					</div>
				</div>
				<div class="col-sm">
					<a href="hotels_home.jsp" class="btn btn-danger btn-sm mt-3 pt-2"
						style="height: 48px; width: 200px; font-size: 16px; font-weight: bold;">Close
					</a>
				</div>
			</div>
		</div>

	</div>

</body>
</html>