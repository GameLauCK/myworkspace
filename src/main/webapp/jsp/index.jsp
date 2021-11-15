<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Jobs - Community Portal here</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div style="height: 50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<a href="login" class="text-decoration-none">Login</a>
			<a href="register" class="text-decoration-none">Register</a>
			<a href="read" class="text-decoration-none">User's List</a>
		</div>
	</div>
	<jsp:include page="header.jsp" />	
	<div style="height: 500px; width: auto" class="container-fluid d-flex align-items-center justify-content-around">
		<div style="max-height: 250px; width: 480px">
			<h3 class="fw-bold">Welcome to communicate with professional career and people!</h3>
			<p>Suspendisse arcu tellus, tempor id mauris id, fringilla viverra felis. 
			Cras pulvinar leo vel arcu auctor, quis suscipit diam iaculis. Cras tincidunt 
			pretium elit ac tristique. In mattis vestibulum pellentesque. Aliquam in turpis 
			ultricies, facilisis nisl et, luctus ligula. Vestibulum eu enim laoreet, rutrum 
			leo eu, vehicula orci. In eget cursus eros.</p>
		</div>
		<div style="width: 480px; height: 400px" class="bg-primary">
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>