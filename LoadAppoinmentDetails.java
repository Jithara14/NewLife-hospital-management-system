package com.details;

import java.util.HashMap;
import java.util.List;

public class LoadAppoinmentDetails {

	private static int APPO_ID;
	private static String DateTime;
	private static String Patient_P_ID;
	private static int AppoinmentStatus;

	public LoadAppoinmentDetails(int AppO_ID, String DateTime, String Patient_P_ID, int AppoinmentStataus) {
		this.APPO_ID = AppO_ID;
		this.DateTime = DateTime;
		this.Patient_P_ID = Patient_P_ID;
		this.AppoinmentStatus = AppoinmentStataus;
	}

	public static int getAPPO_ID() {
		return APPO_ID;
	}

	public static String getDateTime() {
		return DateTime;
	}

	public static String getPatient_P_ID() {
		return Patient_P_ID;

	}

	public static int getAppoinmentStatus() {
		return AppoinmentStatus;
	}

}
