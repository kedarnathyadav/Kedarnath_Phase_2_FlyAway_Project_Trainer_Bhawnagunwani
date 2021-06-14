package com.kedarnath.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class FLIGHTDAO {
	static Connection con;
	public List<String> listOfPlaces(){
		List<String> lp = new ArrayList<String>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawayphase2", "root", "Kedarnath@97");
			String query = "select placename from flyawayphase2.place";
			PreparedStatement preparedstatement = con.prepareStatement(query);
			ResultSet rs= preparedstatement.executeQuery();
			while(rs.next()) {
				lp.add(rs.getString("placename"));
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
	
		System.out.println(lp);
		return lp;
	}
	public List<String> listOfAirlines() {
		List<String> la = new ArrayList<String>();
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawayphase2", "root", "Kedarnath@97");
			String query = "select flightname from flyawayphase2.flights_list";
			PreparedStatement preparedstatement = con.prepareStatement(query);
			ResultSet rs= preparedstatement.executeQuery();
			while(rs.next()) {
				la.add(rs.getString("flightname"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return la;
	}

}
