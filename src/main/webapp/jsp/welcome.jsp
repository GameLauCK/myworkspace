<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style><%@include file="/WEB-INF/css/styles.css"%></style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div style="height: 50px" class="container d-flex justify-content-center">
		<div class="align-self-center">
			<a href="index" class="my-0 text-decoration-none">Logout</a>
			<a href="viewprofile/<c:out value='${id}'/>" class="my-0 text-decoration-none">View Profile</a>	
		</div>
    	<form id="searchForm" action="searchResult" method="post">
    	<div class="input-group mb-3">
		  	<input style="width:200px" type="text" id="search" class="form-control" name="searchValue" placeholder="Enter text here" 
		  	aria-label="Recipient's username" aria-describedby="button-addon2">
		  	<button class="btn btn-outline-primary" type="submit" id="button-addon2"><i class="fa fa-search"></i></button>
		</div>
		</form>
	</div>
	<jsp:include page="header.jsp" />
	<div class="mt-4 d-flex justify-content-center">
		<div class="col-3">		
			<div class="shadow mb-4 card">
				<div class="my-0 pt-4 pb-2 d-flex flex-column align-items-center">
					<div style="height: 100px; width:100px" class="bg-primary rounded-circle">
					</div>
					<p class="my-0 pt-4 pb-1 text-center fs-5 fw-bold">${username}</p>
					<p class="my-0 pb-1 text-center">${position}</p>
				</div>
				<button type="button" class="btn btn-primary">Friends</button>
				<button type="button" class="btn btn-primary">Communities</button>
			</div>
			<div class="shadow mb-4 card">
				<button type="button" class="btn btn-primary">Events</button>
				<button type="button" class="btn btn-primary">Finding a Job</button>
				<button type="button" class="btn btn-primary">Guide information</button>
			</div>
			<div>
				<div class="d-flex justify-content-start">
					<p style="font-size:14px">Privacy Policy</p>
					<p style="font-size:14px">Terms &amp; Conditions</p>
				</div>
				<div>
					<p style="font-size:14px">&copy; Copyright 2021 by Lau Cheng Kai. All Rights Reserved.</p>
				</div>
			</div>
		</div>
		<div class="mx-4 col-5">
			<div class="mb-4 card shadow">
				<div class="m-4">
					<p class="mx-0">Post here</p>
					<div class="input-group">
		  				<textarea rows="6" class="form-control" aria-label="With textarea"></textarea>
					</div>
					<button class="mx-0 mt-3 mb-0 btn btn-primary">Post</button>
				</div>
			</div>
			<div class="mb-4 card shadow">
				<div class="card-body">
					<h5 class="card-title">Pei Yang</h5>
					<h6 class="card-subtitle mb-2 text-muted">posted 4 hours ago</h6>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis suscipit augue, vitae bibendum quam. 
					Integer vel magna a urna consequat placerat et finibus purus. Maecenas consectetur volutpat sem, vel faucibus ipsum. Suspendisse scelerisque bibendum 
					metus at venenatis. Praesent vel ligula eget erat fringilla facilisis. Pellentesque eu leo vel sapien finibus viverra et sit amet odio.</p>
					<button class="btn btn-primary">Like</button>
					<button class="btn btn-primary">Share</button>
					<div class="border border-primary mx-2 my-3"></div>
					
						<input type="email" class="ms-0 form-control" placeholder="Your comments">
    					<button class="m-2 btn btn-primary">Post</button>
					
				</div>
			</div>
			<div class="mb-4 card shadow">
			  	<div class="card-body">
				    <h5 class="card-title">Marcus</h5>
				    <h6 class="card-subtitle mb-2 text-muted">posted in 30-10-2021</h6> 
				    <p class="card-text">Pellentesque pulvinar ante porta ex vulputate, vitae luctus elit rhoncus. 
				    Etiam mollis placerat nunc at consectetur. Nam posuere, purus vitae porta tristique, justo sapien 
				    rhoncus leo, eget gravida turpis erat ac purus.</p>
				    <div style="height: 120px" class="mx-2 my-2 bg-info"></div>
				    <button class="btn btn-primary">Like</button>
				    <button class="btn btn-primary">Share</button>
				    <div class="border border-primary mx-2 my-3"></div>
					
						<input type="email" class="ms-0 form-control" placeholder="Your comments">
    					<button class="m-2 btn btn-primary">Post</button>
					
			  	</div>
			</div>
		</div>
	<div class="col-3">
		<div class="mb-4 card shadow">
			<div style="height: 40px; border-radius:3px 3px 0px 0px" class="bg-primary d-flex align-items-center">
					<p class="my-0 text-light fw-bold">Friends</p>
			</div>
			<div>
				<div class="d-flex flex-row align-items-center">
					<div style="height: 60px; width: 60px" class="m-3 bg-primary rounded-circle"></div>
					<p class="my-1">LimKee</p>
				</div>
				<div class="d-flex flex-row align-items-center">
					<div style="height: 60px; width: 60px" class="m-3 bg-primary rounded-circle"></div>
					<p class="my-1">PW</p>
				</div>
			</div>
		</div>
		<div class="mb-4 card shadow">
			<div style="height: 40px; border-radius:3px 3px 0px 0px" class="bg-primary d-flex align-items-center">
					<p class="my-0 text-light fw-bold">Communities</p>
			</div>
				<div>
					<div class="d-flex flex-row align-items-center">
						<div style="height: 60px; width: 60px" class="m-3 bg-primary rounded-circle"></div>
						<p class="my-1">LimKee</p>
					</div>
					<div class="d-flex flex-row align-items-center">
						<div style="height: 60px; width: 60px" class="m-3 bg-primary rounded-circle"></div>
						<p class="my-1">PW</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>