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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from eadd where eid="+eid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){  
var name=document.myform.name.value;  
var date=document.myform.date.value; 
var place=document.myform.place.value; 
var org=document.myform.org.value; 
var nop=document.myform.nop.value; 
var nod=document.myform.nod.value; 
var guest=document.myform.guest.value; 

if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}
else if(date==null || date==""){  
	  alert("date  can't be blank");  
	  return false;  
	  }
else if(place==null || place==""){  
	 alert("place can't be blank"); 
	 return false;  
	  }
else if(org==null || org==""){  
	alert("organizer can't be blank"); 
	return false;  
	  }
else if(nop==null || nop==""){  
	alert("number of participents can't be blank"); 
	return false;  
	  }
else if(nod==null || nod==""){  
	alert("number of days can't be blank"); 
	return false;  
	  }
else if(guest==null || guest==""){  
	alert("guest can't be blank"); 
	return false;  
	  }
}  
</script> 
<style>
input[type=text], select {
  width: 99%;
  padding: 12px 20px;
  margin: 10px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
button { 
       background-color: #000066; 
       width: 25%;
        color:white; 
        padding: 10px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 button:hover { 
      
        background-color: #000080; 
        
    } 
 form { 
       width:40%;
        border: 3px solid darkblue;
         background-color: #f2f2f2;
        display:center;
    } 
input[type=submit] {
  width: 25%;
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
  p.outset{
         border-style:outset;
         border-color: white;}
    
</style>
</head>
<body bgcolor="#e6f7ff">
<center><h1 style="color:red;">DETAILS OF EVENTS</h1></center>
<p class="outset"></p>
<center>
<form  name="myform" method="post" action="Eupdate3.jsp"onsubmit="return validateform()">
<center>  <h2 style="color:#cc3300;"> Details</h2> </center>
<label for="eid"> Event Id:</label>

<input type="hidden" name="eid" value="<%=resultSet.getString("eid") %>">
<input type="text" name="eid" value="<%=resultSet.getString("eid") %>">

<label for="name"> Name of Event:</label>
<input type="text" name="name"  placeholder="Event name.." value="<%=resultSet.getString("name") %>">

<label for="date"> Date:</label>
<input type="text" name="date" placeholder="Event date.." value="<%=resultSet.getString("date") %>">

<label for="place"> Place of event:</label>
<input type="text" name="place" placeholder="Event place.." value="<%=resultSet.getString("place") %>">

<label for="org"> Organizer:</label>
<input type="text" name="org"  placeholder="Event Organizer.."value="<%=resultSet.getString("org") %>">

<label for="nop"> No of Participants:</label>
<input type="text" name="nop" placeholder="Participants.." value="<%=resultSet.getString("nop") %>">

<label for="nod"> No of Days:</label>
<input type="text" name="nod"  placeholder="Days.."value="<%=resultSet.getString("nod") %>">

<label for="guest"> Guest:</label>
<input type="text" name="guest"  placeholder="Guest.."value="<%=resultSet.getString("guest") %>">

<input type="submit" value="submit">

<a href="Eupdate1.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
</form>
</center>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
