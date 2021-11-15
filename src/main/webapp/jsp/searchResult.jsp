<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<p>Back</p>
	<p>Logout</p>
	<h3>Search results</h3>
	<c:forEach var="user" items="${listuser}">
		<div class="card border-primary mb-3" style="max-width: 20rem;">
  			<div class="d-flex flex-row justify-content-between align-items-center 
  			card-body text-primary">
    			<h5 class="my-0 card-title">${user.username}</h5>
    			<a class="btn btn-primary" role="button" href="viewprofile/<c:out value='${user.id}'/>">
    			View Profile</a>
  			</div>
		</div>
	</c:forEach>

</body>
</html>