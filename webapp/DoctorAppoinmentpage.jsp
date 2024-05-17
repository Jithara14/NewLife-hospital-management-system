<%@page import="java.sql.ResultSet"%>
<%@page import="com.details.DoctorDetails"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Appoinment Page</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body style="background-color: rgb(179, 255, 255)">

	<h1 style="color: rgb(10, 187, 187);" class="text-center">My
		Appointments</h1>

	<table class="table" style="margin-top: 40px;">
		<thead>
			<tr>
				<th scope="col">appoinment_ID</th>
				<th scope="col">Date</th>
				<th scope="col">Time</th>
				<th scope="col">Patient ID</th>
				<th scope="col">Issue</th>
				<th scope="col">Specialization</th>
				<th scope="col">Add Prescription</th>
			</tr>
		</thead>


		<%
		String Doctor_id = DoctorDetails.getD_ID();
		ResultSet rs = MyConn
				.execute("SELECT * FROM `appoinmentrequest` WHERE `Doctor_ID` = '" + Doctor_id + "' AND `status` = '1' ");

		while (rs.next()) {
		%>
		<tbody class="table-group-divider">
			<th scope="row"><%=rs.getInt(1)%></th>
			<td><%=rs.getDate(2)%></td>
			<td><%=rs.getTime(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<form action="DPF" method="get">
				<td><button name="AddPRescription" value="<%=rs.getInt(1)%>">ADD
						Prescription</button></td>
			</form>
		</tbody>
		<%
		}
		%>



	</table>




</body>
</html>