<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%
String poname=request.getParameter("poname");
String podes=request.getParameter("podes");
String pospe=request.getParameter("pospe");
String poexp=request.getParameter("poexp");
String ponum=request.getParameter("ponum");
String poeid=request.getParameter("poeid");
String poadr=request.getParameter("poadr");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into padd(poname,podes,pospe,poexp,ponum,poeid,poadr)values('"+poname+"','"+podes+"','"+pospe+"','"+poexp+"','"+ponum+"','"+poeid+"','"+poadr+"')");
response.sendRedirect("podisplay.jsp");

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
    