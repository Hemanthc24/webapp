<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%
String date=request.getParameter("date");
String time=request.getParameter("time");
String checkValues[]=request.getParameterValues("vname");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();
String attendence=" ";
for(int i=0;i<checkValues.length;i++){
attendence+=checkValues[i]+" ";
}
int i=st.executeUpdate("insert into attendence(date,time,attendence)values('"+date+"','"+time+"','"+attendence+"')");
response.sendRedirect("adminmenu.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

    