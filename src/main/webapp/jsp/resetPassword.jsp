<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password - Set up your password</title>
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
					<h3 class="mx-0 fw-bold" >Reset Password</h3>
					<h3 class="mx-0 fw-bold" >Step 2</h3>
					<p class="mx-0 mb-1">Reset password here.</p>
				</div>
				<form class="mx-0" id="emailForm" action="checkedReset" method="post">
						<input type="hidden" name="email" value="${email}"/>
						<div class="mx-0 mt-2 mb-3">
							<input type="password" class="m-0 form-control" placeholder="Password" id="password" name="password"/>
						</div>
						<div class="mx-0 mt-2 mb-3">
							<button class="m-0 btn btn-primary" id="validateEmail" name="validateEmail">Enter</button>
						</div>
						<p class="m-0" style="font-style: italic; color: red;">${message}</p>	
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>