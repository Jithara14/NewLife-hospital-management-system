<%@page import="java.sql.ResultSet"%>
<%@page import="com.details.DoctorDetails"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PrescriptionFrom.jsp</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>
<body style="background-color:rgb(179, 255, 255)">

    <div class="col-12">
        <h1 style="color: rgb(10, 187, 187);" class="text-center">Prescription Form</h1>
    </div>
    <div class=" container col-12 min-vh-100 d-block justify-content-center" style="width: 450px;">
        <form action="DCPP" method="post">
            <div class="mb-3 mt-3">
              <label for="name" class="form-label">Patient Issue:</label>
              
              <%
              String APPOID = DoctorDetails.getPrescriptionID();
              
             ResultSet rs =  MyConn.execute("SELECT * FROM `appoinmentrequest` WHERE `APPO_ID` = '"+APPOID+"' ");
              
              if(rs.next()){
            	  %>
            	  <h3><%= rs.getString("issue") %></h3>
            	  <% 
              }
              
              %>
            </div>
           
            <div class="mb-3">
              <label for="condition" class="form-label">Health condition (Description):</label>
              <input type="text" class="form-control" id="condition" placeholder="enter health condition" name="condition">
            </div>
           <!--   <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown button
                </button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item">Action</a></li>
                  <li><a class="dropdown-item" >Another action</a></li>
                  <li><a class="dropdown-item" >Something else here</a></li>
                </ul>
              </div> -->
              
            
            <div class="mb-3">
                <label for="advice">Advice:</label>
            <textarea class="form-control" rows="5" id="comment" name="text"></textarea> 
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>