package com.java;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import javax.swing.table.DefaultTableModel;

import com.details.LoadAppoinmentDetails;

public class LoadData {

	public static List<String> LoadAppoinmentlist() {

		List<String> SetList = new ArrayList<String>();
		

		try {

			ResultSet rs = MyConn.execute("SELECT * FROM `appoinmentrequest`");

			while (rs.next()) {

				List<String> loadList = new ArrayList<>();
				
				List<String> L = new ArrayList<>();
				L.add(String.valueOf(rs.getInt(1)));
				L.add(String.valueOf(rs.getDate(2)));
				L.add(rs.getString(3));
				L.add(String.valueOf(rs.getInt(4)));
				L.add("#");
				
				
				loadList.addAll(L);
				SetList.addAll(loadList);
			}
			
//			System.out.println(SetList);
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SetList;

	}

}
