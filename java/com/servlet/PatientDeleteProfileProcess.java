package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.PatientDetails;
import com.java.iudProcess;

@WebServlet("/PatientDeleteProfileProcess")
public class PatientDeleteProfileProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = PatientDetails.getP_ID();
		
		Boolean status = iudProcess.PatientDeleteProfile(id);

		if (status == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PatientLoginPage.jsp");
			dis.forward(request, response);
		} else if (status == false) {
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}

	}

}
