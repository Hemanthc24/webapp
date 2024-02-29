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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from padd where pid="+pid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){  
var poname=document.myform.poname.value;  
var podes=document.myform.podes.value; 
var pospe=document.myform.pospe.value; 
var poexp=document.myform.poexp.value; 
var ponum=document.myform.ponum.value; 
var poeid=document.myform.poeid.value; 
var poadr=document.myform.poadr.value; 

if (poname==null || poname==""){  
  alert("Name can't be blank");  
  return false;  
}
else if(podes==null || podes==""){  
	  alert("designation  can't be blank");  
	  return false;  
	  }
else if(pospe==null || pospe==""){  
	 alert("specialized can't be blank"); 
	 return false;  
	  }
else if(poexp==null || poexp==""){  
	alert("experience can't be blank"); 
	return false;  
	  }
else if(ponum==null || ponum==""){  
	alert("number can't be blank"); 
	return false;  
	  }
else if(poeid==null || poeid==""){  
	alert("email can't be blank"); 
	return false;  
	  }
else if(poadr==null || poadr==""){  
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
<center><h1 style="color:red;">DETAILS OF PROGRAM OFFICERS</h1></center>
<p class="outset"></p>
<center>
<form  name="myform"method="post" action="poupdate3.jsp" onsubmit="return validateform()">
<center>  <h2 style="color:#cc3300;"> Details</h2> </center>
<label for="pid"> Volunteer Id:</label>
<input type="hidden" name="pid" value="<%=resultSet.getString("pid") %>">
<input type="text" name="pid" value="<%=resultSet.getString("pid") %>">

 <label for="poname"> Name of Faculty:</label>
<input type="text" name="poname" placeholder="Your name.." value="<%=resultSet.getString("poname") %>">

<label for="podes">Designation:</label>
<input type="text" name="podes" placeholder="Your designation.." value="<%=resultSet.getString("podes") %>" >

<label for="pospe">Subject Specialized:</label>
<input type="text" name="pospe" placeholder="Specialized in .." value="<%=resultSet.getString("pospe") %>" >

 <label for="poexp">year of experience:</label>
<input type="text" name="poexp" placeholder="Your experience .."  value="<%=resultSet.getString("poexp") %>" >

<label for="ponum">Phone Number:</label>
<input type="text" name="ponum" placeholder="Your Number.."  value="<%=resultSet.getString("ponum") %>">

<label for="poeid">Email ID:</label>
<input type="text" name="poeid" placeholder="Your email.." value="<%=resultSet.getString("poeid") %>" >

<label for="poadr">Address:</label>
<input type="text" name="poadr" placeholder="Your address.."   value="<%=resultSet.getString("poadr") %>" >

<input type="submit" value="submit">

<a href="poupdate1.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
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
