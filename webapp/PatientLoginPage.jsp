<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Login Page</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url("Images/loginbackground_hospital.jpg");
	/* background image */
	background-size: cover;
	background-position: center;
	font-family: Arial, sans-serif;
	`
}

.container {
	width: 100%;
	max-width: 400px;
	margin: 0 auto;
	text-align: center;
	padding: 100px 0;
}

.title-box {
	background-color: rgba(255, 255, 255, 0.7);
	padding: 10px;
	border-radius: 10px;
}

.input-group {
	margin-top: 20px;
}

.input-group label {
	display: block;
	font-weight: bold;
}

.input-group input {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.btn-group {
	margin-top: 20px;
}

.btn {
	padding: 10px 20px;
	margin: 5px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn-login {
	background-color: #007bff;
	color: #fff;
}

.btn-signup {
	background-color: #28a745;
	color: #fff;
}
</style>
</head>
<body>

	<div class="container">
		<div class="title-box">
			<h1>Patient Login</h1>
		</div>
		
		<form action="PLogin" method="POST">
			<div class="input-group">
				<label for="username">Email:</label> <input type="text"
					id="username" name="email">
			</div>
			<div class="input-group">
				<label for="password">PASSWORD:</label> <input type="password"
					id="password" name="password">
			</div>
			<div class="btn-group">
				<button type="submit" class="btn btn-login">LOGIN</button>
			</div>
		</form>

		<form action="Preg" method="get">
			<button type="submit" class="btn btn-signup">SIGN UP</button>
		</form>


	</div>


</body>
</html>