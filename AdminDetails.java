package com.details;

public class AdminDetails {
	private static String A_ID;
	private static String First_name;
	private static  String last_name;
	private static String mobile;
	private static String Email;
	private static String DOB;
	private static int Gender;
	private static int Address;
	

	public AdminDetails(String A_ID, String First_name, String last_name, String mobile, String Email, String DOB,
			int Gender) {
		
		this.A_ID = A_ID;
		this.First_name = First_name;
		this.last_name = last_name;
		this.mobile = mobile;
		this.Email = Email;
		this.DOB = DOB;
		this.Gender = Gender;
//		this.Address = Address;

	}
	
		


	public static String getA_ID() {
		return A_ID;
	}
	
	public static String getFirst_name() {
		return First_name;
	}
	
	public static String getLast_Name() {
		return last_name;
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
	


}
