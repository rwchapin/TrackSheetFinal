<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="static/css/mdb.css">
 <link rel="stylesheet" type="text/css" href="static/css/styles.css">
<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body style="background: url(static/images/bg1.jpg) no-repeat center fixed; background-size: cover;">

<!-- <video autoplay muted loop id="myVideo">
  <source src="static/images/mbg1.mp4" type="video/mp4">
</video> -->

<jsp:include page="components/header.jsp"/>

<c:if test="${empty loggedInuser}">
<div class="container">

	<div class="homeCard">
	<div class="row">
	  <div class="col"></div>
	  <div class="col">
	  <div class="card text-center bg-dark" style="width: 25rem;">
	  <div class="card-body">
	  	<h2 class="card-title" style="font-weight: bold;">Welcome to TrackSheet</h2>
	  	<hr style="height:3px; border-width:0; color: black; background-color: #00a3e5">
	    <h4 class="card-title">Please Login</h4>
	    <form action="login" method="post">
	  <div class="form-group">
	    <!-- <label for="exampleInputEmail1">Email</label> -->
	    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Password</label>
	    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
	  </div>
	  <button type="submit" class="navbarButton">LOGIN</button>
	</form>
		<hr style="height:3px; border-width:0; color: black; background-color: #00a3e5; margin: 20px 0;">
	    <h4 class="card-text">If You Don't Have An Account Please</h4>
	    <a href="register" ><button type="button" class="navbarButton">REGISTER</button></a>
	  </div>
	</div>
	</div>
	  <div class="col"></div>
	</div>
	</div>
</div> 
  </c:if>
  
  
  
    
</body>
</html>