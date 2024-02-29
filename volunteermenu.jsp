<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
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

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#e6f7ff">

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

 <h2 style="color:darkblue;"><u style="color:#cc3300;"> National Service Scheme </u></h2>
 </center>
 <p class="outset"></p>


<style>
/* Dropdown Button */
.dropbtn {
  background-color: #000066;
  color: white;
  width:100%;
  padding: 16px;
  font-size: 16px;
  border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  width:20%;
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  width:20%;
  position: fixed;
  background-color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #000080;}</style>
<center>
<h1 style="color:#cc3300;">volunteer menu</h1>
<div class="dropdown">
  <button class="dropbtn">Menu</button>
  <div class="dropdown-content">
    <a href="index.jsp">View Profile</a>
    <a href="attendencedisplay.jsp">Your Attendance</a>
    <a href="assigndisplay.jsp">Events assigned</a>
  </div>
  
  </div>
  <div class="dropdown">
  <button class="dropbtn">Info</button>
  <div class="dropdown-content">
    <a href="Evdisplay.jsp">View Events </a>
    <a href="vpostidea.jsp">Post Ideas</a>
    <a href="image.jsp">pictures</a>
  </div>
 </div>
<br>
<br>
</center>
<a href="welcome.jsp"><button type="submit">Logout</button></a>

</body>
</html>