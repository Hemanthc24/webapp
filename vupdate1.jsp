<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String vid = request.getParameter("vid");
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
#volunteer {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color:white;
}

#volunteer td, #volunteer th {
  border: 1px solid #ddd;
  padding: 8px;
}

#volunteer tr:nth-child(even){background-color: #f2f2f2;}

#volunteer tr:hover {background-color: #ddd;}

#volunteer th {
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
     
</style>
</head>
<body bgcolor="#e6f7ff">
<center><h1 style="color:red;">DETAILS OF VOLUNTEERS</h1></center>
<p class="outset"></p>
<a href="adminmenu.jsp"> <button type="submit">Back</button></a>
<table id="volunteer">
<tr>
<th>vid</th>
<th>Name of volunteer</th>
<th>father name</th>
<th>course</th>
<th>year</th>
<th>Age</th>
<th>Gender</th>
<th>Blood group</th>
<th>Email id</th>
<th>phone number</th>
<th>Address</th>
<th>Update</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from volunteer";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("vid") %></td>
<td><%=resultSet.getString("vname") %></td>
<td><%=resultSet.getString("vfname") %></td>
<td><%=resultSet.getString("vcourse") %></td>
<td><%=resultSet.getString("vyear") %></td>
<td><%=resultSet.getString("vage") %></td>
<td><%=resultSet.getString("vgender") %></td>
<td><%=resultSet.getString("vbgrp") %></td>
<td><%=resultSet.getString("veid") %></td>
<td><%=resultSet.getString("vnum") %></td>
<td><%=resultSet.getString("vadr") %></td>
<td><a href="vupdate2.jsp?vid=<%=resultSet.getString("vid")%>" class="button">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>