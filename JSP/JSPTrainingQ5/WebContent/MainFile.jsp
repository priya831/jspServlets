<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Welcome to JSP Page</h2>
<% int number=0;
  number = Integer.parseInt(request.getParameter("num"));
%>
<% 
if(number<10){ %>
	<jsp:forward page="First.jsp"></jsp:forward>
<% } 
else if(number>10 && number < 99){%>	
	<jsp:forward page="Second.jsp"></jsp:forward>
<% }
else{
%>
	<jsp:forward page="Third.jsp"></jsp:forward>
<% } %>
</body>
</html>