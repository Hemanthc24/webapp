<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String eid = request.getParameter("eid");
String name=request.getParameter("name");
String date=request.getParameter("date");
String place=request.getParameter("place");
String org=request.getParameter("org");
String nop=request.getParameter("nop");
String nod=request.getParameter("nod");
String guest=request.getParameter("guest");

if(eid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(eid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update eadd set eid=?,name=?,date=?,place=?,org=?,nop=?,nod=?,guest=? where eid="+eid;
ps = con.prepareStatement(sql);
ps.setString(1,eid);
ps.setString(2, name);
ps.setString(3, date);
ps.setString(4, place);
ps.setString(5, org);
ps.setString(6, nop);
ps.setString(7, nod);
ps.setString(8, guest);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("Edisplay.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>