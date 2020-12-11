<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:if test="${empty role or role ==null}">
	<c:redirect url="/login?error=Unauthorised Access for protected resource"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PROFILE</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="static/css/mdb.css">





<link rel="stylesheet" type="text/css" href="static/css/styles.css">


</head>
<body style="background: url(static/images/bg7.jpg) no-repeat center fixed; background-size: cover;">
<!-- HEADER -->
<jsp:include page="components/header.jsp"/>
<!-- HEADER -->

<div class="container">
  <div class="row">
    <div class="col-sm-4">
    
    <!-- Card Regular -->
<div class="card card-cascade mt-5">

  <!-- Card image -->
  <div class="view view-cascade overlay">
    <span class="rounded-circle"><img class="card-img-top rounded-circle" src="static/images/pic1.jpg" alt="Card image cap"></span>
    <a>
      <!-- <div class="mask rgba-white-slight"></div> -->
    </a>
  </div>

  <!-- Card content -->
  <div class="card-body card-body-cascade text-center">

    <!-- Title -->
    <h4 class="card-title"><strong>${user_account.fName} ${user_account.lName}</strong></h4>
    <!-- Subtitle -->
    <h6 class="font-weight-bold indigo-text py-2">${user_account.email}</h6>
    <!-- Text -->
    <p class="card-text">
    </p>

  </div>

</div>
<!-- Card Regular -->
    
    </div>
    <div class="col-sm-8">
    <div class="container text-center mt-5">
	<h1>PROFILE</h1>
	<br>
	<h2>${msg}</h2>
		<table class="table table-success text-center">
			<tr>
				<th>ITEM</th>
				<th>DETAILS</th>
			</tr>
			<tr>
				<td>FIRST NAME</td>
				<td>${user_account.fName}</td>
			</tr>
			<tr>
				<td>LAST NAME</td>
				<td>${user_account.lName}</td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td>${user_account.email}</td>
			</tr>
		</table>
	</div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-8"><a href="tracksheet#input/" ><span class="tsnavhead" style="text-decoration: underline; font-size: 50px;">INPUTS</span></a></div>
  </div>
  </div>


	
</body>
</html>