<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Error</title>
<style>
		body {
			background: green;
		}
		h1 {
			display:flex;
			justify-content: center;
			color: white;
			font-family:courier;
			font-size: 20px;					
			}

		.geeks {
			width:300px;
			height:40px;
			background: rgba(255,255,255,.1);
			position: absolute;
			top:87%;
			left:38%;
			border-radius: 10px;
		}

		.geeks::after {
			content: "";
			position: absolute;
			bottom: -30px;
			background: rgb(43, 42, 42);
			width: 90%;
			height:4px;
			left:3%;
			border-radius:50%;
			filter: blur(3px);
		}
	</style>
</head>
<body>

	<div class="geeks">
	<h1 style="color:#fff">REGISTRATION SUCCESSFUL</h1>
	</div>
<!-- <center><p style="color:red">Sorry, your record is not available.</p></center> -->
<%
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
%>
</body>
</html>





