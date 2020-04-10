<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/index.css">
</head>

<body>
	<section class="header-navigation">
		<div class="container-fluid">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="">Manage Employee</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item disabled"><a class="nav-link" href="">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item active"><a class="nav-link" href="">Employee</a>
						</li>
					</ul>
					<!-- Form Search -->
					<form class="form-inline my-2 my-lg-0" method="get" action="search">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search" name="keyword">
							<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>
			</nav>
		</div>
	</section>
	<section class="body">
		<div class="container-fluid">
			<div class="row">
				<table class="table table-striped">
					<thead class="thead-primary">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Address</th>
							<th scope="col">Update</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${result}" var="employee">
							<tr>
								<td>${employee.employeeID}</td>
								<td>${employee.name}</td>
								<td>${employee.email}</td>
								<td>${employee.address}</td>
								<td><a href="#" class="text-warning">Update</a></td>
								<td><a href="delete?id=${employee.employeeID}"
									class="text-danger">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<a href="new" class="text-success">Create</a>
		</div>
	</section>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous">
	
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous">
	
</script>

</html>