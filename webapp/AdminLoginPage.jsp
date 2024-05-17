<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin Login Page</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="Container">
		<div class="myform">
			<form action="ALoginProcess" method="post" >
				<h2>NewLife Hospitals ADMIN LOGIN</h2>
				<input type="text" name="Email" placeholder="Username:">
				
				 <input name="Password" type="text" placeholder="Password:">
				 
				<button type="submit">LOGIN</button>
			</form>
		</div>
	</div>
	
	<div class="image">
		<img src="Images/Hospital.jpg" width="100%">
	</div>

</body>
</html>