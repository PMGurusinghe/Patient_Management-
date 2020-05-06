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
					FirstName: <input id="FirstName" name="FirstName" type="text"
						class="form-control form-control-sm"> <br> 
					LastName: <input id="LastName" name="LastName" type="text"
						class="form-control form-control-sm"> <br>
				    NIC price: <input id="NIC" name="NIC" type="text"
						class="form-control form-control-sm"> <br>
					DOB: <input id="DOB" name="DOB" type="text"
						class="form-control form-control-sm"> 
					Email: <input id="Email" name="Email" type="text"
						class="form-control form-control-sm"> <br> 
					Mobile: <input id="Mobile" name="Mobile" type="text"
						class="form-control form-control-sm"> <br>
				    Address: <input id="Address" name="Address" type="text"
						class="form-control form-control-sm"> <br>
					BloodGroup: <input id="BloodGroup" name="BloodGroup" type="text"
						class="form-control form-control-sm"> 	
							Allergy: <input id="Allergy" name="Allergy" type="text"
						class="form-control form-control-sm"> 	
							Gender: <input id="Gender" name="Gender" type="text"
						class="form-control form-control-sm"> 	
							Password: <input id="Password" name="Password" type="text"
						class="form-control form-control-sm"> 	
							ConfirmPassword: <input id="ConfirmPassword" name="ConfirmPassword" type="text"
						class="form-control form-control-sm"> 	
						<br> 
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
						<input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
			
			
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
