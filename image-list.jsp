
<%@page import="java.util.ArrayList"%>
<%@ page import="com.ImageDto" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Image list</title>
</head>
<body  bgcolor="#e6f7ff">
<%

List<ImageDto> list = (ArrayList<ImageDto>) request.getAttribute("list"); 

%>
<%

for(ImageDto dto : list){%>



<center>
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
}#officer {
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
  text-align: center;
  background-color: #000066;
  color: white;
}
button { 
       background-color: #000066; 
       width: 10%;
        color:white; 
        padding: 15px; 
        margin: 10px 10px; 
        border: none; 
        cursor: pointer; 
         } 
 .button2 {background-color: #009933;}
 .button3 {background-color: #b32400;}
 
 button:hover {  background-color: #000080;
                 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); } 
  
 .button2:hover {  background-color: #00cc44 ;
                   box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); }    
 
 .button3:hover {  background-color: #e62e00;
                   box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); } 
    
     p.outset{
         border-style:outset;
         border-color: white;}
    
body{
 -image:url(logo1.jpg);
 background-size:150px 150px;
 background-repeat:no-repeat;
 background-position:top center;
 background-attachment:fixed;
 };
 
 </style>
  
 <img src="logo1.jpg" alt="Trulli" width="150" height="150">
 <h1 style="color:darkblue;"><u style="color:red;"> National Service Scheme </u></h1>
 <p class="outset"></p>
<table id="officer" align="center" bgcolor="white" border="1">
<tr>
<th colspan="5" align="center"><h2>VOLUNTEER</h2></th>
</tr>
<tr>
<td colspan="5"  align="center" ><img src="data:image/jpg;Base64,<%=dto.getEncodedImage()%>" height="200px" width="200px"> </td>
</tr>
<tr>
<td colspan="2"  align="left" style="color:red;">Volunteer Name</td><td colspan="2"  align="left"><%=dto.getVname() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Father Name</td><td colspan="2"  align="left"><%=dto.getVfname() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Course</td><td colspan="2"  align="left"><%=dto.getVcourse() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Year</td><td colspan="2"  align="left"><%=dto.getVyear() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Age</td><td colspan="2"  align="left"><%=dto.getVage() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Gender</td><td colspan="2"  align="left"><%=dto.getVgender() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Blood Group</td><td colspan="2"  align="left"><%=dto.getVbgrp() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Email-ID</td><td colspan="2"  align="left"><%=dto.getVeid() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Phone NUmber</td><td colspan="2"  align="left"><%=dto.getVnum() %></td></tr>
<tr>
<td colspan="2"  align="left"style="color:red;">Address</td><td colspan="2"  align="left"><%=dto.getVadr() %></td>
</tr>
	
	

<% }
%>
</table>


<button type = "button" onclick = "window.print()" />Print</button>  
<a href="volunteermenu.jsp"><button type="button">Back</button></a>
<button class="button button2">Approve</button>
<button class="button button3">Reject</button>
</center>
</body>
</html>