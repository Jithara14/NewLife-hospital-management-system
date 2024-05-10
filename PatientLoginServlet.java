package com.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.PatientDetails;
import com.java.LoginValidate;

@WebServlet("/PatientLogin")
public class PatientLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Email = request.getParameter("email");
		String Password = request.getParameter("password");

		String status = LoginValidate.PatientLoginValidate(Email, Password);

		if (status == "Success") {

			String PatientID = PatientDetails.getP_ID();
			String FirstName = PatientDetails.getFirst_name();
			String LastName = PatientDetails.getLast_name();
			String PatientName = FirstName+" "+LastName;
			String DOB = PatientDetails.getDOB();
			
			
//			calculate Age 
			LocalDate dateOfBirth = LocalDate.parse(DOB,DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			LocalDate Today = LocalDate.now();
			Period Deference = Period.between(dateOfBirth, Today);
			int Age = Deference.getYears();
			
			int GenderID = PatientDetails.getGender();
			
			String Gender = null;
			
			if(GenderID == 1) {
				 Gender = "male";
			}else if(GenderID == 2) {
				 Gender = "Female";
			}
			
			String BloodGroup = PatientDetails.getBloodGroup();
			String email = PatientDetails.getEmail();
			String Address = "";
			String mobile = PatientDetails.getMobile();
			
			
			request.setAttribute("PatientID", PatientID);
			request.setAttribute("FirstName", FirstName);
			request.setAttribute("LastName", LastName);
			request.setAttribute("PatientName", PatientName);
			request.setAttribute("DOB", DOB);
			request.setAttribute("dateOfBirth", dateOfBirth);
			request.setAttribute("Age", Age);
			request.setAttribute("BloodGroup", BloodGroup);
			request.setAttribute("email", email);
			request.setAttribute("Address", Address);
			request.setAttribute("mobile", mobile);
			request.setAttribute("Gender", Gender);	
			
			
;
			RequestDispatcher dis = request.getRequestDispatcher("PatientDashboard.jsp");
			dis.forward(request, response); // meken wenne api wena page ekakata load karagannawa nm value set eka

		} else {

			System.out.println(status);

			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);

		}

	}

}
