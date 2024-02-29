<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
String vname=request.getParameter("vname");
String course=request.getParameter("course");
String date=request.getParameter("date");
String inform=request.getParameter("inform");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into pidea(id,vname,course,date,inform)values('"+id+"','"+vname+"','"+course+"','"+date+"','"+inform+"')");
response.sendRedirect("volunteermenu.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
<a href="volunteermenu.jsp">back</a>
</html>
    