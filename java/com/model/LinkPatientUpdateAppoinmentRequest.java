package com.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.PatientDetails;


@WebServlet("/LinkPatientUpdateAppoinmentRequest")
public class LinkPatientUpdateAppoinmentRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String Appoinment_id = request.getParameter("AppoinmentUpdate");
		PatientDetails.setAppoinment(Appoinment_id);

		
		
		RequestDispatcher dis = request.getRequestDispatcher("PatientUpdateAppoinmentRequest.jsp");
		dis.forward(request, response);
		
	}

}
