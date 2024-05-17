<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<style type="text/css">

/* Reset some default styles */
body, html {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

/* Apply background image */
body {
	background-image:
		url("hospital management system images\loginbackground_hospital");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* Style the login container */
.login-container {
	background-color: rgba(0, 0, 255, 0.3);
	/* Blue background with transparency */
	text-align: center;
	padding: 20px;
	border-radius: 10px;
}

/* Style the title */
.title-container h1 {
	font-size: 36px;
	color: white;
}

/* Style the login buttons */
.button-container {
	margin-top: 20px;
	xa
}

button {
	background-color: #0074cc; /* Blue color for buttons */
	color: white;
	border: none;
	padding: 10px 20px;
	margin: 5px;
	cursor: pointer;
	border-radius: 5px;
	font-size: 18px;
}

button:hover {
	background-color: #0059a0;
}
/* Different styles for each button */
.admin-button {
	background-color: #ff5733; /* Red for admin login */
}

.patient-button {
	background-color: #27ae60; /* Green for patient login */
}

.doctor-button {
	background-color: #f1c40f; /* Yellow for doctor login */
}
</style>

</head>
<body>

	<div class="login-container">
		<div class="title-container">
			<center>
				<h1>NewLife Hospitals</h1>
			</center>

		</div>
		<div class="button-container">
			<center>


				<form action="log" method="get">
					<button type="submit" name="uid" value="Admin Login"
						class="admin-button">ADMIN LOGIN</button>
				</form>
				
				<form action="Plog" method="get">
					<button class="patient-button">PATIENT LOGIN</button>
				</form>


				<form action="Dlog" method="get">
					<button class="doctor-button">DOCTOR LOGIN</button>
				</form>
				


				
			</center>

		</div>
	</div>


</body>
</html>