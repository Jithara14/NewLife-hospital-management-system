package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.DoctorDetails;
import com.java.iudProcess;

@WebServlet("/DoctorCreatePrescriptionProcess")
public class DoctorCreatePrescriptionProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Appoinment_ID = DoctorDetails.getPrescriptionID();
		
		String Description = request.getParameter("condition");
		String Advice = request.getParameter("text");
		String Doctor_ID = DoctorDetails.getD_ID();

		boolean status = iudProcess.DoctorCreatePrescriptionForm(Appoinment_ID, Description, Advice, Doctor_ID,
				Appoinment_ID);
		
		
		if(status == true ) {
			
			RequestDispatcher dis = request.getRequestDispatcher("DoctorAppoinmentpage.jsp");
			dis.forward(request, response);
			
		}else if(status == false) {
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}

	}

}
