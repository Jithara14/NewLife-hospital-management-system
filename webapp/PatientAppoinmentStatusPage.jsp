<%@page import="java.sql.ResultSet"%>
<%@page import="com.details.PatientDetails"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Appoinment Status</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #0dcaf0;
}

h1 {
	text-align: center;
	margin-top: 20px;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	background-color: #fff;
	padding: 150px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
	margin: 20px auto;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 30px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-4">
						<h1>Appointment Status</h1>
						<table>
							<tr>
								<th>Appointment Request Date</th>
								<th>Status</th>
								<th>Update or Delete</th>
							</tr>

							<%
							String P_ID = PatientDetails.getP_ID();

							ResultSet rs = MyConn.execute("SELECT * FROM `appoinmentrequest` INNER JOIN `doctor` ON `doctor`.`D_ID` =`appoinmentrequest`.`Doctor_ID`  WHERE  `Patient_P_ID` = '" + P_ID + "' ");

							while (rs.next()) {
							%>
							<tr>
								<td> Specialization = <%= rs.getString(6) %> <hr> </br> Doctor = <%= rs.getString("D_First_Name")+" "+rs.getString("D_Last_Name") %> <hr> </br><%="Date = " + rs.getDate(2) + " </br>  Time =" + rs.getTime(3)%></td>
								
								<%
								if(rs.getInt(7) == 1){
									%>
									<td>Approved</td>
									<% 
								}else if(rs.getInt(7)== 2){
									%>
									<td>Pending</td>
									<% 
								}
								%>
								
								
								<td>
									<form action="LPUA" method="get">
										<button name="AppoinmentUpdate" value="<%= rs.getInt(1) %>" type="submit"
											style="background-color: blue; color: white;">Update</button>
									</form> <br>
									<form action="PAD" method="post">
										<button name="AppoinmentDelete" value="<%=rs.getInt(1) %>" type="submit"
											style="background-color: red; color: white;">Delete</button>
									</form>
								</td>
							</tr>
							<%
							}
							%>
							<!-- Add more appointment rows as needed -->
						</table>






					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>