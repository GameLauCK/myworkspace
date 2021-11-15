<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
					<h3 class="mx-0 fw-bold" >Login</h3>
					<p class="mx-0">Use your own account.</p>
				</div>
				<form:form class="mx-0" id="loginForm" modelAttribute="login" action="loginProcess"
					method="post">
						<div style="width:400px" class="mx-0 my-3">
							<form:input class="m-0 form-control" placeholder="Email" path="email" name="email" id="email" />
						</div>
						<div style="width:400px" class="mx-0 my-3">
							<form:password class="m-0 form-control" placeholder="Password" path="password" name="password"
							id="password" />
						</div>
						<p class="mx-0 my-3" style="font-style: italic; color: red;">${message}</p>
						<div class="mx-0 my-0">
							<form:button class="m-0 btn btn-primary" id="login" name="login">Login</form:button>
						</div>
				</form:form>	
				<a class="mx-0" href="validateEmail">Forget Password?</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>