package com.illusion.classroom.dto;


public class AdminLogin {
	
	public static  String email="Illusion%40gmail.com";
	public static String password="Illusion2024";


	public AdminLogin() {
		
	}
	public static String getEmail() {
		return email;
	}
	
	public static String getPassword() {
		return password;
	}
	public static String getCredentials() {
		return"email="+email+"&"+"password="+password;
	}
	
	
	
}
