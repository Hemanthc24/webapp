<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
String date=request.getParameter("date");
String place=request.getParameter("place");
String org=request.getParameter("org");
String nop=request.getParameter("nop");
String nod=request.getParameter("nod");
String guest=request.getParameter("guest");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into eadd(name,date,place,org,nop,nod,guest)values('"+name+"','"+date+"','"+place+"','"+org+"','"+nop+"','"+nod+"','"+guest+"')");
response.sendRedirect("Edisplay.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
<a href="adminmenu.jsp">back</a>
</html>
    