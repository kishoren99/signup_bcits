<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Registration</title>
<link rel="stylesheet" href="signup.css">
</head>
<body>
	<div class="container">
		<div class="form-container">
		<div class="heading">BCITS</div>
			<h1>User Registration </h1>
			<form id="register-form" action="register" method="post">
				<div class="input-group">
					<input type="text" id="name" class="name" required="required" name="uname">
					<label for="name">User Name</label>
				</div>
				<div class="input-group">
					<input type="tel" id="mobile" required="required" name="umobile">
					<label for="mobile">Mobile Number</label>
				</div>
				<div class="input-group">
					<input type="date" id="dob" required="required" name="dob">
					<label for="dob"></label>
				</div>
				<div class="input-group">
					<input type="email" id="email" required="required" name="umail">
					<label for="email">Email</label>
				</div>

				<div class="input-group">
					<input type="password" id="password" required="required"
						name="cpwd"> <label for="password">Password</label>
				</div>
				<div class="input-group">
					<input type="password" id="password2" required="required"
						name="ccpwd"> <label for="password">Confirm Password</label>
				</div>
				<div class="input-group">
					<input type="text" id="address" required="required" name="address">
					<label for="address">Permanent Address</label>
				</div>
				<button type="submit" class="btn">Register</button>
				<div class="sign-in">
					<p>
						Already have an account? <a href="#">Sign In</a>
					</p>
				</div>
			</form>
		</div>
	</div>
	<script src="signup.js"></script>
</body>
</html>
