<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Patient Login</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/Login-Form-Clean.css">
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<div class="register-photo">
		<div class="form-container">
			<div class="image-holder"></div>
			<form method="post">
				<h2 class="text-center">
					<strong>LOGIN TO YOUR ACCOUNT</strong> 
				</h2>
				
				<div class="form-group">
					<input class="form-control" type="email" name="email"
						placeholder="Email">
				</div>
				
				<div class="form-group">
					<input class="form-control" type="password" name="password"
						placeholder="Password">
				</div>
				
			<div id="alertSuccess" class="alert alrt-success"></div>
			<div id="alertError" class="alert alrt-danger"></div>
			
				<div class="form-group">
					<button class="btn btn-primary btn-block" type="submit">LOGIN</button>
				</div>
				<a class="forgot" href="#">Forgot your email or password?</a>
			</form>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
