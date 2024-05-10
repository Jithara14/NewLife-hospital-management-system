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


@WebServlet("/DoctorDeleteProfileProsess")
public class DoctorDeleteProfileProsess extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Doctor_id = DoctorDetails.getD_ID();
		
	boolean status = iudProcess.DoctorDeleteProfile(Doctor_id);
	
	if(status == true) {
		
		RequestDispatcher dis = request.getRequestDispatcher("DoctorLoginPage.jsp");
		dis.forward(request, response);
		
	}else if(status == false) {
		
		RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
		dis.forward(request, response);
		
		
	}
		
		
		
		
	}

}
