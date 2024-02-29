<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
String date=request.getParameter("date");
String place=request.getParameter("place");
String checkValues[]=request.getParameterValues("vname");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st=conn.createStatement();
String assign=" ";
for(int i=0;i<checkValues.length;i++){
assign+=checkValues[i]+" ";
}
int i=st.executeUpdate("insert into assignv(name,date,place,assign)values('"+name+"','"+date+"','"+place+"','"+assign+"')");
response.sendRedirect("adminmenu.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
