<%@page import="java.sql.ResultSet"%>
<%@page import="com.details.PatientDetails"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	font-family: Arial, sans-serif;
}

.profile-container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

h1 {
	font-size: 24px;
}

.profile-info {
	margin-top: 20px;
}

.profile-info h2 {
	font-size: 18px;
}

.profile-info p {
	margin: 5px 0;
}

.treatment-details {
	margin-top: 20px;
}

.treatment-details h2 {
	font-size: 18px;
}

.treatment-details ul {
	list-style-type: none;
	padding: 0;
}

.treatment-details li {
	margin-bottom: 10px;
}
</style>
</head>
<body>

	<%@include file="Header.jsp"%>

	<div class="profile-container">
		<h1>Patient Profile</h1>

		<%
		String PatientID = PatientDetails.getP_ID();
		ResultSet rs = MyConn.execute(
				"SELECT * FROM `patient` INNER JOIN `address` ON `address`.`A_ID` = `patient`.`Address_A_ID` WHERE `P_ID` = '"
				+ PatientID + "' ");

		if (rs.next()) {
		%>
		<div class="profile-info">
			<h2>Personal Information</h2>

			<form action="PUP" method="post">

				<p>
					<strong>Patient ID:</strong>

					<%=rs.getString(1)%>
				</p>
				<p>
					<strong>Patient Name:</strong>
					<%=rs.getString(2)+" "+rs.getString(3)%>
				</p>
				<p>
					<strong>D.O.B:</strong>
					<%=rs.getString(5)%>
				</p>
				<p>
					<strong>Age/Gender:</strong>
					<c:if test="${not empty Age }"> ${Age} </c:if>
					/
					<c:if test="${not empty Gender }"> ${Gender} </c:if>
				</p>
				<p>
					<strong>Blood Group:</strong>
					<%=rs.getString(6)%>
				</p>
				<p>
					<strong>Email:</strong> <input type="text" name="Email"
						value="<%=rs.getString(8)%>">
				</p>
				<p>
					<strong>Address:</strong> <input type="text" name="address"
						value="<%=rs.getString("Address")%>">
				</p>
				<p>
					<strong>Mobile No:</strong> <input type="text" name="mobile"
						value="<%=rs.getString(7)%>">
				</p>

				<button type="submit">Update Profile</button>
			</form>
		</div>
		<%
		}
		%>
		<hr>


	</div>

</body>
</html>