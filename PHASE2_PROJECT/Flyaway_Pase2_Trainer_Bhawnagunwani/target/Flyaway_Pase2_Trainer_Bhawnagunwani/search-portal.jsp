<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.User"%>
<%@ page import="com.kedarnath.web.Fetch_Places"%>
<%@ page import="org.hibernate.query.Query"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
            background: url("https://cdn.wallpapersafari.com/59/25/4fUSLi.jpg");
            background-size: 1400px 900px;
            left: 10%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>
<body >
	<div><%@include file ="Header.jsp" %></div>
	<!-- <img alt="flight" src="https://cdn.wallpapersafari.com/59/25/4fUSLi.jpg">
	 --><section class="container-fluid bg">
    <section class="row justify-content-center">
        <div class="row">
            <div class="col">
                <h2 align="center" style="color:whitesmoke;"><b>FlyAway <br>Ticket Booking</b></h2>
                <br>
            </div>
        </div>
        <section class="col-sm-6 col-md-3">
        
            <form action="search" class="form-container" style=" position:inherit;  left: 100px; border:White; border-width:5px; border-style:solid;">
                <div class="form-group">
                    <label for="date">Date</label>
                    <input type="date"  class="form-control" id="date" name="date" placeholder="Travel Date..">
                </div>
                <%HttpSession msession=request.getSession(); %>
                <div class="form-group" >
                    <label for="source">Source</label>
                   <select name="source" id="source">
											  <option value="" disabled selected>Choose Source</option>
											<c:forEach var="lp" items="${lop}">
											<option value="${lp}">
											<c:out value="${lp}" /></option>
											</c:forEach>
											 </select>
                </div>
                <div class="form-group">
                    <label for="destination">Destination</label>
                    
											<select name="destination" id="destination">
											  <option value="" disabled selected>Choose Destination</option>
											<c:forEach var="lp" items="${lop}">
											<option value="${lp}"><c:out value="${lp}" /></option>
											</c:forEach>
											 </select>
                </div>
                <div>
                    <label for="persons">No of Persons</label>
                    <select class="form-control" id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
                <br>
                <button type="submit" class="btn btn-success btn-block" value="Submit">Search Flights</button>
            </form>
        </section>
    </section>
</section>
<br>
<br>
<div class="footer" align="center">
    <label>&copy; FLYAWAY BY KEDARNATH </label>
</div>
</body>
</html>