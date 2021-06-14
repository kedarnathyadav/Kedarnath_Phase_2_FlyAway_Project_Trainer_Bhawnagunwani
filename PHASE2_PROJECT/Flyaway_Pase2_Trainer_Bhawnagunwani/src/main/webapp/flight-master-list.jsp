<%@page import="java.sql.*"%>
<%@ page import= "org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.kedarnath.util.HibernateUtil"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kedarnath.models.Assign_Flights_List"%>
<%@ page import="com.kedarnath.models.FlightsList"%>
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
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>

<body>
	<%@include file ="adminheader.jsp" %>

<div class="container">
    <h2 align="center"><b>FLIGHTS MASTER LIST BOARD</b></h2>
      <p style="text-align:center;">
                    <img src="images/logo.png" alt="route" width="200" height="80">
                </p>
                <br>
    <div class="row">
        
        <div class="col-lg-3 col-md-4" align="left">
            <form method="post" action="addmasterflight.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Add new Flight</button>
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
                    <th scope="col">Flight Company</th>
                    <th scope="col">Flight Name</th>
                    <th scope="col">Flight class</th>
                   
                    
                </tr>
                </thead>
                <tbody>
              	<%! List<FlightsList> Flist= new ArrayList<>(); %>
                <%
                   
                Transaction transaction = null;
        		
        		try(Session flsession = HibernateUtil.getSessionFactory().openSession()) {
        			transaction = flsession.beginTransaction();
        			Query r = flsession.createQuery("from FlightsList");
        			Flist=r.list();
        			transaction.commit();
        		} catch(Exception ex) {
        			if(transaction != null) 
        			System.out.println(ex.getMessage());
        		}
        		for(FlightsList s: Flist)
				{
                %>
						<tr>
							<td><%=s.getFlightcompany()%></td>
							<td><%=s.getFlightname()%></td>
							<td><%=s.getFlight_class()%></td>
							<td> <a
								class="btn btn-danger"
								href="masterflightdel.jsp?flight_id=<%=s.getId()%>"><i
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
