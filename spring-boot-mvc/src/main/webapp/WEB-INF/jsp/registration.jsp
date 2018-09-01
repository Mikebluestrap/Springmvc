<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Registration</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Dropdown </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<form:form class="row" modelAttribute="employee" method="POST">
			<spring:bind path="email">
				<div
					class="form-group col-lg-4 col-md-6">
					<label for="employeeEmail">Email address</label>
					<div class="inputGroupContainer">
						<form:input path="email"
							class="form-control ${status.error ? 'is-invalid' : ''}"
							id="employeeEmail" placeholder="name@example.com"
							 />
						<div class="invalid-feedback">
							<form:errors path="email" />
						</div>
					</div>
				</div>
			</spring:bind>

			<spring:bind path="employeeName">
				<div
					class="form-group col-lg-4 col-md-6 ">
					<label for="employeeName">Employee Name</label>
					<div class="inputGroupContainer">
						<form:input path="employeeName"
							class="form-control ${status.error ? 'is-invalid' : ''}"
							id="employeeName" placeholder="John Doe"  />
						<div class="invalid-feedback">
							<form:errors path="employeeName" />
						</div>
					</div>
				</div>


			</spring:bind>

			<spring:bind path="salary">
				<div
					class="form-group col-lg-4 col-md-6 ">
					<label for="employeeSalary">Employee Salary</label>
					<div class="inputGroupContainer">
						<form:input path="salary"
							class="form-control ${status.error ? 'is-invalid' : ''}"
							id="employeeSalary"  />
						<div class="invalid-feedback">
							<form:errors path="salary" />
						</div>
					</div>
				</div>

			</spring:bind>

			<spring:bind path="employeeAddress">
				<div
					class="form-group col-lg-4 col-md-6 ">
					<label for="employeeAddress">Address</label>
					<div class="inputGroupContainer">
						<form:input path="employeeAddress"
							class="form-control ${status.error ? 'is-invalid' : ''}"
							id="employeeAddress" placeholder="Edison, New Jersey"
							 />
						<div class="invalid-feedback">
							<form:errors path="employeeAddress" />
						</div>
					</div>
				</div>

			</spring:bind>

			<spring:bind path="phone">
				<div
					class="form-group col-lg-4 col-md-6 ">
					<label for="employeePhone">Phone</label>
					<div class="inputGroupContainer">
						<form:input path="phone"
							class="form-control ${status.error ? 'is-invalid' : ''}"
							id="employeePhone" placeholder="9848022338" />
						<div class="invalid-feedback">
							<form:errors path="phone" />
						</div>
					</div>
				</div>
			</spring:bind>
			<form:hidden path="employeeId" />
			<br>
			<div class="col-sm-12">
				<button type="submit" class="btn btn-primary row">Register</button>
			</div>
		</form:form>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>