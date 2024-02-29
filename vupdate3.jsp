<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String vid = request.getParameter("vid");
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

if(vid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(vid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update volunteer set vid=?,vname=?,vfname=?,vcourse=?,vyear=?,vage=?,vgender=?,vbgrp=?,veid=?,vnum=?,vadr=? where vid="+vid;
ps = con.prepareStatement(sql);
ps.setString(1,vid);
ps.setString(2,vname);
ps.setString(3, vfname);
ps.setString(4, vcourse);
ps.setString(5, vyear);
ps.setString(6, vage);
ps.setString(7, vgender);
ps.setString(8, vbgrp);
ps.setString(9, veid);
ps.setString(10, vnum);
ps.setString(11, vadr);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("vdisplay.jsp");
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