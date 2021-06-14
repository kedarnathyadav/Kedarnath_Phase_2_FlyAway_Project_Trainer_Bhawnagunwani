<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Change Password</title>
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
        <h1>Password Change</h1>
         <%	
			session = request.getSession(false);
			if(session.getAttribute("username")!=null){
				%> 
                <form action="changePassword" method="post">
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">New Password</label>
                        <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Enter a new password">
                        <br>
                    </div>
                    <button type="submit" class="btn btn-info mb-2">Change Password</button>
                </form>
            <%
			}
	
			else{
				 response.sendRedirect("AdminLogin.jsp");
			}
		%> 
    </div>
<div class="footer" align="center">
    <label>&copy; FLYAWAY BY KEDARNATH </label>
</div>
</body>
</html>
