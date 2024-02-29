<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "demo";
String userId = "root";
String password = "root";
String vid=request.getParameter("vid");

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
} 

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM vadd where vid='"+vid+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title> 
<head>
<style>
#officer {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
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
       width: 35%;
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
</head>
<body bgcolor="#e6f7ff" >
<center>
<style>
body{
 background-image:url(logo1.jpg);
 background-size:150px 150px;
 background-repeat:no-repeat;
 background-position:top center;
 background-attachment:fixed;
 };
 </style>
  <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <h1 style="color:darkblue;"><u style="color:red;"> National Service Scheme </u></h1>
 <p class="outset"></p>
 <br>
 </center>
   <form >
<table id="officer" align="center" bgcolor="white" border="1" >

<tr><td colspan="4"><h2><center>Your Profile </center><h2></td><tr>
<tr><td  align="left" >volunteer ID:</td><td colspan="3"><%=resultSet.getString(1) %></td></tr>
<tr><td  align="left">Candidate Name:</td><td colspan="3"><%=resultSet.getString(2) %></td></tr>
<tr><td  align="left">Father name :</td><td colspan="3"><%=resultSet.getString(3) %></td></tr>
<tr><td  align="left"> Course :</td><td colspan="3"><%=resultSet.getString(4) %></td></tr>
<tr><td  align="left"> Year:</td><td colspan="3"><%=resultSet.getString(5) %></td></tr>
<tr><td  align="left">Age :</td><td colspan="3"><%=resultSet.getString(6) %></td></tr>
<tr><td  align="left">Gender:</td><td colspan="3"><%=resultSet.getString(7) %></td></tr>
<tr><td  align="left">Blood group:</td><td colspan="3"><%=resultSet.getString(8) %></td></tr>
<tr><td  align="left">Email ID:</td><td colspan="3"><%=resultSet.getString(9) %></td></tr>
<tr><td  align="left">Phone Number:</td><td align=""><%=resultSet.getString(10) %></td></tr>
<tr><td  align="left">Address:</td><td align=""><%=resultSet.getString(11) %></td></tr>
<tr><td   align="center"><button type = "button" onclick = "window.print()" />Print</button></td><td colspan="3" align="center"><a href="volunteermenu.jsp"><button type="button">Back</button></a></td></tr>
</table>
  </form>
</html>

<% 
String msg="Displayed records";}

} catch (Exception e) {
e.printStackTrace();
}
%>