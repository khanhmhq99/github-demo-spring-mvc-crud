<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>New Customer</title>
<link rel="stylesheet" type="text/css" href="../views/css/index.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

<style type="text/css">
.error {
	color: Red;
	padding-left: 10px;
}
</style>
</head>

<body>
	<div align="center" class="container">
		<h2 class="header">Edit Employee</h2>
		<form:form action="save" method="post" modelAttribute="employee" id="update">
			<table border="0" cellpadding="5" class="table">
				<tr>
					<td>ID:</td>
					<td>${employee.employeeID}<form:hidden path="employeeID" />
					</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><form:input path="name" id="name"/></td>
				</tr>
				<tr>
					<td>E-Mail:</td>
					<td><form:input path="email" id="email"/></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" id="address"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"
						class="btn-save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							$("#update")
									.validate(
											{
												rules : {
													"name" : {
														required : true,
														minlength : 6,
														maxlength : 40
													},
													"address" : {
														required : true
													},
													"email" : {
														email : true,
														required : true
													}
												},
												messages : {
													"name" : {
														required : "Name is required!",
														minlength : "username must be at least 6 characters long"
													},
													"address" : {
														required : "Please enter a address"
													},
													"email" : {
														email : "Please enter a true email",
														required : "Please enter a email"
													}
												},
												submitHandler : function(form) {
													// form.submit(); // <-- this is default
													alert('valid form');
												}
											});

						});
	</script>
</body>

</html>