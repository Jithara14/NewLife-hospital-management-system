package com.java;

import java.sql.ResultSet;
import java.util.Random;
import java.util.UUID;

import javax.servlet.RequestDispatcher;

import com.details.DoctorDetails;
import com.details.PatientDetails;

public class iudProcess {

	public static String PatientRegisterPRocess(String firstName, String lastName, String BOD, String Gender,
			String BloodGroup, String Email, String mobile, String password, String address) {

		String Status = null;

		if (firstName.isEmpty()) {
			System.out.println("Please Enter a First Name");
			Status = "Error";
			return Status;

		} else if (lastName.isEmpty()) {
			System.out.println("Please Enter a Last Name");
			Status = "Error";
			return Status;

		} else if (BOD.isEmpty()) {
			System.out.println("Please Enter a Birth Day");
			Status = "Error";
			return Status;

		} else if (Gender.isEmpty()) {
			System.out.println("Please Enter a Gender");
			Status = "Error";
			return Status;

		} else if (BloodGroup.isEmpty()) {
			System.out.println("Please Enter a Blood Group");
			Status = "Error";
			return Status;

		} else if (Email.isEmpty()) {
			System.out.println("Please Enter a Email");
			Status = "Error";
			return Status;

		} else if (mobile.isEmpty()) {
			System.out.println("Please Enter a Mobile");
			Status = "Error";
			return Status;

		} else if (password.isEmpty()) {
			System.out.println("Please Enter a password");
			Status = "Error";
			return Status;

		} else if (address.isEmpty()) {
			System.out.println("Please Enter a address");
			Status = "Error";
			return Status;

		} else {

			UUID P_ID = UUID.randomUUID();// UNIQ ID eka hadagannawa Patient ta

			Random rand = new Random();
			int A_ID = rand.nextInt((1000 - 1) + 1);

			String Gid;

			if (Gender == "male") {
				Gid = "1";
			} else {
				Gid = "2";
			}

//			Patient Address
			MyConn.execute("INSERT INTO  `address` (`A_ID`,`Address`) " + "VALUES('" + A_ID + "','" + address + "')");
//			Patient Insert
			MyConn.execute(
					"INSERT INTO  `patient` (`P_ID`,`First_Name`,`Last_Name`,`DOB`,`Gender_G_ID`,`Blood_Group`,`Email`,`mobile`,`password`,`Address_A_ID`) "
							+ "VALUES('" + P_ID + "','" + firstName + "','" + lastName + "','" + BOD + "','" + Gid
							+ "','" + BloodGroup + "','" + Email + "','" + mobile + "','" + password + "','" + A_ID
							+ "') ");

			System.out.println("Insert Success");
			Status = "Success";
			return Status;

		}

	}

	public static boolean PatientRequestAppoinment(String firstName, String lastName, String email, String mobile,
			String issue, String specialization, String doctor, String date, String time, String P_id) {

		Boolean status = true;

		String FirstName = firstName;
		String LastName = lastName;
		String Email = email;
		String Mobile = mobile;
		String Issue = issue;
		String Specalization = specialization;
		String Doctor = doctor;
		String Date = date;
		String Time = time;
		String P_ID = P_id;

		try {
			ResultSet rs = MyConn.execute(
					"INSERT INTO `appoinmentrequest` (`Date`,`time`,`Patient_P_ID`,`issue`,`Specialization`,`status`,`Doctor_ID`) VALUES('"
							+ date + "','" + time + "','" + P_ID + "','" + issue + "','" + specialization + "','2','"
							+ Doctor + "') ");

		} catch (Exception e) {
			status = false;
			e.printStackTrace();
		}
		return status;

	}

	public static Boolean PatientDeleteProfile(String id) {

		Boolean status = true;
		String P_ID = id;

		try {

			ResultSet prs = MyConn.execute("SELECT * FROM `appoinmentrequest` WHERE `Patient_P_ID` = '" + P_ID + "'  ");

			if (prs.next()) {
				MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `Patient_P_ID` = '" + P_ID + "' ");
				MyConn.execute("DELETE FROM `patient` WHERE `P_ID` = '" + P_ID + "' ");
				System.out.println("Delete Patient Profile");
			} else {
				MyConn.execute("DELETE FROM `patient` WHERE `P_ID` = '" + P_ID + "' ");
				System.out.println("Delete Patient Profile");
			}

		} catch (Exception e) {
			status = false;
			System.out.println("Something Wrong, Please Try Again Later");
			e.printStackTrace();
		}
		return status;

	}

