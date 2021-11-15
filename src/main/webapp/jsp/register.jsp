<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div style="height: 50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<a href="index" class="text-decoration-none">Home</a>
		</div>
	</div>
	<jsp:include page="header.jsp" />
	<div class="m-5 d-flex justify-content-center">
		<div>
			<div style="width: 520px" class="card shadow p-5 d-flex flex-column justify-contect-center">
				<div class="mx-0 text-start">
					<h3 class="mx-0 fw-bold" >Sign in</h3>
					<p class="mx-0">Join into our community here.</p>
				</div>
				<form:form class="m-0" id="regForm" modelAttribute="user" action="registerProcess"
					method="post">
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="Username" path="username" name="username" id="username" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="First Name" path="firstname" name="firstname" id="firstname" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="Last Name" path="lastname" name="lastname" id="lastname" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="Email" path="email" name="email" id="email" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:password class="m-0 form-control" placeholder="Password" path="password" name="password" id="password" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="Country" path="country" name="country" id="country" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="City" path="city" name="city" id="city" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="Company" path="company" name="company" id="company" />
					</div>
					<div style="width:400px" class="mx-0 my-3">
						<form:input class="m-0 form-control" placeholder="Position" path="position" name="position" id="position" />
					</div>
					<div class="mx-0 my-0">
						<form:button class="m-0 btn btn-primary" id="register" name="register">Submit</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>