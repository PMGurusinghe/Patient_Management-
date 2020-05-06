<%@ page import="com.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Patient&nbsp;Profile</title>

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab|Work+Sans&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

<!-- Bootstrap CDN and external CSS -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/Employee_List.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/header.css">
<script src="./js/Registration.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

	<section id=nav-bar>
		<div class="container-fluid">

			<nav
				class="navbar navbar-expand-md navbar-light bg-transparent shadow-sm bg-white rounded row nav-margin">
				<a class="navbar-brand logo" href="index.jsp"> Hospital
					Management System </a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link navbar-brand">
								Home </a></li>
						<li class="nav-item"><a class="nav-link"> Features </a></li>
						<li class="nav-item"><a class="nav-link"> Staff </a></li>
						<li class="nav-item"><a class="nav-link"> Help </a></li>
						<li class="nav-item avatar"><a class="nav-link p-0" href="#">

								<span class="mr-2 d-none d-lg-inline text-gray-600 small name">Administrator</span>
								<img src="img/user1.jpg" class="rounded-circle z-depth-2"
								data-holder-rendered="true" height="45">

						</a></li>
					</ul>

				</div>
			</nav>
		</div>
	</section>
	<div class="wrapper">

		<!-- Bootstrap Sidebar -->

		<nav id="sidebar" class="navbar-expand-md mb-5 navbar-position"
			style="margin-top: -40px; font-family: Montserrat, sans-serif;">
			<div class="sidebar-header  row" style="width: 265px;">

				<img src="img/user1.jpg" align="middle"
					class="rounded-circle z-depth-2"
					style="width: 128px; height: 128px;" data-holder-rendered="true">

			</div>
			<h5 class="mt-4 ml-3">Patient Name</h5>
			<hr class="sidebar-hr my-0">
			<ul class="list-unstyled components">

				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false">Profile</a></li>
				<li class="active"><a href="EmployeeList.jsp">Appointment List </a></li>
				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">Reports</a></li>
				<li><a href="LoginCreds.jsp">Login Authentication</a></li>
				
				<li><a href="#">Settings</a></li>
			</ul>


		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar-expand-md mb-4 toggle-bar">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-bars"></i>
					</button>
					<%
						out.print(session.getAttribute("statusMsg"));
					%>
					<br>
					<%
						Patient pObj = new Patient();
					out.print(pObj.readPatient());
					%>

				</div>
			</nav>

		</div>

	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');

			});
		});
	</script>
</body>

</html>