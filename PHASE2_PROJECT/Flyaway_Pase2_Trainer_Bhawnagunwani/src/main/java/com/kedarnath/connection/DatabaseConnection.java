package com.kedarnath.connection;

import java.sql.*;

public class DatabaseConnection {
	static Connection con;

	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "Kedarnath@97");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
