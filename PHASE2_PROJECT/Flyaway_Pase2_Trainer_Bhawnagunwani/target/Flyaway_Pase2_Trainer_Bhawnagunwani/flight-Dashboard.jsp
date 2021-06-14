<%@page import="java.sql.*"%>
<%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.Assign_Flights_List"%>
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
    <h2 align="center"><b>ASSIGNED FLIGHTS BOARD</b></h2>
      <p style="text-align:center;">
                    <img src="images/logo.png" alt="company logo" width="200" height="80">
                </p>
                <br>
    <div class="row">
        
        <div class="col-lg-3 col-md-4" align="left">
            <form method="post" action="addflight.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">ASSIGN NEW FLIGHT</button>
            </form>&ensp;
        </div>
       
       
        <br>
    </div>
</div>

<section class="container-fluid">
    <section class="row justify-content-center">
        <section>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">Flight ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Source</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Day</th>
                    <th scope="col">Ticket Price</th>
                    
                </tr>
                </thead>
                <tbody>
              	<%! List<Assign_Flights_List> Fllist= new ArrayList<>(); %>
                <%
                   
                Transaction transaction = null;
        		
        		try(Session safl = HibernateUtil.getSessionFactory().openSession()) {
        			transaction = safl.beginTransaction();
        			Query qq = safl.createQuery("from Assign_Flights_List");
        			Fllist=qq.list();
        			transaction.commit();
        		} catch(Exception ex) {
        			if(transaction != null) 
        			System.out.println(ex.getMessage());
        		}
        		for(Assign_Flights_List s: Fllist)
				{
                %>
						<tr>
							<td><%=s.getAssignid()%></td>
							<td><%=s.getFlightname()%></td>
							<td><%=s.getSource()%></td>
							<td><%=s.getDestination()%></td>
							<td><%=s.getDay()%></td>
							<td><%=s.getTicketfare()%></td>
							<td> <a
								class="btn btn-danger"
								href="delete_flight.jsp?flight_id=<%=s.getAssignid()%>"><i
									class="glyphicon glyphicon-remove"></i> Delete</a></td>
						</tr>
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
