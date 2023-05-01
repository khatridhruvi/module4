<%@page isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action="adduser" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">First Name</label> 
					<input type="text" class="form-control" name="fname"	id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Last Name</label> 
					<input type="text" class="form-control" name="lname"	id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Contact</label> 
				<input type="text" class="form-control" name="contact" id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Gender</label> 
				<input type="text" class="form-control" name="gender" id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email address</label> 
				<input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" class="form-control" name="password"	id="exampleInputPassword1">
			</div>

			<button type="submit" class="btn btn-primary" name="action" value="register">Submit</button>
		</form>

	</div>
	</body>
	</html>
	