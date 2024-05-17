<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>New Admin Registration</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

body {
	background-color: rgb(156, 198, 235);
	font-family: sans-serif;
	font-size: 15px;
	padding: 0 10px;
}

/* label{width: 150px;display:inline-block ;} */
input {
	font-size: 15px;
	padding: 5px;
}

form div {
	margin-bottom: 40px;
}

.wrapper {
	max-width: 450px;
	width: 100%;
	background-color: rgb(255, 255, 255);
	margin: 20px auto;
	padding: 30px;
	box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.125);
}

.wrapper .title {
	font-size: 24px;
	font-weight: 700;
	margin-bottom: 2px;
	color: rgb(81, 81, 211);
	text-align: left;
}

.wrapper .form {
	width: 100%;
}

.wrapper .form .input_field {
	margin-bottom: 15px;
	display: flex;
}

.wrapper .form .input_field p {
	font-size: 14px;
	color: black;
}
</style>
</head>

<body>


	<div class="wrapper" style="position: relative;">

		<div class="title">Admin Registration Form</div>
		<form action="AANA" method="post">

			<div class="form">

				<div class="input_field">
					<label for=" fname">First Name &nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;</label> <input type="text" name="fname" id="fname"
						placeholder="first name" required>
				</div>

				<div class="input_field">
					<label for="lname">Last Name &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;</label> <input type="text" name="lname" id="lname"
						placeholder="last name" required>
				</div>

				<div class="input_field">
					<label for="Gender">Gender &nbsp;&nbsp;&nbsp; &nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<select id="Gender" name="Gender">
						<option value="1">Male</option>
						<option value="2">Female</option>
					</select>
				</div>


				<div class="input_field">
					<label for="email">Email Address &nbsp;&nbsp;</label> <input
						type="email" name="email" id="email" placeholder="email address"
						autofocus required>
				</div>

				<div class="input_field">
					<label for="dob">Date Of Birth &nbsp;&nbsp;&nbsp;&nbsp;</label> <input
						type="date" name="dob" id="dob" placeholder="dob" required>
				</div>

				<div class="input_field">
					<label for="address"> Address
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input type="text" name="address" id="address"
						placeholder="address" required>
				</div>

				<div class="input_field">
					<label for="address"> Password
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input
						type="text" name="Password" id="Password" placeholder="Password"
						required>
				</div>

				<div class="input_field" style="margin-bottom: 50px;">
					<label for="tel">Mobile&nbsp;&nbsp;</label> <input type="tel"
						name="tel" id="tel" placeholder="077-123-1234"
					 required>
				</div>


				<div style="margin-left: 120px;">
					<div class="input_field">
						<label for=""></label>
						<!-- <input type="submit"> -->
						<button type="submit">Submit</button>

					</div>
				</div>



			</div>
	</div>
	</form>

</body>
</html>