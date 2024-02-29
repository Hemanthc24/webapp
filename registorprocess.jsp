<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String password=request.getParameter("password");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(fname,lname,email,password)values('"+fname+"','"+lname+"','"+email+"','"+password+"')");
response.sendRedirect("welcome.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
