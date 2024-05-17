package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.java.iudProcess;

@WebServlet("/PatientRegisterProcessServlet")
public class PatientRegisterProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String FullName = request.getParameter("name");

		String[] Splitname = FullName.split(" "); //meeken dekata beduwa firstname and last name kyl dekk nati nisa mge form eke

		String FirstName = Splitname[0];
		String LastName = Splitname[1];

		String BOD = String.valueOf(request.getParameter("dob"));
		String Gender = request.getParameter("gender");
		String BloodGroup = request.getParameter("blood_group");
		String Email = request.getParameter("email");
		String Mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String password = request.getParameter("password");

		String Status = iudProcess.PatientRegisterPRocess(FirstName, LastName, BOD, Gender, BloodGroup, Email, Mobile,
				password, address);
		
		
		if(Status == "Success") {
			
			RequestDispatcher dis = request.getRequestDispatcher("PatientLoginPage.jsp");
			dis.forward(request, response);
			
		}else if(Status == "Error") {
			
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
			
		}
		

	}

}
