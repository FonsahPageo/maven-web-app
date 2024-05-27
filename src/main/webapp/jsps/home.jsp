<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TravisTechnologies- Home Page</title>
<link href="images/mytravistechlogo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to bkhgcyfib Travis Tech/underbelle Academy and Web application Project30 automation.</h1>
<h1 align="center">We hope you enjoy your time under TRAVIS ACADEMY.</h1>
<h1 align="center">We are developing and supporting quality Software Solutions to millions of clients globally.
	           We are raising millionaires in IT automation.
                   We are preping engineers for the future,
	We offer Training for DevOps, AWS with Linux and Cloud equipping IT Engineers for best performance.</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
		
</h1>
	
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/mylandmarklogo.png" alt="" width="150">
	</span>
	<span style="font-weight: bold;">
                Travis Technology, 
		Montreal, Canada
		+1 438 928 4597,
		chamberlainaws@gmail.com
		<br>
		<a href="mailto: chamberlainaws@gmail.com">Mail to Travis Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center> Travis Technologies - Consultant, Training and Software Development</p>
<p align=center><small>Copyrights 2021 by <a href="http://travistech.com/">Travis Technologies</a> </small></p>

</body>
</html>
