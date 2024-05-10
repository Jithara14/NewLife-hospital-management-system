package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.iudProcess;

@WebServlet("/DoctorRegisterProcess")
public class DoctorRegisterProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final char[] Gender = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String dob = request.getParameter("birthday");
		String experience = request.getParameter("experience");
		String Specialization = request.getParameter("specialization");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String Gender = request.getParameter("gender");
		String password = request.getParameter("password");
		
		
		boolean status = iudProcess.DoctorRegisterProcess(fname, lname, nic, email, dob, experience, Specialization,
				mobile, address, Gender, password);
		
		
		if(status == true) {
			RequestDispatcher dis = request.getRequestDispatcher("DoctorLoginPage.jsp");
			dis.forward(request, response);
			
		}else if(status == false) {
			RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
			dis.forward(request, response);
		}

	}

}
