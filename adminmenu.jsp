<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
 button { 
       background-color: #000066; 
       width: 15%;
        color:white; 
        padding: 10px; 
        margin: 5px 0px; 
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
 background-size:200px 200px;
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
 <br>
 <h2><u style="color:#cc3300;"> National Service Scheme </u></h2>
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
.dropdown:hover .dropdown-content {display:block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #000080;}</style>
<h1 style="color:#cc3300;">Mentor menu</h1>
<div class="dropdown">
  <button class="dropbtn"><b>Program Officer</b> </button>
  <div class="dropdown-content">
    <a href="poadd.jsp">Add officer</a>
    <a href="poupdate1.jsp">Update officer </a>
    <a href="podelete1.jsp">Delete officer</a>
    <a href="podisplay.jsp">Display officer </a>
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn"><b>Volunteer</b></button>
  <div class="dropdown-content">
    <a href="upload.jsp">Add volunteers </a>
    <a href="vupdate1.jsp">Update volunteer</a>
    <a href="vdelete1.jsp">Delete volunteer</a>
    <a href="pView">Display volunteer</a>
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn"><b>Event</b></button>
  <div class="dropdown-content">
    <a href="Eadd.jsp">Add Event</a>
    <a href="Eupdate1.jsp">Update Event</a>
    <a href="Edelete1.jsp">Delete Event</a>
    <a href="Edisplay.jsp">Display Event</a> 
    <a href="approvedevents.jsp">Approved Event</a> 
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn"><b>Report</b></button>
  <div class="dropdown-content">
    <a href="podisplay1.jsp">program officer</a>
    <a href="pView1">Volunteer</a>
    <a href="Edisplay1.jsp">Events</a>
  </div>
</div>
<br>
<br>
</center>
 <a href="takeattendence.jsp"><button type="button">Attendence</button></a>
 <br>
 <br>
 <a href="assignv1.jsp"><button type="button">Assign volunteers for Events</button></a> 
 <br>
 <br>
 <a href="videasdisplay.jsp"><button type="button">Volunteer Ideas</button></a>
 <br>
 <br>
 <a href="welcome.jsp"><button type="button">Logout</button></a>
 

</body>
</html>