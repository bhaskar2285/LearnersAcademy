<%@page import="com.dao.subjectdao,com.school.bean.subjects,java.util.* "%>
<%@page import= "com.dao.classreportdao,com.school.bean.class_report" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
List <class_report> list= classreportdao.getallclassreport();
request.setAttribute("list", list);


%>

<table border="1" width="90%">  
<tr><th>Student_name</th><th>Teacher_name</th>  
<th>Subjects_Name</th><th>Classes_name</th></tr>  
<c:forEach items="${list}" var="r">  
<tr><td>${r.getStudent_name()}</td> 
<td>${r.getTeacher_name()}</td><td>${r.getSubjects_name()}</td><td>${r.getClasses_name()}</td>  
</tr>  
</c:forEach>  
</table> 
<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>