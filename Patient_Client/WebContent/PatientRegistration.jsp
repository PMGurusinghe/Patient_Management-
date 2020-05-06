<%@ page import="com.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Patient Registration</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/Registration-Form-with-Photo.css">
<link rel="stylesheet" href="css/styles.css">
<script src="./Components/jquery-3.2.1.min.js"></script>
<script src="./Components/Patient.js"></script>

</head>
<body>
	<div class="register-photo">
			
		<div class="form-container">
			
			<form id="formPatient" name="formPatient" method="post" action="PatientRegistration.jsp">
					
				<h2 class="text-center">
					<strong>Patient Registration Form</strong>
				</h2>

				<!-- NAME -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblFName">First Name:</span>
					</div>
					<input class="form-control" type="text" id="FirstName" name="FirstName"
						placeholder="Enter your First Name">
				</div>

				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblLName">Last Name:</span>
					</div>
					<input class="form-control" type="text" id="LastName" name="LastName"
						placeholder="Enter your Last Name">
				</div>


				<!-- NIC -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblNIC">NIC:</span>
					</div>
					<input class="form-control" type="text" id="NIC" name="NIC"
						placeholder="Enter your NIC">
				</div>

				<!-- DOB -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblDOB">DOB:</span>
					</div>
					<input class="form-control" type="date" id="DOB"
						name="DOB" placeholder="Enter your DOB">
				</div>


				<!-- EMAIL -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblEmail">Email:</span>
					</div>
					<input class="form-control" type="email" id="Email" name="Email"
						placeholder="Enter your Email">
				</div>


				<!-- PHONE NUMBER -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblMobile">Mobile:</span>
					</div>
					<input class="form-control" type="tel" id="Mobile" name="Mobile"
						placeholder="Format: xxx-xx-xxxxx"
						pattern="[0-9]{3}-[0-9]{2}-[0-9]{5}">
				</div>


				<!-- ADDRESS -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblAddress"> Current
							Address: </span>
					</div>
					<input class="form-control" type="text" id="Address"
						name="Address" placeholder="Enter your Address">
				</div>


				<!-- BLOOD GROUP -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblBloodgroup"> Blood Group: </span>
					</div>
					<select class="form-control" id="BloodGroup" name="BloodGroup" >
					<option value="0">---Select Blood Group-</option>
					<option value="1">A</option>
					<option value="2">B</option>
					<option value="3">AB</option>
					<option value="4">O</option>
					</select>
				</div>
		<!-- Allergy -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblAllergy"> Allergy: </span>
					</div>
					<input class="form-control" type="text" id="Allergy"
						name="Allergy" placeholder="Allergies">
				</div>


				<!-- GENDER -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblGender"> Gender: </span>
					</div>
					&nbsp;&nbsp; Male &nbsp; <input class="form-control-sm"
						type="radio" id="rdoGenderMale" name="Gender" value="Male">
					&nbsp;&nbsp;Female &nbsp; <input class="form-control-sm"
						type="radio" id="rdoGenderFemale" name="Gender" value="Female">
				</div>


				<!-- PASSWORD -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblGender"> Password: </span>
					</div>
					<input class="form-control" type="password" id="password" name="password"
						placeholder="Password">
				</div>

				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblGender">
							Confirm-Password: </span>
					</div> 
					<input class="form-control" type="password" id="ConfirmPassword"name="ConfirmPassword"
						placeholder="Password (confirm)">
				</div>
				
				<div class="form-group">
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
			
				<input
						id="btnSave" name="btnSave" type="button" value="SignUp"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</div>
				<a class="already" href="PatientLogin.jsp">You already have an account? Login
					here.</a>
					
						
			
			</form>
		
	 
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
