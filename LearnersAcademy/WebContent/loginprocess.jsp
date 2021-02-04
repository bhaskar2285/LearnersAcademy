<%@page import="com.dao.logindao"%>  
<jsp:useBean id="obj" class="com.school.bean.login"></jsp:useBean>  
  
<jsp:setProperty property="*" name="obj"/> <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login process</title>
</head>
<body>
 
  
<%  
boolean status=logindao.validatecredentials(obj);  
if(status){  

out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
String redirectURL = "school.jsp";
response.sendRedirect(redirectURL);
}  
else  
{  
out.print("Sorry, email or password error");  
}
%>  
<jsp:include page="Login.jsp"></jsp:include>  
 
</body>
</html>