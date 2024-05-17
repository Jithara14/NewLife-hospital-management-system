package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.iudProcess;

@WebServlet("/PatientUpdateAppoinmentProcess")
public class PatientUpdateAppoinmentProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String APPO_ID = request.getParameter("UpdateAppoinment");

		String issue = request.getParameter("issue");

		String Specialization = request.getParameter("specialization");
		String doctor = request.getParameter("doctor");

		String appointmentDate = request.getParameter("appointmentDate");
		String Time = request.getParameter("appointmentTime");
		String appointmentTime = Time;

		boolean status = iudProcess.PatientUpdateAppoinment(issue, Specialization, doctor, appointmentDate,
				appointmentTime);

		if (status == true) {

			RequestDispatcher dis = request.getRequestDispatcher("PatientAppoinmentStatusPage.jsp");
			dis.forward(request, response);

		} else if (status == false) {
			
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request,response);

		}

	}

}
