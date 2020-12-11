<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
<div class="mb">
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="home"><span class="navbarMain">TrackSheet</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="home">HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register">REGISTER</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="profile">PROFILE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tracksheet">TRACKSHEET</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="admin">ADMIN</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout">LOGOUT</a>
      </li>    
    </ul>
    <form>
    <input type="hidden">
    <input type="email" class="navbarForm" id="email" name="email" aria-describedby="emailHelp" placeholder="Email">
    <input type="password" class="navbarForm" id="password" name="name" placeholder="Password">
    <button type="button" class="navbarButton">LOGIN</button>
    </form>
    
   <%--  <c:choose>
    <c:when test="${empty loggedInuser}">
    </c:when>
    <c:otherwise>
    <c:if test="${role eq 'ADMIN'}">
    </c:if>
    </c:otherwise>
    </c:choose> --%>
    
    
    
    
  </div>
</nav>
</div>
</header>
