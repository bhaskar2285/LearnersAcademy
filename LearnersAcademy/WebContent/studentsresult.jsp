<%@page import="com.dao.studentsdao"%>  
<jsp:useBean id="st" class="com.school.bean.students"></jsp:useBean> 
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
String student_name=request.getParameter("student_name");
st.setStudent_name(student_name);
int i=studentsdao.savestudents(st);
if (i>0)
{out.println("Students added sucessfully");
}else
{
	out.println("Students not added");
}
%>
<td><a href=school.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>