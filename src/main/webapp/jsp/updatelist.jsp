<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Update</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div style="height: 50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<a href="../read" class="text-decoration-none">List of users</a>
		</div>
	</div>
	<jsp:include page="header.jsp" />
	<div class="m-5 d-flex justify-content-center">
		<div>
			<div style="width: 520px" class="card shadow p-5 d-flex flex-column justify-contect-center">
				<div class="mx-0 text-start">
					<h3 class="mx-0 fw-bold" >Edit Profile</h3>
				</div>
				<form class="m-0" action="../update" method ="post">
				
					<c:forEach var="user" items="${listuser}">
					
						<div class="mb-3">
							<label for="id" class="mx-0 form-label">Id</label>
							<input type="text" class="mx-0 form-control" id="id" name="dispId" value="${user.id}" disabled="disabled"/>
							<input type="hidden"  name="id" value="${user.id}"/>
						</div>
					
						<div class="mb-3">
							<label for="username" class="mx-0 form-label">User Name</label>
							<input type="text" class="mx-0 form-control" id="username" name="username" value="${user.username}" />
						</div>
					
						<div class="mb-3">
							<label for="firstname" class="mx-0 form-label">First Name</label>
							<input type="text" class="mx-0 form-control" id="firstname" name="firstname" value="${user.firstname}" />
						</div>
					
						<div class="mb-3">
							<label for="lastname" class="mx-0 form-label">Last Name</label>
							<input type="text" class="mx-0 form-control" id="lastname" name="lastname" value="${user.lastname}" />
						</div>
						
						<div class="mb-3">
							<label for="email" class="mx-0 form-label">Email</label>
							<input type="text" class="mx-0 form-control" id="email" name="email" value="${user.email}" />
						</div>
					
						<div class="mb-3">
							<label for="password" class="mx-0 form-label">Password</label>
							<input type="text" class="mx-0 form-control" id="password" name="password" value="${user.password}" />
						</div>
					
						<div class="mb-3">
							<label for="country" class="mx-0 form-label">Country</label>
							<input type="text" class="mx-0 form-control" id="country" name="country" value="${user.country}" />
						</div>
					
						<div class="mb-3">
							<label for="city" class="mx-0 form-label">City</label>
							<input type="text" class="mx-0 form-control" id="city" name="city" value="${user.city}" />
						</div>
					
						<div class="mb-3">
							<label for="company" class="mx-0 form-label">Company</label>
							<input type="text" class="mx-0 form-control" id="company" name="company" value="${user.company}" />
						</div>
					
						<div class="mb-3">
							<label for="position" class="mx-0 form-label">Position</label>
							<input type="text" class="mx-0 form-control" id="position" name="position" value="${user.position}" />
						</div>
					
						<div><input class="mx-0 btn btn-primary" type="submit" value="Update" /></div>	
					</c:forEach>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>