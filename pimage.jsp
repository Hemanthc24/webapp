<%@page import="java.util.ArrayList"%>
<%@page import="com.pImageDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Image</title>
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

<%
List<pImageDto> list = (ArrayList<pImageDto>)request.getAttribute("list");
%>
<center><h1 style="color:red;">DETAILS OF PROGRAM OFFICER</h1></center>
<p class="outset"></p>
<a href="adminmenu.jsp"> <button type="submit">Back</button></a>

<table id="officer">
<thead>
<tr><th>ID</th><th>PHOTO</th><th>VOLUNTEER NAME</th><th>FATHER NAME</th><th>COURSE</th><th>YEAR</th><th>AGE</th><th>GENDER</th><th>BLOOD GROUP</th><th>EMAIL-ID</th><th>PHONE NUMBER</th><th>ADDRESS</th></tr>
</thead>
<%
for(int i=0;i<list.size();i++){
pImageDto dto = list.get(i);
String vid = dto.getVid();
String vname = dto.getVname();
String vfname = dto.getVfname();
String vcourse = dto.getVcourse();
String vyear= dto.getVyear();
String vage = dto.getVage();
String vgender = dto.getVgender();
String vbgrp = dto.getVbgrp();
String veid = dto.getVeid();
String vnum = dto.getVnum();
String vadr = dto.getVadr();
%>
<tr><td><%=vid%></td><td><img src="./pDown?vid=<%=vid%>" height="150" width="100"/></td><td><%=vname %></td>
<td><%=vfname %></td>
<td><%=vcourse%></td>
<td><%=vyear %></td>
<td><%=vage %></td>
<td><%=vgender %></td>
<td><%=vbgrp %></td>
<td><%=veid %></td>
<td><%=vnum %></td>
<td><%=vadr %></td>
</tr>
<%}
%>

</table>
</center>
</body>
</html>