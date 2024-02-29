
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String eid= request.getParameter("eid");
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
<style>
input[type=lable], select {
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
<h1  style="color:#cc3300;"><u>Assign Volunteers For The Event</u></h1>
<p class="outset"></p>

</center>

<div>
  <center>
  <form  method="post" action="assignv3.jsp">
  <table>
    <tr><center>  <h2 style="color:#cc3300;"> Details</h2> </center></tr>
    
    <tr><td  align=""  colspan="">Name Of Event:</td>
    <td><input value="<%=resultSet.getString("name") %>"/></td></tr>
     
    <tr><td>Date:</td>
     <td><input value="<%=resultSet.getString("date") %>"/></td></tr>
      
      <tr><td>Place of events:</td>
     <td><input value="<%=resultSet.getString("place") %>"/></td></tr>       
    <p class="outset"></p>
     <tr><td colspan="4"><center> <h2 style="color:#cc3300;">Name Of Volunteers</h2></center></td></tr>
     <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="select * from volunteer";
resultSet = statement.executeQuery(sql1);
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
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</body>
</html>


