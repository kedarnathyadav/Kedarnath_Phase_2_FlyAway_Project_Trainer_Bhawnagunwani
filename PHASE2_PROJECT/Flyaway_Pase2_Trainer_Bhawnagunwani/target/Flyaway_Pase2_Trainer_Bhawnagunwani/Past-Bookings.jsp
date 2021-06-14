<%@page import="java.sql.*"%>
<%@page import="com.kedarnath.connection.DatabaseConnection" %>
<%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.User"%>
<%@ page import="com.kedarnath.models.SaveBooking"%>
<%@ page import="org.hibernate.query.Query"%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway Airlines</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/plane.png");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>

<body>
	<%@include file ="adminheader.jsp" %>

<div class="container">
    <h2 align="center"><b>PAST BOOKING BOARD</b></h2>
      <p style="text-align:center;">
                    <img src="images/logo.png" alt="route" width="150" 
     height="80">
     		
                </p>
	<br>
</div>

<section class="container-fluid">
    <section class="row justify-content-center">
        <section>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                  
                    <th scope="col">PNR ID</th>
                    <th scope="col">SOURCE</th>
                    <th scope="col">DESTINATION</th>
                    <th scope="col">DATE</th>
                    <th scope="col">FLIGHT NAME</th>
                    <th scope="col">TRAVLLER COUNT</th>
                    <th scope="col">BOOKED PERSON NAME</th>
                    <th scope="col">BOOKED PERSON EMAIL</th>
                    <th scope="col">BOOKED PERSON PHONENO</th>
                    <th scope="col">TICKET COST</th>
                    
                </tr>
                </thead>
                <tbody>
              	<%! List<SaveBooking> saveb= new ArrayList<>(); %>
                <%
                Transaction transaction = null;
        		try(Session sn = HibernateUtil.getSessionFactory().openSession()) {
        			transaction = sn.beginTransaction();
        			Query q = sn.createQuery("from SaveBooking");
        			saveb = q.list();
        			transaction.commit();
        		} catch(Exception ex) {
        			if(transaction != null) 
        			System.out.println(ex.getMessage());
        		}
                       	
                
               for(SaveBooking s: saveb)
					{
					%>
						<tbody>
						<tr>
						<td><%=s.getPnrid()%></td>
						<td><%=s.getSource()%></td>
						<td><%=s.getDestination()%></td>
						<td><%=s.getDate()%></td>
						<td><%=s.getFlightname()%></td>
						<td><%=s.getNoofpersons()%></td>
						<td><%=s.getPassengername()%></td>
						<td><%=s.getPassengeremail()%></td>
						<td><%=s.getPassengerphone()%></td>
						<td><%=s.getTicketfare()%></td>
						
						</tr>
						</tbody>
					<%	
					}
					%>
						
						
                </tbody>
            </table>
        </section>
    </section>
</section>
<div class="footer" align="center">
    <label>&copy; FLYAWAY BY KEDARNATH </label>
</div>
</body>
</html>
