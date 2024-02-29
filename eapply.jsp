<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String eid = request.getParameter("eid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "demo";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<style>
#event {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color:white;
}

#event td, #event th {
  border: 1px solid #ddd;
  padding: 8px;
}

#event tr:nth-child(even){background-color: #f2f2f2;}

#event tr:hover {background-color: #ddd;}

#event th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000066;
  color: white;
}
button { 
       background-color: #000066; 
       width: 10%;
        color:white; 
        padding: 10px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 button:hover { 
      
        background-color: #000080; 
        
    } 
      p.outset{
         border-style:outset;
         border-color: white;}
         
 form { 
       width:100%;
        border: 3px solid darkblue;
         background-color: #f2f2f2;
        display:center;
    } 

input[type=submit] {
  width: 15%;
  background-color: #000066;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #000080;
}

    
</style>
</head>
<body bgcolor="#e6f7ff">
<center><h1 style="color:red;">DETAILS OF EVENTS</h1></center>
<p class="outset"></p>
<a href="princy.jsp"> <button type="submit">Back</button></a>
<form  name="myform" method="post" action="eapplyprocess.jsp">
<table>
    <tr><center>  <h2 style="color:#cc3300;">Events list from Mentors</h2> </center></tr>
<th>eid</th>
<th>Name of events</th>
<th>Date</th>
<th>Place</th>
<th>Organizer</th>
<th>No of participants</th>
<th>No of days</th>
<th>Guest</th>
<th>Status</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from eadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("eid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("place") %></td>
<td><%=resultSet.getString("org") %></td>
<td><%=resultSet.getString("nop") %></td>
<td><%=resultSet.getString("nod") %></td>
<td><%=resultSet.getString("guest") %></td>
<td><input type="checkbox" name="name" value="<%=resultSet.getString("name") %> "><%=resultSet.getString("name") %></td>

</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<center>
 <input  type="submit" value="Submit">
 
 <a href="princy.jsp"><button type="button" class="cancelbtn"> Cancel</button></a>
</center>
</form>
</body>
</html>