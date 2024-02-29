<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
//session.putValue("fname",fname);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where fname='"+fname+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("fname").equals(fname))
{
	response.sendRedirect("volunteermenu.jsp");
} 
else
{
   response.sendRedirect("login.jsp");

}
}
catch (Exception e) {
e.printStackTrace();
}
%>

    