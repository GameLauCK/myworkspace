<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Read</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div style="height:50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<a href="index" class="text-decoration-none">Home</a>
		</div>
	</div>
	<jsp:include page="header.jsp" />
	<div style="height:50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<h3>User's List</h3>
		</div>
	</div>
	<table style="width:900px" class="table table-bordered" border="1">
		<tr>
			<th>User Name</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Password</th>	
			<th>Country</th>
			<th>City</th>
			<th>Company</th>
			<th>Position</th>
			<th>Action</th>
		</tr>
		<c:forEach var="user" items="${listuser}">
			<tr>
				<td>${user.username}</td>
				<td>${user.firstname}</td>
				<td>${user.lastname}</td>
				<td>${user.email}</td>
				<td>${user.password}</td>
				<td>${user.country}</td>
				<td>${user.city}</td>
				<td>${user.company}</td>
				<td>${user.position}</td>
				<td><a class="text-decoration-none" href="update/<c:out value='${user.id}'/>">Update</a><br>
				<a class="text-decoration-none" href="delete/<c:out value='${user.id}'/>">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="footer.jsp" />
</body>
</html>