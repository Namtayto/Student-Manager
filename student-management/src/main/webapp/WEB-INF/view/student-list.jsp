<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	

	<div align="center">
	
	<form action="showAddStudentPage">
		<input type="submit" value="ADD">
	</form>
	
		<table border="1">
			<thead>
				<tr>
					<td>id</td>
					<td>name</td>
					<td>mobile</td>
					<td>country</td>
				</tr>

			</thead>


			<c:forEach var="student" items="${students}">
				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.mobile}</td>
					<td>${student.country}</td>
					<td><a href="updateStudent?userId=${student.id}">Update</a></td>
					<td><a href="deleteStudent?userId=${student.id}" onclick="if(!(confirm('Do you want to delete this student?'))) return false">Delete</a></td>
				</tr>
				<br />
			</c:forEach>
		</table>

	</div>
</body>
</html>