	public static boolean DoctorRegisterProcess(String fname, String lname, String nic, String email, String dob,
			String experience, String Specialization, String mobile, String address, String gender, String password) {

		boolean status = true;
		long timestamp = System.currentTimeMillis();
		String D_ID = String.valueOf(timestamp);

		try {

			MyConn.execute(
					"INSERT INTO `doctor` (`D_ID`,`D_First_Name`,`D_Last_Name`,`Email`,`DOB`,`Experience`,`specization`,`Mobile`,`Gender_G_ID`,`password`) "
							+ "VALUES ('" + D_ID + "','" + fname + "','" + lname + "','" + email + "','" + dob + "','"
							+ experience + "','" + Specialization + "','" + mobile + "','" + gender + "','" + password
							+ "')");

		} catch (Exception e) {
			status = false;
			e.printStackTrace();
		}
		return status;

	}

	public static boolean DoctorDeleteProfile(String D_ID) {
		boolean status = true;

		ResultSet rsss = MyConn
				.execute("SELECT * FROM `prescription` WHERE `Doctor_D_ID` = '" + DoctorDetails.getD_ID() + "' ");

		ResultSet rs = MyConn
				.execute("SELECT * FROM `appoinmentrequest` WHERE `Doctor_ID` = '" + DoctorDetails.getD_ID() + "' ");

		try {

			if (rsss.next()) {
				MyConn.execute("DELETE FROM `prescription` WHERE `Doctor_D_ID` = '" + D_ID + "' ");

				if (rs.next()) {
					MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `Doctor_ID` = '" + D_ID + "' ");
					MyConn.execute("DELETE FROM `doctor` WHERE `D_ID` = '" + D_ID + "' ");
					System.out.println("Delete Success");
				} else {
					MyConn.execute("DELETE FROM `doctor` WHERE `D_ID` = '" + D_ID + "' ");
					System.out.println("Delete Success");
				}

			} else {
				if (rs.next()) {
					MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `Doctor_ID` = '" + D_ID + "' ");
					MyConn.execute("DELETE FROM `doctor` WHERE `D_ID` = '" + D_ID + "' ");
					System.out.println("Delete Success");
				} else {
					MyConn.execute("DELETE FROM `doctor` WHERE `D_ID` = '" + D_ID + "' ");
					System.out.println("Delete Success");
				}
			}

		} catch (Exception e) {
			System.out.println("DELETE ERROR");
			status = false;
			e.printStackTrace();
		}

		return status;

	}

	public static boolean AdminDeleteAppoinmentDetails(String APPO_ID) {

		boolean status = true;

		ResultSet rs = MyConn.execute("SELECT * FROM `prescription` WHERE `Appoinment_ID` = '" + APPO_ID + "'  ");

		try {

			if (rs.next()) {
				MyConn.execute("DELETE FROM `prescription` WHERE `Appoinment_ID` = '" + APPO_ID + "' ");
				MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `APPO_ID` = '" + APPO_ID + "' ");
				System.out.println(APPO_ID + " " + "Apppoinment Delete Successfuly ");
			} else {
				MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `APPO_ID` = '" + APPO_ID + "' ");
				System.out.println(APPO_ID + " " + "Apppoinment Delete Successfuly ");
			}

		} catch (Exception e) {
			System.out.println(APPO_ID + " " + "Apppoinment Delete Error ");
			status = false;
			e.printStackTrace();
		}
		return status;

	}

	public static boolean AdminUpdateAppoinmentStatus(String APPO_ID) {

		boolean status = true;

		try {

			MyConn.execute("UPDATE `appoinmentrequest` SET `status` = '1' WHERE `APPO_ID` ='" + APPO_ID + "'  ");

			System.out.println(APPO_ID + " " + "Apppoinment Update Status Successfuly ");

		} catch (Exception e) {
			System.out.println(APPO_ID + " " + "Apppoinment Update Status Error ");
			status = false;
			e.printStackTrace();
		}
		return status;

	}

	public static boolean AdminDeleteDoctorProcess(String D_DI) {
		boolean status = true;
		try {

			ResultSet RS = MyConn.execute("SELECT * FROM `appoinmentrequest` WHERE `Doctor_ID` = '" + D_DI + "' ");

			if (RS.next()) {
				System.out.println("YEss");

				MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `Doctor_ID` = '" + D_DI + "' ");

				MyConn.execute("DELETE FROM `doctor` WHERE `D_ID` = '" + D_DI + "' ");
				System.out.println(D_DI + " " + "Delete Doctor  Successfuly ");

			} else {
				System.out.println("NOO");
				MyConn.execute("DELETE FROM `doctor` WHERE `D_ID` = '" + D_DI + "' ");
				System.out.println(D_DI + " " + "Delete Doctor  Successfuly ");
			}

		} catch (Exception e) {
			System.out.println(D_DI + " " + "Delete Doctor Error ");
			status = false;
			e.printStackTrace();
		}
		return status;
	}

