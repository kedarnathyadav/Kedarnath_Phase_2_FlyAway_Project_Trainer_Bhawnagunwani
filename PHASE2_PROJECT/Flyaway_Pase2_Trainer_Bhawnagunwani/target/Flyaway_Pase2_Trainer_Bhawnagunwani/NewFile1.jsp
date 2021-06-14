<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BGCOLOR=##f89ggh>

<%
    try{
Class.forName("com.mysql.jdbc.Driver");
Connection connection = 
         DriverManager.getConnection("jdbc:mysql://localhost:3306/trainingdb", "root", "Kedarnath@97");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select place_name from trainingdb.place") ;
%>

<center>
    <h1> Drop down box or select element</h1>
        <select>
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
        </select>
</center>

<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

	<a href="Fetch_Places">sdfdf</a>
</BODY>
</HTML>