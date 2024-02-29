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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from volunteer where vid="+vid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){   
var vname=document.myform.vname.value; 
var vfname=document.myform.vfname.value; 
var vcourse=document.myform.vcourse.value; 
var vyear=document.myform.vyear.value; 
var vage=document.myform.vage.value; 
var vgender=document.myform.vgender.value; 
var vbgrp=document.myform.vbgrp.value;
var veid=document.myform.veid.value;
var vnum=document.myform.vnum.value;
var vadr=document.myform.vadr.value;

 if(vname==null || vname==""){  
	  alert("name  can't be blank");  
	  return false;  
	  }
else if(vfname==null || vfname==""){  
	 alert("fathername can't be blank"); 
	 return false;  
	  }
else if(vcourse==null || vcourse==""){  
	alert("course can't be blank"); 
	return false;  
	  }
else if(vyear==null || vyear==""){  
	alert("year can't be blank"); 
	return false;  
	  }
else if(vage==null || vage==""){  
	alert("age can't be blank"); 
	return false;  
	  }
else if(vgender==null || vgender==""){  
	alert("gender can't be blank"); 
	return false;  
	}
else if(vbgrp==null || vbgrp==""){  
	alert("blood group can't be blank"); 
	return false;  
	  }
else if(veid==null || veid==""){  
	alert("Email can't be blank"); 
	return false;  
	  }
else if(vnum==null || vnum==""){  
	alert("number can't be blank"); 
	return false;  
	  }
else if(vadr==null || vadr==""){  
	alert("address can't be blank"); 
	return false;  
	  }
}  

</script> 

<style>
input[type=text], select {
  width: 95%;
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
<center><h1 style="color:#cc3300;">Update details of volunteers</h1></center>
<p class="outset"></p>
<center>
<form name="myform" method="post" action="vupdate3.jsp"onsubmit="return validateform()">
<center>  <h2 style="color:#cc3300;"> Details</h2> </center>
  <label for="vid">Volunteer ID:</label>
<input type="hidden" name="vid" value="<%=resultSet.getString("vid") %>">
<input type="text" name="vid" value="<%=resultSet.getString("vid") %>">

<label for="fname"> Name of Volunteer:</label>
<input type="text" name="vname" placeholder="Your name.." value="<%=resultSet.getString("vname") %>" >

 <label for="vfname">Father Name:</label>
<input type="text" name="vfname"  placeholder="Your father name.." value="<%=resultSet.getString("vfname") %>" >

<label for="vcourse">Course:</label>
<select name="vcourse" >
<option> </option>
<option>BCA</option>
<option>BCom</option>
<option>BSc</option>
</select value="<%=resultSet.getString("vcourse") %>" >

<label for="vyear">year:</label>
<select  name="vyear">
<option> </option>
<option>2021</option>
<option>2020</option>
<option>2019</option>
</select value="<%=resultSet.getString("vyear") %>" >

<label for="vage">Age:</label>
<select  name="vage">
<option> </option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
</select  value="<%=resultSet.getString("vage") %>" >

<label for="vgender">Gender:</label>
<select  name="vgender">
<option> </option>
<option>Male</option>
<option>Female</option>
</select  value="<%=resultSet.getString("vgender") %>" >

<label for="vbgrp">Blood Group:</label>
<select name="vbgrp">
<option> </option>
<option>A-</option>
<option>A+</option>
<option>AB-</option>
<option>AB+</option>
<option>B-</option>
<option>B+</option>
<option>O-</option>
<option>O+</option>
</select  value="<%=resultSet.getString("vbgrp") %>" >

<label for="veid">Email ID:</label>
<input type="text" name="veid" placeholder="Your email id.." value="<%=resultSet.getString("veid") %>" >

<label for="vnum">Phone Number:</label>
<input type="text" name="vnum" placeholder="Your phone number.." value="<%=resultSet.getString("vnum") %>" >

 <label for="vadr">Address:</label>
<input type="text" name="vadr" placeholder="Your address.." value="<%=resultSet.getString("vadr") %>" >

<input type="submit" value="submit">

<a href="adminmenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 

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
