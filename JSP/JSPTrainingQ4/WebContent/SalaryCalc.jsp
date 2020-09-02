<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
</head>
<body>

<h2>Here are the values set to the bean using request parameters:</h2>
	<jsp:useBean id="emp" class="com.wipro.EmployeeBean"></jsp:useBean>
	<jsp:setProperty property="empName" name="emp" value='<%= request.getParameter("name") %>'/>
	<jsp:setProperty property="empId" name="emp" param="id"/>
	<h4>Employee Name:</h4><jsp:getProperty property="empName" name="emp"/>
	<h4>Employee ID:</h4><jsp:getProperty property="empId" name="emp"/>
</body>
</html>