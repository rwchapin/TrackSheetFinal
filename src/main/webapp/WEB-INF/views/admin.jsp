<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:if test="${empty role or role ==null}">
	<c:redirect url="/login?error=Unauthorised Access for protected resource"/>
</c:if>
<c:if test="${role != 'DBA' and role != 'ADMIN'}">
	<c:redirect url="/profile?error=Access Denied"/>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="static/css/styles.css">
 
<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<!-- font awesome -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="static/css/styles.css">
</head>
<!-- END HEAD -->


<!-- BODY -->
<body style="background: url(static/images/bg4.jpg) no-repeat center fixed; background-size: cover;">
	<!-- HEADER -->
	<jsp:include page="components/header.jsp"/>
	<!-- END HEADER -->
	<br>
<!-- MAIN CONTAINER -->
<div class="container">
	<div class="homeCard">
		<div class="row">
			<!-- EMPTY CONTAINER -->
			<div class="col"></div>
			<!-- END EMPTY CONTAINER -->
			<div class="col">
				<div class="card text-center bg-dark" style="width: 45rem;">
					<div class="card-body">
						<div class="text-center ">
							<h1>${msg}</h1>
							<h4>List of Users</h4>
						<!-- ADMIN TABLE -->
							<table class="table">
								<tr class="tableAdmin">
									<th>#</th>
									<th>Name</th>
									<th>Email</th>
									<th>Roles</th>
									<th>Action</th>
								</tr>
							<c:forEach var="item" items="${list}">
								<tr class="tableAdmin">
									<td>${list.indexOf(item)+1}.</td>	
									<td>${item.fName} ${item.lName}</td>	
									<td>${item.email}</td>	
									<td>
										<form method="POST" action="editrole" >		    									
											<input type="hidden" name="id" value="${item.id}" />		    	 
											<select onchange="this.form.submit()" name="role" class="form-control" style="width: 7rem;">
											<option value="${item.role}">${item.role}</option>
											<option value="USER">USER </option>
											<option value="DBA">DBA</option>
											<option value="ADMIN">ADMIN</option>												  
											</select>												
										</form>
									</td>
									<td>
										<span style="display: inline;">
										<a href="#" data-toggle="modal" data-target="#edits${item.id}" class="btn btn-info"> <i class="fa fa-pencil"></i></a>
										<a href="removeuser?id=${item.id}" onclick="confirmed(); return false;" title="Delete member ${item.fName} ${item.lName}" class="btn btn-danger"> <i class="fa fa-trash"></i></a>
										</span>
									</td>			
								</tr>
							<!-- EDIT MODAL POPUP  -->
							<div class="modal fade" id="edits${item.id}">
							<div class="modal-dialog modal-md">
							<div class="modal-content">	
							<div class="modal-header">
							<h5 class="modal-">Update Info</h5>
							<button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
							</div>      
							<!-- Modal body -->
							<div class="modal-body">		  
								<form:form action="updatemyinfo" modelAttribute="user" method="post">
									<div class="form-group">
										<label for="fName">First Name</label>
										<form:input path="fName"  value="${item.fName}" class="form-control" placeholder="First Name"/>
										<form:input type="hidden" path="id" value="${item.id}" class="form-control" />
									</div>
									<div class="form-group">
										<label for="lName">Last Name</label>
										<form:input path="lName"  value="${item.lName}" class="form-control" placeholder="Last Name"/>			                    
									</div>
									<div class="form-group">
										<label for="email">Email</label>
										<form:input path="email"  value="${item.email}" class="form-control" placeholder="Email"/>			                    
									</div>			                  
									<div>
										<button type="submit" class="btn btn-primary"><i class="fa fa-user"></i> Save</button>
										<button type="button" data-dismiss="modal" aria-label="Close" class="btn btn-danger">Close</button>
									</div>
								</form:form>
							</div>
							<!-- END Modal body -->
							</div>	
							</div>
							</div>
							<!-- END EDIT MODAL POPUP  -->
							</c:forEach>
							<tbody></tbody>
							</table>
							<!-- END ADMIN TABLE -->
						</div>
					</div>
				</div>
			</div>
			<!-- EMPTY CONTAINER -->
			<div class="col"></div>
			<!-- END EMPTY CONTAINER -->
		</div>
	</div>          
</div>
<!-- END MAIN CONTAINER -->

<!-- JAVASCRIPT -->
    <script>
    	/* DELETE CONFIRMATION SCRIPT */
	    function confirmed(){
            if (confirm('You are about to delete, Do you want to proceed?')) {
                  document.getElementById("del").submit();
                  return true;
	            } else {
	               return false;
	            }
	         }
    	
	    /* SEARCH SCRIPT */	    
	    $("#searchnow").keyup(function () {
	        var value = this.value.toLowerCase().trim();

	        /* SECOND SEARCH SCRIPT */
	        $("table tr").each(function (index) {
	            if (!index) return;
	            $(this).find("td").each(function () {
	                var id = $(this).text().toLowerCase().trim();
	                var not_found = (id.indexOf(value) == -1);
	                $(this).closest('tr').toggle(!not_found);
	                return not_found;
	            });
	        });
	    });
	</script>    
</body>
</html>