package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.details.DoctorDetails;
import com.java.LoginValidate;

@WebServlet("/DoctorLoginProcessServlet")
public class DoctorLoginProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String Email = request.getParameter("username");
			String Password = request.getParameter("password");

			String Status = LoginValidate.DoctroLoginValidate(Email, Password);

			if (Status == "Success") {

				String DoctorName = DoctorDetails.getFirst_name() + " " + DoctorDetails.getLast_name();
				request.setAttribute("DoctorName", DoctorName);

				String DOB = DoctorDetails.getDOB();
				request.setAttribute("DOB", DOB);

				int gid = DoctorDetails.getGender();
				request.setAttribute("gid", gid);

				if (gid == 1) {
					String gender = "Male";
					request.setAttribute("gender", gender);
				} else if (gid == 2) {
					String gender = "Female";
					request.setAttribute("gender", gender);
				}

				String Specialization = DoctorDetails.getspecization();
				request.setAttribute("Specialization", Specialization);
				
				String Experience = DoctorDetails.getExperience();
				request.setAttribute("Experience", Experience);
				
				String mobile = DoctorDetails.getMobile();
				request.setAttribute("mobile", mobile);
				
				String email = DoctorDetails.getEmail();
				request.setAttribute("email", email);
				

				RequestDispatcher dis = request.getRequestDispatcher("DoctorDashboard.jsp");
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
