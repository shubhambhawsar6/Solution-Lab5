<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table><tr><td><a href="addStudent">Add a new Student</a></td></tr></table>
<table border="1">
<thead>
<tr><th>firstName</th><th>lastName</th><th>country</th><th>Action</th></tr>
</thead>
<tbody>
<c:forEach items="${studentList}" var="student">
<tr><td>${student.firstName}</td><td>${student.lastName}</td><td>${student.country}</td></tr>
</c:forEach>
</tbody>
</table>
</body>
</html>