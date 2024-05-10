package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.iudProcess;

@WebServlet("/DoctorUpdateProfileProcess")
public class DoctorUpdateProfileProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String FullName = request.getParameter("DoctorName");
			
			String[] NameArraay = FullName.split(" ");
			
			String FirstName = NameArraay[0];
			String LastName = NameArraay[1];
			
			String Experience = request.getParameter("Experience");
			String mobile = request.getParameter("mobile");
			String Email = request.getParameter("email");
			
		boolean status = 	iudProcess.DocotrUpdateProfileInfo( FirstName, LastName, Experience, mobile, Email);
		
		if(status == true){
			RequestDispatcher dis = request.getRequestDispatcher("DoctorDashboard.jsp");
			dis.forward(request, response);
		}else if(status == false) {
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}
			
			
			
		
		
		
	}

}
