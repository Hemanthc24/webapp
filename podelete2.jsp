<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pid=request.getParameter("pid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM padd WHERE pid="+pid);
response.sendRedirect("podisplay.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
<body bgcolor="#e6f7ff">
<a href="podelete1.jsp"><button type="button" class="return">Return</button></a></body></html>