package com.details;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

public class PatientDetails {

	private static String P_ID;
	private static  String First_name;
	private static String last_name;
	private static String DOB;
	private static String BloodGroup;
	private static String mobile;
	private static String Email;
	private static int Gender;
	private static int Address;
	private static String Appoinment_ID;

	public PatientDetails(String Pid, String First_name, String Last_name, String DOB, String bloodGroup, String mobile,
			String Email, int gender,int address) {
		this.P_ID = Pid;
		this.First_name = First_name;
		this.last_name = Last_name;
		this.DOB = DOB;
		this.BloodGroup = bloodGroup;
		this.mobile = mobile;
		this.Email = Email;
		this.Gender = gender;
		this.Address = address;
	}

	public static String getP_ID() {
		return P_ID;
	}

	public static String getFirst_name() {
		return First_name;
	}

	public static String getLast_name() {
		return last_name;
	}

	public static String getDOB() {
		return DOB;
	}

	public static String getBloodGroup() {
		return BloodGroup;
	}

	public static String getMobile() {
		return mobile;
	}

	public static String getEmail() {
		return Email;
	}

	public static int getGender() {
		return Gender;
	}

	public static int getAddress() {
		return Address;
	}
	
//	///////////////////////////////////////////////////////
	public static String getAppoinment() {
		return Appoinment_ID;
		
	}
	public static void setAppoinment(String appoinment_ID) {
		Appoinment_ID = appoinment_ID;
	}
	
	
	

}
