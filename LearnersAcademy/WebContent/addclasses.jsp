<%@page import="com.dao.classesdao"%>  
<jsp:useBean id="c" class="com.school.bean.classes"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add classes</title>
</head>
<body>

<form action=classesresult.jsp method=post>
<tr><td>Classes Name:</td><td>  
<input type="text" name="classes_name" ></td></tr>

<input type="submit" value="Add Classes">
</form>



<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>