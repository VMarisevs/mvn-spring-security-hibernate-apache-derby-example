<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
</head>
<body>
	<h1>Hello!!!</h1>
	
	<p> Welcome <sec:authentication property="name"/>
	
	<sec:authorize ifAnyGranted="ROLE_ADMIN">
		<h1>ADMIN!</h1>
	</sec:authorize>
</body>
</html>