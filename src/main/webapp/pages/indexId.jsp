<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>StudentId</th>
<th>StudentName</th>
<th>StudentEmail</th>
<th>StudentAge</th>
</tr>

<tr>
<td>${getById.studentId}</td>
<td>${getById.studentName}</td>
<td>${getById.studentEmail}</td>
<td>${getById.studentAge}</td>
</tr>


</table>
</body>
</html>