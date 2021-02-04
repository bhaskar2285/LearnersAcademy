<%@page import="com.dao.subjectdao,com.school.bean.subjects,java.util.* "%>
<%@page import= "com.dao.classesdao,com.school.bean.classes" %>
<%@page import= "com.dao.studentsdao,com.school.bean.students" %>
<%@page import= "com.dao.teachersdao,com.school.bean.teachers" %>
<%@page import="com.dao.classreportdao"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="cr" class="com.school.bean.class_report"></jsp:useBean>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action=classreportresult.jsp method=post>

<%
  
List<subjects> list=subjectdao.getallsubjects();

request.setAttribute("list",list);  
%>  
<tr><td>Subjects Name:</td></tr>
<select name="subjectsname">
<c:forEach items="${list}" var="subjectsname">  
<option >${subjectsname.getSubject_name()}</option></c:forEach>
</select>


<%
  
List<classes> classlist=classesdao.getallclasses();

request.setAttribute("classlist",classlist);  
%>  
<tr><td>Classes Name:</td></tr>
<select name="classnames">
<c:forEach items="${classlist}" var="classnames">  
<option >${classnames.getClass_name()}</option></c:forEach>
</select>


<%
  
List<students> studentlist=studentsdao.getallstudents();

request.setAttribute("studentlist",studentlist);  
%>  
<tr><td>Student details</td></tr>
<select name="studentlist">
<c:forEach items="${studentlist}" var="studentlist">  
<option >${studentlist.getStudent_name()}</option>

</c:forEach>
</select>


<%
  
List<teachers> teacherlist=teachersdao.getallteachers();

request.setAttribute("teacherlist",teacherlist);  
%>  
<tr><td>Teacher details</td></tr>
<select name="teacherlist">
<c:forEach items="${teacherlist}" var="teacherlist">  
<option>${teacherlist.getTeacher_name()}</option>

</c:forEach>
</select>
<input type="submit" value="Submit" />
</form>
<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>