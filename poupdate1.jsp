<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String pid = request.getParameter("pid");
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
#officer {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color:white;
}

#officer td, #officer th {
  border: 1px solid #ddd;
  padding: 8px;
}

#officer tr:nth-child(even){background-color: #f2f2f2;}

#officer tr:hover {background-color: #ddd;}

#officer th {
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
<center><h1 style="color:red;">DETAILS OF PROGRAM OFFICERS</h1></center>
<p class="outset"></p>
<a href="adminmenu.jsp"> <button type="submit">Back</button></a>
<table id="officer">
<tr>
<th>pid</th>
<th>Name of faculty</th>
<th>Designation</th>
<th>Subject specialized</th>
<th>Year of experience</th>
<th>Phone number</th>
<th>Email id</th>
<th>Address</th>
<th>Update</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from padd";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("pid") %></td>
<td><%=resultSet.getString("poname") %></td>
<td><%=resultSet.getString("podes") %></td>
<td><%=resultSet.getString("pospe") %></td>
<td><%=resultSet.getString("poexp") %></td>
<td><%=resultSet.getString("ponum") %></td>
<td><%=resultSet.getString("poeid") %></td>
<td><%=resultSet.getString("poadr") %></td>
<td><a href="poupdate2.jsp?pid=<%=resultSet.getString("pid")%>">update</a></td>
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