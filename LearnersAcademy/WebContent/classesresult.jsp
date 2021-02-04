<%@page import="com.dao.classesdao"%>  
<jsp:useBean id="c" class="com.school.bean.classes"></jsp:useBean>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Classes</title>
</head>
<body>

<%
String classes_name=request.getParameter("classes_name");
c.setClass_name(classes_name);


int i=classesdao.saveclasses(c);
if (i>0)
{out.println("classes added sucessfully");
}else
{
	out.println("classes not added");
}
%>

<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>