	public static boolean PatientDeleteAppoinemnt(String APPOID) {

		boolean status = true;

		ResultSet rs = MyConn.execute("SELECT * FROM `prescription` WHERE `Appoinment_ID` = '" + APPOID + "'  ");

		try {
			if (rs.next()) {

				MyConn.execute("DELETE FROM `prescription` WHERE `Appoinment_ID` = '" + APPOID + "' ");
				MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `APPO_ID` = '" + APPOID + "' ");
				System.out.println(APPOID + " " + "Delete Appoinment Successfully ");
			} else {
				MyConn.execute("DELETE FROM `appoinmentrequest` WHERE `APPO_ID` = '" + APPOID + "' ");
				System.out.println(APPOID + " " + "Delete Appoinment Successfully ");
			}

		} catch (Exception e) {
			System.out.println(APPOID + " " + "Delete Doctor Error ");
			status = false;
			e.printStackTrace();
		}
		return status;
	}

	public static boolean PatientUpdateAppoinment(String issue, String specialization, String doctor, String date,
			String time) {

		boolean status = true;

		try {
			MyConn.execute("UPDATE `appoinmentrequest` SET `issue` = '" + issue + "' ,`Specialization` = '"
					+ specialization + "', `Doctor_ID` = '" + doctor + "', `Date` = '" + date + "', `time` = '" + time
					+ "' WHERE `APPO_ID` = '" + PatientDetails.getAppoinment() + "' ");
			System.out.println("Update Successfully");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Update ERROR");

		}

		return status;

	}

	public static boolean DoctorCreatePrescriptionForm(String Pres_id, String Descriptioin, String advice,
			String Doctor_ID, String AppoinmentId) {

		boolean status = true;
		try {
			MyConn.execute("INSERT INTO `prescription` (`Description`,`Advice`,`Doctor_D_ID`,`Appoinment_ID`) VALUES "
					+ "('" + Descriptioin + "','" + advice + "','" + Doctor_ID + "','" + AppoinmentId + "') ");
		} catch (Exception e) {
			status = false;
			e.printStackTrace();
		}
		return status;
	}

	public static boolean DocotrUpdateProfileInfo(String First_name, String LastName, String Experience, String mobile,
			String email) {

		boolean status = true;

		try {
			MyConn.execute("UPDATE `doctor` SET `D_First_Name` = '" + First_name + "' , `D_Last_Name` = '" + LastName
					+ "', `Experience` = '" + Experience + "', `mobile` = '" + mobile + "' , `Email` = '" + email
					+ "'  WHERE `D_ID` = '"+DoctorDetails.getD_ID()+"' ");

			System.out.println("Update Succesflly");

		} catch (Exception e) {
			status = false;
			e.printStackTrace();
		}

		return status;

	}

	public static boolean PatientUpdateProfileInfoProcess(String mobile, String Address, String Email) {

		boolean status = true;

		try {

			int PAddress = PatientDetails.getAddress();
			String Patient_ID = PatientDetails.getP_ID();

			MyConn.execute("UPDATE `address` SET `Address` = '" + Address + "' WHERE `A_ID` = '" + PAddress + "'  ");
			MyConn.execute("UPDATE `patient` SET  `mobile` = '" + mobile + "' , `Email` = '" + Email
					+ "' WHERE `P_ID` = '" + Patient_ID + "' ");
			System.out.println("Update Profile Successfully");

		} catch (Exception e) {
			status = false;
			e.printStackTrace();
		}
		return status;

	}

	public static boolean AddNewAdmin(String fname, String lname, String Gender, String email, String dob,
			String address, String password, String tel) {

		boolean status = true;

		Random rand = new Random();
		int A_ID = rand.nextInt((1000 - 1) + 1);

		try {
			MyConn.execute("INSERT INTO `address` (`A_ID`,`Address`) VALUES ('" + A_ID + "','" + address + "')");

			MyConn.execute(
					"INSERT INTO `admin`(`A_ID`,`First_Name`,`Last_Name`,`mobile`,`Email`,`DOB`,`Gender_G_ID`,`password`,`Address_A_ID`) VALUES "
							+ "('" + A_ID + "','" + fname + "','" + lname + "','" + tel + "','" + email + "','" + dob
							+ "','" + Gender + "','" + password + "','" + A_ID + "')");

			System.out.println("Insert Success");

		} catch (Exception e) {
			status = false;
			System.out.println("Insert ERROR");
			e.printStackTrace();

		}
		return status;

	}
}
