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
        <a class="nav-link" href="about">ABOUT US</a>
      </li>
      
      <c:choose>
    <c:when test="${empty loggedInuser}">
    <li class="nav-item">
        <a class="nav-link" href="register">REGISTER</a>
      </li>
    </c:when>
    <c:otherwise>
    <li class="nav-item">
        <a class="nav-link" href="profile">PROFILE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tracksheet">TRACKSHEET</a>
      </li> 
    <c:if test="${role eq 'ADMIN'}">
    <li class="nav-item">
        <a class="nav-link" href="admin">ADMIN</a>
      </li>
    </c:if>
     <li class="nav-item">
        <a class="nav-link" href="logout">LOGOUT</a>
      </li>
    </c:otherwise>
    </c:choose>
      <li class="nav-item"> 
    
    </li> 
    <li class="nav-item">
    
    </li>     
    </ul>
    <!-- <form>
    <input type="hidden">
    <input type="email" class="navbarForm" id="email" name="email" aria-describedby="emailHelp" placeholder="Email">
    <input type="password" class="navbarForm" id="password" name="name" placeholder="Password">
    <button type="button" class="navbarButton">LOGIN</button>
    </form> -->
    
  <c:if test="${!empty loggedInuser}">

</c:if>
  
  <h5 id="date" class="date"></h5>
   <br> 
  <h5 id="time_span" class="time"></h5>
  
  
  
  </div>
</nav>
</div>


<!-- DATE SCRIPT -->
<script>
var d = new Date();
document.getElementById("date").innerHTML = d.toDateString();           
</script>

<!-- TIME SCRIPT -->
<script type="text/javascript">
    
    function updateTime(){
        var currentTime = new Date()
        var hours = currentTime.getHours()
        var minutes = currentTime.getMinutes()
        var secs = currentTime.getSeconds()
        if (minutes < 10){
            minutes = "0" + minutes
        }
        if (secs < 10){
        	secs = "0" + secs
        }
        var t_str = hours + ":" + minutes + ":" + secs + " ";
        if(hours > 11){
            t_str += "PM";
        } else {
            t_str += "AM";
        }
        document.getElementById('time_span').innerHTML = t_str;
    }
    setInterval(updateTime, 1000);
    
</script>

</header>

