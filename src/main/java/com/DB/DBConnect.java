package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
private static Connection conn;
	
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/webphone1","root","12345ab");
			// conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/webphone?useUnicode=true&characterEncoding=UTF-8","root","12345ab");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
		
	}
}
