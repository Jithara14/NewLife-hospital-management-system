package com.java;

import java.sql.ResultSet;

import com.details.AdminDetails;
import com.details.DoctorDetails;
import com.details.PatientDetails;
import com.java.MyConn;

public class LoginValidate {
// Admin Login Validate Method
	public static String AdminLoginValidate(String Email, String Password) {
		String Status = null;

		try {
			ResultSet rs = MyConn.execute(
					"SELECT * FROM `admin` WHERE `Email` = '" + Email + "' AND `password` = '" + Password + "'");

			if (rs.next()) {
				String A_ID = rs.getString(1);
				String First_Name = rs.getString(2);
				String Last_Name = rs.getString(3);
				String mobile = rs.getString(4);
				String email = rs.getString(5);
				String DOB = String.valueOf(rs.getDate(6));
				int Gender = rs.getInt(8);

				Status = "Success";
				AdminDetails ad = new AdminDetails(A_ID, First_Name, Last_Name, mobile, email, DOB, Gender);

			} else {
				System.out.println("Error");
				Status = "Error";

			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return Status;

	}

//	Patient Login Validate Method

	public static String PatientLoginValidate(String Email, String Password) {
		String Status = null;

		try {

			ResultSet rs = MyConn.execute(
					"SELECT * FROM `patient` INNER JOIN `address` ON `patient`.`Address_A_ID` = `address`.`A_ID` WHERE `Email` = '" + Email + "' AND `password` = '" + Password + "' ");

			if (rs.next()) {
//				System.out.println(rs.getInt(1));
				String P_ID = rs.getString(1);
				String First_Name = rs.getString(2);
				String Last_Name = rs.getString(3);
				String DOB = String.valueOf(rs.getDate(5));
				String BloodGroup = rs.getString(6);
				String mobile = rs.getString(7);
				String email = rs.getString(8);
				int Gender = rs.getInt(9);
				int Address_ID =  rs.getInt("A_ID");

				System.out.println("Success");
				Status = "Success";

				PatientDetails pd = new PatientDetails(P_ID, First_Name, Last_Name, DOB, BloodGroup, mobile, email,
						Gender,Address_ID);

			} else {
				System.out.println("Error");
				Status = "Error";

			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return Status;

	}

//	Doctor Login Validate Method
	public static String DoctroLoginValidate(String Email, String Password) {
		String Status = null;
		
//		System.out.println(Email+" "+Password);

		try {

			ResultSet rs = MyConn.execute(
					"SELECT * FROM `doctor` WHERE `Email` = '" + Email + "' AND `password` = '" + Password + "' ");

			if (rs.next()) {
//				System.out.println(rs.getInt(1));
				String D_ID = rs.getString(1);
				String First_Name = rs.getString(2);
				String Last_Name = rs.getString(3);
				String email = rs.getString(4);
				String DOB = rs.getString(5);
				String Experiece = rs.getString(6);
				String specization = rs.getString(7);
				String mobile = rs.getString(8);
				String Address = rs.getString(9);
				int Gender = rs.getInt(10);

//				System.out.println("Success");
				Status = "Success";

				DoctorDetails pd = new DoctorDetails(D_ID, First_Name, Last_Name, email, DOB, Experiece, specization,mobile,
						Gender);

			} else {
				System.out.println("Error");
				Status = "Error";

			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return Status;

	}

}
