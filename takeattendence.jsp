
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
<script>  
function validateform(){  
var date=document.myform.date.value;  
var time=document.myform.time.value;  

if (date==null || date==""){  
  alert("date can't be blank");  
  return false;  
}
else if(time==null || time==""){  
	  alert("time can't be blank");  
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
       width:30%;
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
  text-align:center;
}

input[type=submit]:hover {
  background-color: #000080;
}


</style>
<body bgcolor="#e6f7ff">
<center>
<h1  style="color:#cc3300;"><u>ATTENDENCE LIST </u></h1>
<p class="outset"></p>

</center>

<div>
  <center>
  <form  name="myform" method="post" action="attendenceprocess.jsp"onsubmit="return validateform()">
  <table>
    <tr><center>  <h2 style="color:#cc3300;"> Take attendence</h2> </center></tr>
    
    <tr><td  align=""  colspan="">Date:</td>
    <td><input type="text" name="date" placeholder="Event date.." ></td></tr>
     
    <tr><td>time:</td>
     <td><input type="text" name="time" placeholder=" Event time.." ></td></tr>
       
    
     <tr><td colspan="4"><center> <h2 style="color:#cc3300;">Name Of Volunteers</h2></center></td></tr>
     <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from volunteer";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
    <tr><td><td><input type="checkbox" name="vname" value="<%=resultSet.getString("vname") %> "><%=resultSet.getString("vname") %></td>  </td></tr> 
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
       <input  type="submit" value="Submit">
     
   <a href="adminmenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
  </form>
</center>  
</div>
</body>
</html>


