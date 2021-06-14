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
			Query q = sn.createNativeQuery("select * from users",User.class);
			users=q.list();
			transaction.commit();
		} catch(Exception ex) {
			if(transaction != null) 
				transaction.rollback();
			System.out.println(ex.getMessage());
		}
		%>
		<tbody>
					<%
					for(User s:users)
					{
						out.println("<tr>");
						out.println("<td><c:out value='"+s.getId()+"' />"+s.getId()+"</td>");
						out.println("<td><c:out value='"+s.getId()+"' />"+s.getFirstName()+"</td>");
						out.println("<td><c:out value='"+s.getId()+"' />"+s.getLastName()+"</td>");
						out.println("<td><c:out value='"+s.getId()+"' />"+s.getUsername()+"</td>");
						out.println("<td><c:out value='"+s.getId()+"' />"+s.getPassword()+"</td>");
						out.println("</tr>");
					}
					%>
		</tbody>
	</table>
</body>
</html>