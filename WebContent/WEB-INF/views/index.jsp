<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Manager</title>
</head>
<body>
	<div align="center">
		<h1>Employee Manager</h1>
		<form method="get" action="search">
			<input type="text" name="keyword" /> <input type="submit"
				value="Search" />
		</form>
		<h3>
			<a href="new">New Employee</a>
		</h3>
		<table border="1" cellpadding="5">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>E-Mail</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
		</table>
	</div>
</body>
</html>