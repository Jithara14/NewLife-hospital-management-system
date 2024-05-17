<%@page import="java.sql.ResultSet"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Appoinment Details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #0dcaf0;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	background-color: #fff;
	padding: 50px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="email"], select {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"] {
	background-color: #007BFF;
	color: #fff;
	border: none;
	padding: 15px 20px;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-4">
						<h1>Appointment Request Form</h1>
						<form action="PRACreate" method="post">
							<label for="patientName">Patient Name:</label> <input type="text"
								id="patientName" name="patientName" required> <label
								for="email">Email:</label> <input type="email" id="email"
								name="email" required> <label for="mobile number">Mobile
								Number:</lable> <input type="phone" id="mobile number"
								name="mobilenumber" required> <label for="issue">Issue:</lable>
									<input type="text" id="issue" name="issue" required> <label
									for="Specialization">Specialization:</label> <select
									id="specialization" name="specialization">
										<option value="cardiologists">Cardiologiests</option>
										<option value="phycologists">Phycologists</option>
										<option value="dermatalogist">Dermatalogist</option>
										<option value="gythonophists">Gythonophists</option>
										<option value="vp sergon">VP sergon</option>
										<option value="pathalogists">Pathalogists</option>

								</select> <label for="doctor">Select Doctor:</label> <select id="doctor"
									name="doctor">

										<%
										ResultSet rs = MyConn.execute("SELECT * FROM `doctor` ");

										while (rs.next()) {
										%>
										<option value="<%=rs.getString(1)%>"><%=rs.getString(2) + " " + rs.getString(3)%></option>
										<%
										}
										%>

								</select> <label for="appointmentDate">Appointment Date:</label> <input
									type="date" id="appointmentDate" name="appointmentDate"
									required> <label for="appointmentTime">Appointment
										Time:</lable> <input type="time" id="appointmentTime"
										name="appointmentTime" required> <input type="submit"
										value="Request Appointment">
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>