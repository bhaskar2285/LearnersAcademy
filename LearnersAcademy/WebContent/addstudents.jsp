<%@page import="com.dao.studentsdao"%>  
<jsp:useBean id="st" class="com.school.bean.students"></jsp:useBean>  
<jsp:setProperty property="*" name="st"/>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add teachers</title>
</head>
<body>
<form action=studentsresult.jsp method=post>


<tr><td>Students Name:</td><td>
<input type="text" name="student_name" ></td></tr>

<input type="submit" value="Add Students">
</form>
<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>