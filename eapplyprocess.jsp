<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%

String checkValues[]=request.getParameterValues("name");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();
String status=" ";
for(int i=0;i<checkValues.length;i++){
status+=checkValues[i]+" ";
}
int i=st.executeUpdate("insert into eapply(status)values('"+status+"')");
response.sendRedirect("princy.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

    