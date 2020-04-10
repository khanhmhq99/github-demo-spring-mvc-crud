<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Customer</title>
</head>
<body>
	<div align="center">
		<h2>Edit Employee</h2>
		<form:form action="save" method="post" modelAttribute="employee">
			<table border="0" cellpadding="5">
				<tr>
				<td>ID:</td>
				<td>
					${employee.id}
					<form:hidden path="id"/>
				</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>E-Mail:</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"/></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>