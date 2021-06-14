<%@ page import="com.kedarnath.models.Search" %>
<%@ page import="com.kedarnath.models.Booking" %>
<%@ page import="com.kedarnath.connection.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Thank You - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>

<body>
	<a href="search-portal.jsp" align="right">Go to main page</a>
    <div class="container">
     <div align="center" class="col">
		 <img src="images/logo.png" alt="route" width="150"	height="80">
		</div>
        <h2 align="center"><span><strong>Thank You</strong></span></h2>
       
       
        <p align="center"><span><strong>Your ticket has been booked. The summary/details are as follows</strong></span></p>
        <p><button onclick="window.print()" class="btn btn-success btn-block" >Print Ticket</button></p>
        <br>
        <h3>Ticket Summary</h3>
        <h4><strong>From Source: <%=Search.source%> to Destination: <%=Search.destination%> </br> </br> Date of journey: <%=Search.date%> Day of Journey: (<%=Search.day%>)</strong></h4>
        <h4 align="left"><strong>Booked Flight ID:<%=Booking.flight_booking_id%> </br> </br> Booked Flight Name: <%=Booking.flight_name%>|  (No of Travellers <%=Search.persons%>)</strong></h4><br>
        <h3><strong>Passenger Summary</strong></h3>
        <h3>Booking Passenger Name-<%=Booking.passenger_name%> </br> </br>  Passenger Email ID- <%=Booking.passenger_email%> </br> </br>  Passesnger Phone no- <%=Booking.passenger_phone%></h3>
        <h3><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=Booking.name_on_card%> | Card No- <%=Booking.card_details%></h4><br>
        <h2 align="right"><strong>Total Ticket Fare- Rs.<%=Search.persons*Booking.ticket_price%></strong></h2><br><br>
		<h3 Style="color:gold" align="center"><strong>Wish You a Happy Journey</strong></h3>
    </div>
 </body>
 </html>
 
