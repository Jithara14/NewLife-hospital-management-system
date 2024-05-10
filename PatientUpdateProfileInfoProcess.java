package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.impl.CompilerStats;

import com.java.iudProcess;

@WebServlet("/PatientUpdateProfileInfoProcess")
public class PatientUpdateProfileInfoProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mobile = request.getParameter("mobile");
		String Email = request.getParameter("Email");
		String Address = request.getParameter("address");

		boolean status = iudProcess.PatientUpdateProfileInfoProcess(mobile, Address, Email);
		if (status == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PatientDashboard.jsp");
			dis.forward(request, response);
		} else if (status == false) {
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}

	}

}
