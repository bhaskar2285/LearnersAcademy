<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logut Page</title>
</head>
<body>
<h1>thank you and Bye</h1>
<%
out.println("You r successfully logged out");  
session.setAttribute("session","TRUE"); 
String redirectURL = "Login.jsp";
response.sendRedirect(redirectURL);
%>	
</body>
</html>