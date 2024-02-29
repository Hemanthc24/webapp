<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
  padding: 10px;
}

#event tr:nth-child(even){background-color: #f2f2f2;}

#event tr:hover {background-color: #ddd;}

#event th {
  padding-top: 15px;
  padding-bottom: 15px;
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
<center><h1 style="color:red;">DETAILS OF EVENTS</h1></center>
<p class="outset"></p>
<a href="adminmenu.jsp"> <button type="submit">Back</button></a>
<table id="event">
<tr>
<th>Name of Events</th>
<th>Date</th>
<th>Place</th>
<th>Organizer</th>
<th>No of participants</th>
<th>No of days</th>
<th>Guest</th>
<th>delete</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from eadd";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("place") %></td>
<td><%=resultSet.getString("org") %></td>
<td><%=resultSet.getString("nop") %></td>
<td><%=resultSet.getString("nod") %></td>
<td><%=resultSet.getString("guest") %></td>
<td><a href="Edelete2.jsp?eid=<%=resultSet.getString("eid") %>">Delete</a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();  
}
%>
</table>
</body>
</html>