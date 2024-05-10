package com.servlet;

import java.io.IOException;
import java.io.ObjectInputFilter.Status;import javax.security.auth.login.FailedLoginException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.PatientDetails;
import com.java.iudProcess;

/**
 * Servlet implementation class PatientRequestAppoinmentProcess
 */
@WebServlet("/PatientRequestAppoinmentProcess")
public class PatientRequestAppoinmentProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String patientName = request.getParameter("patientName");

		String[] fullName = patientName.split(" ");
		String firstName = fullName[0];
		String lastName = fullName[1];

		String Email = request.getParameter("email");
		String mobile = request.getParameter("mobilenumber");
		String issue = request.getParameter("issue");

		String Specialization = request.getParameter("specialization");
		String doctor = request.getParameter("doctor");

		String appointmentDate = request.getParameter("appointmentDate");
		String Time = request.getParameter("appointmentTime");
		String appointmentTime = Time + ":00";

		String P_ID = PatientDetails.getP_ID();

		boolean sataus = iudProcess.PatientRequestAppoinment(firstName, lastName, Email, mobile, issue, Specialization,
				doctor, appointmentDate, appointmentTime, P_ID);

		if(sataus == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PatientDashboard.jsp");
			dis.forward(request, response);
		}else if(sataus == false){
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}
		
		

	}

};
