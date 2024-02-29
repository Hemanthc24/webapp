<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String pid = request.getParameter("pid");
String poname=request.getParameter("poname");
String podes=request.getParameter("podes");
String pospe=request.getParameter("pospe");
String poexp=request.getParameter("poexp");
String ponum=request.getParameter("ponum");
String poeid=request.getParameter("poeid");
String poadr=request.getParameter("poadr");

if(pid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(pid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update padd set pid=?,poname=?,podes=?,pospe=?,poexp=?,ponum=?,poeid=?,poadr=? where pid="+pid;
ps = con.prepareStatement(sql);
ps.setString(1,pid);
ps.setString(2, poname);
ps.setString(3, podes);
ps.setString(4, pospe);
ps.setString(5, poexp);
ps.setString(6, ponum);
ps.setString(7, poeid);
ps.setString(8, poadr);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("podisplay.jsp");
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