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
			<%@include file ="Header.jsp" %>
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="alert alert-info">Flights / Add Flight</div>
							<br />
							<div class="col-md-4">
								<form method="POST" action="AddMasterflight">
									<div class="form-group">
										<label>Flight Name </label>
										<input type="text" class="form-control"
											name="flightname" />
									</div>
									<div class="form-group">
										<label>Flight Company Name</label> 
											<input type="text" class="form-control"
											name="flightcompany" />
									</div>
									<div class="form-group">
										<label>Class Type</label> 
										<select name="fclass" id="cars">
											  <option value="BUSINESS">BUSINESS</option>
											  <option value="ECONOMY">ECONOMY</option>
											  <option value="FIRST CLASS">FIRST CLASS</option>
											  <option value="PREMIUM ECONOMY">PREMIUM ECONOMY</option>
											</select>
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