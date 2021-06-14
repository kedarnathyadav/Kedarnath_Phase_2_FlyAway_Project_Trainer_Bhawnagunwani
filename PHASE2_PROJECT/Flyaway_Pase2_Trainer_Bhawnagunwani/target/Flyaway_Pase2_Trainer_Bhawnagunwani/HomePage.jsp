<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>AirLines</title>
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
<link rel="stylesheet" href="css/style.css" ><link/></head>
<body >
	<%@include file ="Header.jsp" %>
  <div class="parent clearfix">
    <div class="bg-illustration">
      <img src="https://i.ibb.co/Pcg0Pk1/logo.png" alt="logo">

      <div class="burger-btn">
        <span></span>
        <span></span>
        <span></span>
      </div>

    </div>
    
    <div class="log/in">
      <div class="container">
    	<img src="images/logo.png" alt="Girl in a jacket" style="width:220px;height:40px;margin-top: 20px;" class="center">
        <h1>Login to access to<br />your account</h1>
    
       <!--  <div class="login-form"> -->
         <section class="container-fluid bg">
    <section class="row justify-content-center">
       
        <section class="col-sm-6 col-md-3">
            <form action="search" class="form-container" >
                <div class="form-group">
                    <label for="date">Date</label>
                    <input type="date"  class="form-control" id="date" name="date" placeholder="Travel Date..">
                </div>
                <div class="form-group">
                    <label for="source">Source</label>
                   <select name="source" id="source">
											  <option value="INDIA">INDIA</option>
											  <option value="GERMANY">GERMANY</option>
											  <option value="UNITED STATES">UNITED STATES</option>
											  <option value="UNITED KINGDOM">UNITED KINGDOM</option>
											  <option value="AFRICA">AFRICA</option>
											  <option value="AUSTRIA">AUSTRIA</option>
											  <option value="ITALY">ITALY</option>
											 </select>
                </div>
                <div class="form-group">
                    <label for="destination">Destination</label>
                    <label>Destination </label>
											<select name="destination" id="destination">
											  <option value="INDIA">INDIA</option>
											  <option value="GERMANY">GERMANY</option>
											  <option value="UNITED STATES">UNITED STATES</option>
											  <option value="UNITED KINGDOM">UNITED KINGDOM</option>
											  <option value="AFRICA">AFRICA</option>
											  <option value="AUSTRIA">AUSTRIA</option>
											  <option value="ITALY">ITALY</option>
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
    
      </div>
      </div>
  </div>
</body>
</html>