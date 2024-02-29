<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%
String vname=request.getParameter("vname");
String vfname=request.getParameter("vfname");
String vcourse=request.getParameter("vcourse");
String vyear=request.getParameter("vyear");
String vage=request.getParameter("vage");
String vgender=request.getParameter("vgender");
String vbgrp=request.getParameter("vbgrp");
String veid=request.getParameter("veid");
String vnum=request.getParameter("vnum");
String vadr=request.getParameter("vadr");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into vadd(vname,vfname,vcourse,vyear,vage,vgender,vbgrp,veid,vnum,vadr)values('"+vname+"','"+vfname+"','"+vcourse+"','"+vyear+"','"+vage+"','"+vgender+"','"+vbgrp+"','"+veid+"','"+vnum+"','"+vadr+"')");
response.sendRedirect("vdisplay.jsp");

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
    