<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="static/css/mdb.css">
 <link rel="stylesheet" type="text/css" href="static/css/styles.css">
<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body style="background: url(static/images/bg2.jpg) no-repeat center fixed; background-size: cover;">

<jsp:include page="components/header.jsp"/>

<div class="">

<div class="container">
	<div class="homeCard">
	<div class="row">
	  <div class="col"></div>
	  <div class="col">
	  <div class="card text-center bg-dark" style="width: 25rem;">
	  <div class="card-body">
	
	    <h2 class="card-title" style="font-weight: bold;">${msg}</h2>
	    <hr style="height:3px; border-width:0; color: black; background-color:black">
	    
	    <form:form action="register" modelAttribute="user" method="post">
	<h3 class="text-danger">${_error}</h3>
	<div class="form-group">
		<label for="fName">First Name</label>
		<form:input path="fName"  class="form-control" placeholder="First Name"/>
		<form:errors path="fName" class="text-danger text-center"/>
	</div>
	<div class="form-group">
		<label for="lName">Last Name</label>
		<form:input path="lName"  class="form-control" placeholder="Last Name"/>
		<form:errors path="lName" class="text-danger text-center"/>
	</div>
	<div class="form-group">
		<label for="email">Email</label>
		<form:input path="email" id="e-mail" type="email" class="form-control" placeholder="Email"/>
		<form:errors path="email" class="text-danger text-center"/>
	</div>
	<div class="form-group">
		<label for="password">Password</label>
		<form:input path="password" type="password" id="pass" class="form-control" placeholder="Password"/>
		<form:errors path="password"  class="text-danger text-center"/>
	</div>
	<div class="form-group">
		<label for="password2">Re-Enter Password</label>
		<form:input path="password2" id="pass2" type="password" class="form-control" placeholder="Re-enter Password"/>
		<form:errors path="password2" class="text-danger text-center"/>
	</div>
	<div class="">
	
		<button type="submit" class="navbarButton2" id="submit-register"><i class="fa fa-user-md"></i> Register</button>
	</div>               
</form:form>
	    
		
	  </div>
	</div>
	</div>
	  <div class="col"></div>
	</div>
	</div>
</div>


</div>

</body>
</html>