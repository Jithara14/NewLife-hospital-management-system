package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.iudProcess;

/**
 * Servlet implementation class AdminAppoinmentUpdateStatusProcess
 */
@WebServlet("/AdminAppoinmentUpdateStatusProcess")
public class AdminAppoinmentUpdateStatusProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String APPO_ID = request.getParameter("UpdateStatusButton");
		System.out.println(APPO_ID);

		boolean status = iudProcess.AdminUpdateAppoinmentStatus(APPO_ID);
		
		if(status == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminApproveAppoinment.jsp");
			dis.forward(request, response);
			
		}else if(status == false) {
			
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
			
		}

	}

}
