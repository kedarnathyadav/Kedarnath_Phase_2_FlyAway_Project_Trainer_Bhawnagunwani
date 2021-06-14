<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.User"%>
<%@ page import="org.hibernate.query.Query"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file ="Header.jsp" %>
	<h2>User List</h2>
	<table border="1" cellpadding="10" cellspacing="0">
		<thead>
		<tr>
			<th>User Id</th>
			<th>User First Name</th>
			<th>User Last Name</th>
			<th>User Username</th>
			<th>User Password</th>
		</tr>
		</thead>
		<%! List<User> users= new ArrayList<>(); %>
		<%
		Transaction transaction = null;
		try(Session sn = HibernateUtil.getSessionFactory().openSession()) {
			transaction = sn.beginTransaction();
			Query q = sn.createQuery("from User");
			users=q.list();
			transaction.commit();
		} catch(Exception ex) {
			if(transaction != null) 
				transaction.rollback();
			System.out.println(ex.getMessage());
		}
		
					for(User s:users)
					{
					%>
						<tbody>
						<tr>
						<td><%=s.getId()%></td>
						<td><%=s.getFirstName()%></td>
						<td><%=s.getLastName()%></td>
						<td><%=s.getUsername()%></td>
						<td><%=s.getPassword()%></td>
						</tr>
						</tbody>
<!-- 						out.println("<tr>");
						out.println("<td>"+s.getId()+"</td>");
						out.println("<td>"+s.getFirstName()+"</td>");
						out.println("<td>"+s.getLastName()+"</td>");
						out.println("<td>"+s.getUsername()+"</td>");
						out.println("<td>"+s.getPassword()+"</td>");
						out.println("</tr>"); -->
					<%	
					}
					%>
		
	</table>
</body>
</html>