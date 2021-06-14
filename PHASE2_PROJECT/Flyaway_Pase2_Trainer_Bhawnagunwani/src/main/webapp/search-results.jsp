<%@page import="java.sql.*"%>
<%@ page import="com.kedarnath.models.Search" %>
<%@page import="com.kedarnath.connection.DatabaseConnection" %>
<%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.User"%>
<%@ page import="com.kedarnath.models.Assign_Flights_List"%>
<%@ page import="org.hibernate.query.Query"%>
<%
    String query = Search.getQuery();
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Search Results - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
	background-size: 1400px 900px;
	opacity: 1.0;
}



.w3-bar .w3-button {
	padding: 16px;
}
</style>
</head>

<body >
<div><%@include file ="Header.jsp" %></div>

	
<!-- <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="/index.jsp" class="w3-bar-item w3-button w3-wide"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <div class="w3-right w3-hide-small">
        <a href="/login.jsp" class="w3-bar-item w3-button"><i class="fa fa-gear"></i> Admin Login</a>
    </div>
</div> -->
<div class="container">
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong>
        Showing available flights from <%=Search.source%> to  <%=Search.destination%> <br>
        Date of travel : <%=Search.date%> (<%=Search.day%>)  <br>
        No of travellers :  <%=Search.persons%>  <br>
    </p>
    <table class="table table-hover table-striped">
        <thead >
        <tr >
            <th scope="col">Flight</th>
            <th scope="col">Source</th>
            <th scope="col">Destination</th>
            <th scope="col">Date</th>
            <th scope="col">Ticket Price</th>
            
        </tr>
        </thead>
        
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
      	<%! List<Assign_Flights_List> flist= new ArrayList<>(); %>
        <%
        Transaction transaction = null;
		try(Session sn = HibernateUtil.getSessionFactory().openSession()) {
			transaction = sn.beginTransaction();
			Query q = sn.createQuery(query);
			flist = q.list();
			transaction.commit();
		} catch(Exception ex) {
			if(transaction != null) 
			System.out.println(ex.getMessage());
		}
               	
        
       for(Assign_Flights_List f: flist)
			{
            	
        %>
        <tr bgcolor="#F5F5F5">
            <td><%=f.getFlightname()%></td>
            <td><%=f.getSource() %></td>
            <td><%=f.getDestination()%></td>
            <td><%=Search.date%></td>
            <td><%=f.getTicketfare()%></td>
            <td>
                <form action="booking-details.jsp" method="post">
                    <input type="hidden" id="name" name="name" value="<%=f.getFlightname()%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=f.getTicketfare()%>">
                    <input type="hidden" id="flight_id" name="flight_id" value="<%=f.getAssignid()%>">
                    <input type="submit" class="btn btn-success" value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
               %>
        </tbody>
    </table>
</div>
<div class="footer" align="center">
    <label>&copy; FLYAWAY BY KEDARNATH </label>
</div>

</body>
</html>