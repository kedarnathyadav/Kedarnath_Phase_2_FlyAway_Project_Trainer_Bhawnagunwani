<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.kedarnath.connection.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.Assign_Flights_List"%>
<%@ page import="com.kedarnath.models.User"%>
<%@ page import="com.kedarnath.models.SaveBooking"%>
<%@ page import="org.hibernate.query.Query"%>
<%


	Transaction transaction = null;
	String id = request.getParameter("flight_id");
	System.out.println(id);
	try(Session safl = HibernateUtil.getSessionFactory().openSession()) {
	transaction = safl.beginTransaction();
	Query a=safl.createNativeQuery("DELETE FROM flyawayphase2.flights_list WHERE (id = '"+id+"')");
	 int res = a.executeUpdate();
	transaction.commit();
	
	response.sendRedirect("flight-master-list.jsp");
	}catch(Exception ex) {
	if(transaction != null) 
	System.out.println(ex.getMessage());
	}
	
%>