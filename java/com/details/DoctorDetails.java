package com.details;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

public class DoctorDetails {
	private static String D_ID;
	private static String First_name;
	private static String Last_name;
	private static String Email;
	private static String DOB;
	private static String Experience;
	private static String specization;
	private static String mobile;
	private static int Gender;
	private static int Address;
	private static String PresCriptionID;

	public DoctorDetails(String D_ID,String First_Name,String Last_Name,String Email,String DOB,String Experience,String specization,String mobile,int Gender) {
		
		this.D_ID = D_ID;
		this.First_name = First_Name;
		this.Last_name = Last_Name;
		this.Email = Email;
		this.DOB = DOB;
		this.Experience = Experience;
		this.specization = specization;
		this.mobile = mobile;
		this.Gender = Gender;
//		this.Address = Address;

	}
	
	public static String getD_ID() {
		return D_ID;
	}
	
	public static String getFirst_name() {
		return First_name;
	}
	
	public static String getLast_name() {
		return Last_name;
	}
	
	public static String getMobile() {
		return mobile;
	}
	
	public static String getEmail() {
		return Email;
	}
	
	public static String getDOB() {
		return DOB;
	}
	public static int getGender() {
		return Gender;
	}
	
	public static String getExperience() {
		return Experience;
	}
	public static String getspecization() {
		return specization;
	}
	
	public static void setPrescriptionID(String prescription){
		PresCriptionID = prescription;
	}
	
	public static String getPrescriptionID() {
		return PresCriptionID;
	}

}
