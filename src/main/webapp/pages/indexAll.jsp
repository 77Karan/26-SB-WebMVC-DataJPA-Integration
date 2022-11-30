<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>Student ID</th>
<th>Student Name</th>
<th>Student Email</th>
<th>Student Age</th>
</tr>
<c:forEach items="${studentAll}" var="student">
<tr>
    <td>${student.studentId}</td>
    <td>${student.studentName}</td>
    <td>${student.studentEmail}</td>
    <td>${student.studentAge}</td>
</tr>
</c:forEach>
</table>
</html>