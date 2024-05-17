package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.iudProcess;

@WebServlet("/AdminAppoinmentDeleteProcessServlet")
public class AdminAppoinmentDeleteProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Appo_ID = request.getParameter("DeleteButton");

		boolean status = iudProcess.AdminDeleteAppoinmentDetails(Appo_ID);
			
		if(status  == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminApproveAppoinment.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}

	}

}
