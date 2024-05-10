package com.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.AdminDetails;
import com.java.LoginValidate;

@WebServlet("/PatientLoginProcessServlet")
public class AdminLoginProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			String Email = request.getParameter("Email");
			String Password = request.getParameter("Password");

			String Status = LoginValidate.AdminLoginValidate(Email, Password);
			
			String A_ID = AdminDetails.getA_ID();
			String First_name = AdminDetails.getFirst_name();
			String Last_name = AdminDetails.getLast_Name();
			
			request.setAttribute("First_name",First_name);
			request.setAttribute("Last_name", Last_name);
			
			
			
			
			

			if (Status == "Success") {

				RequestDispatcher dis = request.getRequestDispatcher("AdminDashboard.jsp");
				dis.forward(request, response);

			} else if (Status == "Error") {

				RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
				dis.forward(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
