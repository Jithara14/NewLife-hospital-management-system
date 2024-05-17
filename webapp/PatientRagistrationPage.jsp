<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PatientRagistrationPage.jsp</title>

<link rel="stylesheet" href="css/bootstrap.css" />

<style>
body {
	background-image: url('background-image.jpg');
	background-size: cover;
	font-family: Arial, sans-serif;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	background-color: rgba(0, 0, 255, 0.5);
	border-radius: 10px;
	text-align: center;
}

h1 {
	background-color: blue;
	color: white;
	padding: 10px;
	border-radius: 5px;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
}

input[type="text"], input[type="date"], input[type="email"], input[type="tel"],
	select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.upload-btn-wrapper {
	overflow: hidden;
	display: inline-block;
}

.btn {
	border: 2px solid gray;
	color: gray;
	background-color: white;
	padding: 8px 20px;
	border-radius: 8px;
	font-size: 20px;
}

.upload-btn-wrapper input[type=file] {
	font-size: 100px;
	position: absolute;
	left: 0;
	top: 0;
	opacity: 0;
}

.submit-btn {
	background-color: green;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 18px;
	cursor: pointer;
}
</style>


</head>
<body>


	<div class="container">
		<h1>PATIENT REGISTRATION FORM</h1>
		<form action="PCreate" method="post">
			<div class="form-group">
				<label for="name">NAME:</label> <input type="text" id="name"
					name="name">
			</div>
			<div class="form-group">
				<label for="dob">DOB:</label> <input type="date" id="dob" name="dob">
			</div>
			<div class="form-group">
				<label for="gender">GENDER:</label> <select id="gender"
					name="gender">
					<option value="male">Male</option>
					<option value="female">Female</option>
					<option value="other">Other</option>
				</select>
			</div>
			<div class="form-group">
				<label for="blood_group">BLOOD GROUP:</label> <input type="text"
					id="blood_group" name="blood_group">
			</div>
			<div class="form-group">
				<label for="email">EMAIL:</label> <input type="email" id="email"
					name="email">
			</div>
			<div class="form-group">
				<label for="mobile">MOBILE NO:</label> <input type="tel" id="mobile"
					name="mobile">
			</div>
			<div class="form-group">
				<label for="address">ADDRESS:</label> <input type="text"
					id="address" name="address">
			</div>
			
			<div class="form-group">
				<label for="address">PASSWORD:</label> <input type="text"
					id="address" name="password">
			</div>
			
			
			
			<button type="submit" class="submit-btn">SUBMIT</button>
		</form>
	</div>


</body>
</html>