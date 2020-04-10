<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>New Employee</title>

	<link rel="stylesheet" type="text/css" href="../views/css/index.css" />
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
</head>

<body>
	<div align="center" class="container">
		<h2 class="header">New Employee</h2>
		<form:form action="save" method="post" modelAttribute="employee">
			<table border="0" cellpadding="5">
				<tr>
					<td>Name:</td>
					<td>
						<form:input path="name" />
					</td>
				</tr>
				<tr>
					<td>E-Mail:</td>
					<td>
						<form:input path="email" />
					</td>
				</tr>
				<tr>
					<td>Address:</td>
					<td>
						<form:input path="address" />
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save" class="btn-save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>

</html>