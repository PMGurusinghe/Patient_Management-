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
					










				FirstName: <input id="FirstName" name="FirstName" type="text"
						class="form-control form-control-sm"> <br> 
					LastName: <input id="LastName" name="LastName" type="text"
						class="form-control form-control-sm"> <br>
				    NIC price: <input id="NIC" name="NIC" type="text"
						class="form-control form-control-sm"> <br>
					
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblDOB">DOB:</span>
					</div>
					<input class="form-control" type="Date" id="DOB"
						name="DOB" placeholder="Enter your DOB">
				</div>
						
					Email: <input id="Email" name="Email" type="text"
						class="form-control form-control-sm"> <br> 
					Mobile: <input id="Mobile" name="Mobile" type="text"
						class="form-control form-control-sm"> <br>
				    Address: <input id="Address" name="Address" type="text"
						class="form-control form-control-sm"> <br>
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
							Allergy: <input id="Allergy" name="Allergy" type="text"
						class="form-control form-control-sm"> 	<br>
							<!-- Gender: <input id="Gender" name="Gender" type="text"
						class="form-control form-control-sm">  -->
						<!-- GENDER -->
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="lblGender"> Gender: </span>
					</div>
				
					&nbsp;&nbsp;Male <input class="form-control-sm" type="radio" id="Gender"
						name="rdoGender" value="Male"> &nbsp;&nbsp;Female <input class="form-control-sm"
						type="radio" id="Gender" name="rdoGender" value="Female">
				</div>	
							Password: <input id="Password" name="Password" type="text"
						class="form-control form-control-sm"> 	
							ConfirmPassword: <input id="ConfirmPassword" name="ConfirmPassword" type="text"
						class="form-control form-control-sm"> 	
						<br> 

	
						<br> 
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				
						<input
						id="btnSave" name="btnSave" type="button" value="Sign Up"
						class="btn btn-primary"> <input type="hidden"
						id="hidPatientIDSave" name="hidPatientIDSave" value="">
					<br><br>
			<div id="divPatientsGrid">
			<%
				Patient patientObj = new Patient();
				out.print(patientObj.readPatient());
			%>
		</div>
				</form>
			
			
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
