<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<c:if test="${ not empty errorMessage}">
		<p> ${errorMessage} </p>
	</c:if>
	
	<form action="j_spring_security_check" name="myForm" method="POST">
		<table>
			<tr><td>username: </td><td><input type="text" name="j_username" value=""></td></tr>
			<tr><td>password: </td><td><input type="password" name="j_password"></td></tr>
			<tr><td></td><td><input type="submit" name="submit" value="Get Started"></td></tr>
			<tr><td></td></tr>
		</table>
	</form>
</body>
</html>