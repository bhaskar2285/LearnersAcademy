<%@page import="com.dao.subjectdao"%>  
<jsp:useBean id="s" class="com.school.bean.subjects"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String subject_name=request.getParameter("subject_name");
s.setSubject_name(subject_name);
int i=subjectdao.savesubjects(s);
if (i>0)
{out.println("subject added sucessfully");
}else
{
	out.println("subject not added");
}
%>
<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>