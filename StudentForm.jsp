<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="save" method="post">
<table>
<tr>
<td>FirstName</td><td><input type="text" value="${student.firstName}" name="firstName"/></td></tr>
<tr>
<tr>
<td>LastName</td><td><input type="text" value="${student.lastName}" name="lastName"/></td></tr>
<tr>
<tr>
<td>country</td><td><input type="text" value="${student.country}" name="country"/></td></tr>
<tr>
<td colspan="2"><input type="submit"/></td></tr>

</table>
</form>
</body>
</html>