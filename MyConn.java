package com.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyConn {
	
	public static Connection connection;
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // Jar file eke Driver eka thiyena Path eka Defind karagannawa
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/newlife","root","12345678"); // E path eke url eka connection kiyala hadala thiyena Variable ekata Assign karagannawa
//			(url,root,password)
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public static ResultSet execute(String querry){
		
		try {
			Statement statement  =	connection.createStatement();
			if(querry.startsWith("SELECT")){
			ResultSet resultSet = 	statement.executeQuery(querry); //statement ekak hadanne Querry eka run wenna. Querry eka run wenne Statement object ekaka
			return resultSet;
			}else {
			int result =	statement.executeUpdate(querry);
				return null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	

}
