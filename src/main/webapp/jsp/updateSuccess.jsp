<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div style="height: 50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<a href="read" class="text-decoration-none">User's List</a>
		</div>
	</div>
	<jsp:include page="header.jsp" />
	<div style="height: 200px" class="my-4 container d-flex flex-column align-items-center justify-content-center">
		<h1 class="fw-bold">Your profile is updated!</h1>
		<p class="mb-0">${msg}</p>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>