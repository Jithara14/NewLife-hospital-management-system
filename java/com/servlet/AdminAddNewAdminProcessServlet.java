package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.iudProcess;

@WebServlet("/AdminAddNewAdminProcessServlet")
public class AdminAddNewAdminProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      String fname = request.getParameter("fname");
	      String lname = request.getParameter("lname");
	      String Gender = request.getParameter("Gender");
	      String email = request.getParameter("email");
	      String dob = request.getParameter("dob");
	      String address = request.getParameter("address");
	      String Password= request.getParameter("Password");
	      String tel= request.getParameter("tel");
	      
	      
	iudProcess.AddNewAdmin(fname, lname, Gender, email, dob, address, Password, tel);
	
	boolean status = true;
	if(status == true) {
		RequestDispatcher dis = request.getRequestDispatcher("AdminDashboard.jsp");
		dis.forward(request,response);
	}
	else if(status == false){
		
		RequestDispatcher dis = request.getRequestDispatcher("ErrorPage.jsp");
		dis.forward(request,response);
		
	}
		
	
	      
	}
	

}
