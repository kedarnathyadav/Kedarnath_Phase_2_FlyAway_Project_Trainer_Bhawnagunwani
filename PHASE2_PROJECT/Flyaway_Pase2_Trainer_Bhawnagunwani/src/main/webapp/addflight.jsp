<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
			<%@include file ="adminheader.jsp" %>
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="alert alert-info">Flights / Assign New Flight</div>
							<br />
							<div class="col-md-4">
								<form method="POST" action="addFlight">
									<div class="form-group">
										<label>Name </label>
										 <select name="name">
											<option value="" disabled selected>Select Airline</option>
						    				<c:forEach var="la" items="${loa}">
						        			<option value="${la}"><c:out value="${la}" /></option>
						    				</c:forEach>
											</select></td>
									</div>
									<%HttpSession mysession=request.getSession(); %>
									<div class="form-group">
										<label>Source </label> 
										<select name="source">
										<option value="" disabled selected>Choose Source</option>
											<c:forEach var="lp" items="${lop}">
											<option value="${lp}">
											<c:out value="${lp}" /></option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label>Destination</label> 
										<select name="destination">
											<option value="" disabled selected>Choose Destination</option>
											<c:forEach var="lp" items="${lop}">
											<option value="${lp}"><c:out value="${lp}" /></option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label>Days </label>
											<select name="day" id="cars">
											  <option value="MONDAY">MONDAY</option>
											  <option value="TUESDAY">TUESDAY</option>
											  <option value="WEDNESDAY">WEDNESDAY</option>
											  <option value="THURSDAY">THURSDAY</option>
											  <option value="FRIDAY">FRIDAY</option>
											  <option value="SATURDAYDAY">SATURDAYDAY</option>
											  <option value="SUNDAY">SUNDAY</option>
											</select>
									</div>
									<div class="form-group">
										<label>Ticketcost </label> <input type="number"
											class="form-control" name="ticketcost" /> 
										
									</div>
									<br />
									<div class="form-group">
										<button name="add_account" class="btn btn-info form-control">
											<i class="glyphicon glyphicon-save"></i> Save
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<div style="text-align: right; margin-right: 10px;"
		class="navbar navbar-default navbar-fixed-bottom">
		<label>&copy; Flyaway by kedarnath </label>
	</div>
</body>
</html>