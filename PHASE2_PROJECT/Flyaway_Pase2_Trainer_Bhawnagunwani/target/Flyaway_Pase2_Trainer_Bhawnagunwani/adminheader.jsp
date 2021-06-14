<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN HEADER</title>
<link rel="stylesheet" href="css/navbar.css" ><link/>
</head>
<body>
		<%	
			session = request.getSession(false);
			if(session.getAttribute("username")!=null){
				%>
			<div class='topnav'>
			<a><img src="images/logo.png" alt="company logo" style="width:220px;height:40px;"></a>
			<a href='search-portal.jsp'>Homepage</a>  <a href='flight-Dashboard.jsp'>Flights Dashboard</a>
			<a href='Past-Bookings.jsp'>Bookings Dashboard</a>
			<a href='places-master-list.jsp'>Places Master List</a>
			<a href='flight-master-list.jsp'>Flights Master List</a>
			<a href="logout"  style="float:right">Logout</a> </div>"
			<%
			}
	
			else{
			%>
				<div class='topnav'>
				<a><img src="images/logo.png" alt="company logo" style="width:220px;height:40px;"></a> 
				<a href='search-portal'>Homepage</a>
				 <a href='AdminLogin.jsp'  style="float:right">Admin Login</a> </div>
			<%
			}
		%>
</body>
</html>