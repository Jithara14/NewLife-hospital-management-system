<%@page import="java.sql.ResultSet"%>
<%@page import="com.details.DoctorDetails"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<style type="text/css">
</style>
</head>
<body style="background-color: rgb(179, 255, 255)">

	<%@include file="DoctorHeader.jsp"%>

	<div class="col-12">
	




			<%
			String DOC_ID = DoctorDetails.getD_ID(); 

			ResultSet res = MyConn.execute("SELECT * FROM `doctor` WHERE `D_ID` = '" + DOC_ID + "' ");

			if (res.next()) {
			%>

	<h4 class="text-center mt-5 " style="color: rgb(10, 187, 187);">Doctor Id = <%= res.getString(1) %></h4>
		<div class="row">
			<div class="col-4 mx-2 d-flex justify-content-end">
				<img src="Images/doctor.jpg" style="width: 250px; height: 300px;"
					alt="">

			</div>






			<div class="col-6 mt-4 mx-5">
				<form action="DUP" method="post">
					<ul class="list-unstyled mb-1-9">
						<li class="mb-2 mb-xl-3 display-28"><span
							class="display-26 text-secondary me-2 font-weight-600">Name:</span>
							<input type="text"
							value="<%=res.getString(2) + " " + res.getString(3)%>"
							id="DoctorName" name="DoctorName" required></li>
						<li class="mb-2 mb-xl-3 display-28"><span
							class="display-26 text-secondary me-2 font-weight-600">DOB:</span>
							<%=res.getString(5)%></li>
						<li class="mb-2 mb-xl-3 display-28"><span
							class="display-26 text-secondary me-2 font-weight-600">Gender</span>
							<%
							if (res.getInt(10) == 1) {
							%> <span>Male</span> <%
 } else if (res.getInt(10) == 2) {
 %> <span>Female</span> <%
 }
 %>
						<li class="mb-2 mb-xl-3 display-28"><span
							class="display-26 text-secondary me-2 font-weight-600">Experience:</span>
							<input type="text" value="<%=res.getString(6)%>"
							id="Experience" name="Experience" required></li>
						<li class="mb-2 mb-xl-3 display-28"><span
							class="display-26 text-secondary me-2 font-weight-600">Mobile
								No.:</span> <input type="text" value="<%=res.getString(8)%>"
							id="mobile" name="mobile" required></li>
						<li class="mb-2 mb-xl-3 display-28"><span
							class="display-26 text-secondary me-2 font-weight-600">Email:</span>
							<input type="text" value="<%=res.getString(4)%>" id="email"
							name="email" required></li>
						<li><button class="btn btn-primary" type="submit">Update
								Profile</button></li>
					</ul>
				</form>
			</div>
			<%
			}
			%>



			<div class="col-12">
				<div class="row">
					<div class="col-4">
						<span class=" text-secondary mx-5" style="font-size: x-large;">Schedule:-</span>

					</div>

					<div class="col-12 mt-4">
						<div class="row">
							<div class="col-4 " style="margin: left 6px;">
								<div class="row">
									<span class=" text-secondary mx-5" style="font-size: x-large;">Monday</span>
									<span class=" text-secondary mx-5" style="font-size: x-large;">4.00
										PM-8.00 PM</span>
								</div>
							</div>
							<div class="col-4 " style="margin: left 6px;">
								<div class="row">
									<span class=" text-secondary mx-5" style="font-size: x-large;">Wednesday</span>
									<span class=" text-secondary mx-5" style="font-size: x-large;">8.00
										AM-11.00 AM</span>
								</div>
							</div>
							<div class="col-4" style="margin: left 6px;">
								<div class="row">
									<span class=" text-secondary mx-5" style="font-size: x-large;">Friday</span>
									<span class=" text-secondary mx-5" style="font-size: x-large;">2.00
										PM-5.00 PM</span>
								</div>
							</div>
						</div>

					</div>
				</div>


			</div>
		</div>
</body>
</html>