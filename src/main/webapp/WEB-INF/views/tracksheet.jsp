<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>TRACKSHEET</title>
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="static/css/mdb.css">
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<link rel="stylesheet" type="text/css" href="static/css/all.css">
<link rel="stylesheet" type="text/css" href="static/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="static/css/regular.css">
<link rel="stylesheet" type="text/css" href="static/css/solid.css">
<link rel="stylesheet" type="text/css" href="static/css/brands.css">
<link rel="stylesheet" type="text/css" href="static/css/svg-with-js.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables.min.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables2.min.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables-select.min.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables-select2.min.css">
<link rel="stylesheet" type="text/css" href="static/css/modules/animations-extended.min.css">
<link rel="stylesheet" type="text/css" href="static/css/styles.css">

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"/> -->

<!-- MDB icon -->
  <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="css/style.css">
<!-- jQuery and JS bundle w/ Popper.js -->


<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>




</head>
<!-- <body class="tsbg"> -->
<body style="background: url(static/images/bgts1.jpg) no-repeat center fixed; background-size: cover;">


<!-- HEADER -->
<jsp:include page="components/header.jsp"/>
<!-- HEADER -->

<%-- <h1>TRACKSHEET, ${msg}</h1> --%>

<div class="tsContainer blue-grey darken-4" >
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link ${active}" id="tsd-tab" data-toggle="tab" href="#tsd" role="tab" aria-controls="tsd" aria-selected="true"><span class="tsnavhead">TRACKSHEET DETAILS</span></a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link ${activeInput}" id="input-tab" data-toggle="tab" href="#input" role="tab" aria-controls="input" aria-selected="false"><span class="tsnavhead">INPUTS</span></a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link ${activemonout}" id="monout-tab" data-toggle="tab" href="#monout" role="tab" aria-controls="monout" aria-selected="false"><span class="tsnavhead">MON OUTPUTS</span></a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link ${activefohout}" id="fohout-tab" data-toggle="tab" href="#fohout" role="tab" aria-controls="fohout" aria-selected="false"><span class="tsnavhead">FOH OUTPUTS</span></a>
  </li>
   <li class="nav-item" role="presentation">
    <a class="nav-link ${activewi}" id="wt-tab" data-toggle="tab" href="#wt" role="tab" aria-controls="wt" aria-selected="false"><span class="tsnavhead">WIRELESS INPUTS</span></a>
  </li>
   <li class="nav-item" role="presentation">
    <a class="nav-link ${activewo}" id="wr-tab" data-toggle="tab" href="#wr" role="tab" aria-controls="wr" aria-selected="false"><span class="tsnavhead">WIRELESS OUTPUTS</span></a>
  </li>
  <li>
  <div><a class="navbarButton5" style="color: #00a3e5;" href="newsheet">NEW TRACKSHEET</a></div>
  </li>
   <li>
  <!-- <div class="dropdown">
  <button class="navbarButton4" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    TRACKSHEET OPTIONS
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">New</a>
    <a class="dropdown-item" href="#">Copy</a>
    <a class="dropdown-item" href="#">Share</a>
    <a class="dropdown-item" href="#">Close</a>
  </div>
</div> -->
  </li>
</ul>


<!-- TAB CONTENT -->
<div class="tab-content mr-auto" id="myTabContent">

<!-- NEW FIRST TAB -->
<div class="tab-pane fade ${activeShow}" id="tsd" role="tabpanel" aria-labelledby="tsd-tab">  
<!--   Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4"><span class="navbarMain">TRACKSHEET DETAILS</span></h3>
  <div class="card-body blue-grey lighten-5">
    <div id="tsdtable" class="table-editable">
<%--     <form:form action="tssubmit" method="post" modelAttribute="tracksheet"> --%>
      <table name="tsd" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">Date</th>
            <th class="text-center">TrackSheet Name</th>
            <th class="text-center">Location</th>
            <th class="text-center">Event Name</th>
            <th class="text-center">Talent Name</th>
            <th class="text-center">Notes</th>
            <th class="text-center"></th>
            <!-- <th class="text-center">Function</th> -->
          </tr>
        </thead>
        <tbody>
         <c:choose>
         <c:when test="${change == false }">
        <c:forEach items="${myts}" var="sheet">
        
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="false"><span class="tsinputs2">${sheet.date }</span></td>
            <td class="pt-3-half" contenteditable="false"><span class="tsinputs2">${sheet.tsName }</span></td>
            <td class="pt-3-half" contenteditable="false"><span class="tsinputs2">${sheet.location }</span></td>
            <td class="pt-3-half" contenteditable="false"><span class="tsinputs2">${sheet.eventName }</span></td>
            <td class="pt-3-half" contenteditable="false"><span class="tsinputs2">${sheet.talentName }</span></td>
            <td class="pt-3-half" contenteditable="false"><span class="tsinputs2">${sheet.notes }</span></td>
            <!-- <td>
       		  <span class=""><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td> -->
            <td>
            <form action="tsSelect" method="post">
            <input type="hidden" name="tsID" value="${sheet.id}"/>
       		  <span class=""><button type="submit"
                  class="btn btn-primary btn-rounded btn-sm my-0">Select</button></span>
            </form>     
            </td>
            
          </tr>
         
        </c:forEach>
       </c:when>
        
        
        <c:when test="${change == true }">
        <tr class="tsTR white black-text" style="">
        <form:form action="tssubmit" method="post" modelAttribute="tracksheet">
            <td class="pt-3-half" contenteditable="false"><form:input type="date" path="date" id="datepicker" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="tsName" id="tsName" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="location" id="location" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="eventName" id="eventName" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="talentName" id="talentName" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="notes" id="notes" class="tsinputs2" value=""/></td>
            <td>
       		  <span class=""><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            </form:form>
            <%-- <td>
            <form action="tsSelect" method="post">
            <input type="hidden" name="tsID" value="${sheet.id}"/>
       		  <span class=""><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Select</button></span>
            </form>     
            </td> --%>
          </tr>
          </c:when>
          </c:choose>
        </tbody>
      </table>
<%--       </form:form> --%>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
 <!--  NEW FIRST TAB -->

<!-- NOT FIRST TAB -->
<div class="tab-pane fade ${activeInputShow}" id="input" role="tabpanel" aria-labelledby="input-tab">  
 <!--  Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">INPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
	<%-- <form:form action="inputsubmit" method="post" modelAttribute="inputs"> --%>
      <table name="inputs" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">SubSnake Number</th>
            <th class="text-center">StageBox Input Number</th>
            <th class="text-center">FOH Input Number</th>
            <th class="text-center">MON Input Number</th>
            <th class="text-center">Source Name</th>
            <th class="text-center">Input Type</th>
            <th class="text-center">Mic/DI - Make/Model</th>
            <th class="text-center">Stand Type</th>
            <th class="text-center">Function</th>
            <th class="text-center">Function</th>
            <th class="text-center">Function</th>
            <th class="text-center">Function</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${myInputs}" var="in">
        
            <tr class="tsTR white black-text" style="">
            <form:form action="inputsubmit" method="post" modelAttribute="inputs">
	            <td class="pt-3-half" contenteditable="false"><form:input path="subsnakeNumber" id="subsnakeNumber" class="tsinputs2" value="${in.subsnakeNumber}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="stageboxInputNumber" id="stageboxInputNumber" class="tsinputs2" value="${in.stageboxInputNumber}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="fohInputNumber" id="fohInputNumber" class="tsinputs2" value="${in.fohInputNumber}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="monInputNumber" id="monInputNumber" class="tsinputs2" value="${in.monInputNumber}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="sourceName" id="sourceName" class="tsinputs2" value="${in.sourceName}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="inputType" id="inputType" class="tsinputs2" value="${in.inputType}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="micdiName" id="micdiName" class="tsinputs2" value="${in.micdiName}"/></td>
	            <td class="pt-3-half" contenteditable="false"><form:input path="standType" class="tsinputs2" id="standType" value="${in.standType}"/></td>
	           
	            
	            <td>
	       		  <span class="table-"><button type="submit"
	                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
	            </td>
	                        <td>
	       		  <span class="table-"><button type="button"
	                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
	            </td>
	            <td>
	            	<span class="table-"><button type="button"
	                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
	            </td>
	            <td>
	            	<span class="table-remove" id="tscellfix"><button type="button"
	                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
	            </td>
	             </form:form>
            </tr>
           
        </c:forEach>
          <tr class="tsTR white black-text" style="">
         <form:form action="inputsubmit" method="post" modelAttribute="inputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="subsnakeNumber" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="stageboxInputNumber" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="fohInputNumber" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="monInputNumber" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="sourceName" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="inputType" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="micdiName" class="tsinputs2"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="standType" class="tsinputs2"/></td>
            <td>
       		  <span class="table-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0" id="inputSubmit">Submit</button></span>     
            </td>
            <td>
       		  <span class="table-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
             </form:form>
          </tr>
        
        </tbody>
      </table>
      <%-- </form:form> --%>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!--   FIRST TAB -->
  
<!-- SECOND TAB -->
 <div class="tab-pane fade ${activemonoutShow}" id="monout" role="tabpanel" aria-labelledby="monout-tab">
  
   <!-- Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">MONITOR OUTPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table2" class="table-editable">
      <span class="table2-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="monout" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">OUTPUT TYPE</th>
            <th class="text-center">OUTPUT NUMBER</th>
            <th class="text-center">OUTPUT FORMAT</th>
            <th class="text-center">OUTPUT DESTINATION</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
        
        <c:forEach items="${monout}" var="mon">
          <tr class="tsTR white black-text" style="">
          <form:form action="monOutputsubmit" method="post" modelAttribute="monOutputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="outputType" id="outputType" class="tsinputs2" value="${mon.outputType}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputNumber" id="outputNumber" class="tsinputs2" value="${mon.outputNumber}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputFormat" id="outputFormat" class="tsinputs2" value="${mon.outputFormat}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputDestination" id="outputDestination" class="tsinputs2" value="${mon.outputDestination}"/></td>
            <td>
       		  <span class="table2-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table2-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table2-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table2-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
          </c:forEach>
          
          <tr class="tsTR white black-text" style="">
          <form:form action="monOutputsubmit" method="post" modelAttribute="monOutputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="outputType" id="outputType" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputNumber" id="outputNumber" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputFormat" id="outputFormat" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputDestination" id="outputDestination" class="tsinputs2" value=""/></td>
            <td>
       		  <span class="table2-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table2-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table2-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table2-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
          
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!-- SECOND TAB -->

<!-- THIRD TAB -->  	
  <div class="tab-pane fade ${activefohoutShow}" id="fohout" role="tabpanel" aria-labelledby="fohout-tab">
     <!-- Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">FOH OUTPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table3" class="table-editable">
      <span class="table3-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="fohout" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">OUTPUT TYPE</th>
            <th class="text-center">OUTPUT NUMBER</th>
            <th class="text-center">OUTPUT FORMAT</th>
            <th class="text-center">OUTPUT DESTINATION</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${fohout}" var="foh">
          <tr class="tsTR white black-text" style="">
          <form:form action="fohOutputsubmit" method="post" modelAttribute="fohOutputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="outputType" id="outputType" class="tsinputs2" value="${foh.outputType}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputNumber" id="outputNumber" class="tsinputs2" value="${foh.outputNumber}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputFormat" id="outputFormat" class="tsinputs2" value="${foh.outputFormat}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputDestination" id="outputDestination" class="tsinputs2" value="${foh.outputDestination}"/></td>
            <td>
       		  <span class="table3-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table3-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table3-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table3-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
          </c:forEach>
          
          <tr class="tsTR white black-text" style="">
          <form:form action="fohOutputsubmit" method="post" modelAttribute="fohOutputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="outputType" id="outputType" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputNumber" id="outputNumber" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputFormat" id="outputFormat" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="outputDestination" id="outputDestination" class="tsinputs2" value=""/></td>
            <td>
       		  <span class="table3-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table3-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table3-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table3-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
          
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!-- THIRD TAB  -->

<!-- FOURTH TAB -->  
  <div class="tab-pane fade ${activewiShow}" id="wt" role="tabpanel" aria-labelledby="wt-tab">
     <!-- Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">WIRELESS AUDIO INPUTS</h3>
   <div class="card-body blue-grey lighten-5">
    <div id="table4" class="table-editable">
      <span class="table4-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="wai" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">CHANNEL NAME</th>
            <th class="text-center">TYPE (MIC/INST)</th>
            <th class="text-center">WIRELESS RECEIVER MAKE</th>
            <th class="text-center">WIRELESS RECEIVER MODEL</th>
            <th class="text-center">FREQUENCY</th>
            <th class="text-center">WIRELESS TRANSMITTER MODEL</th>
            <th class="text-center">MIC CAPSULE</th>
            <th class="text-center">CONNECTOR TYPE</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${wirein}" var="wi">
          <tr class="tsTR white black-text" style="">
          <form:form action="wireInsubmit" method="post" modelAttribute="wirelessInputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="channelName" id="channelName" class="tsinputs2" value="${wi.channelName}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="type" id="type" class="tsinputs2" value="${wi.type}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessRecMake" id="wirelessRecMake" class="tsinputs2" value="${wi.wirelessRecMake}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessRecModel" id="wirelessRecModel" class="tsinputs2" value="${wi.wirelessRecModel}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="freq" id="freq" class="tsinputs2" value="${wi.freq}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessTransModel" id="wirelessTransModel" class="tsinputs2" value="${wi.wirelessTransModel}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="micCapsule" id="micCapsule" class="tsinputs2" value="${wi.micCapsule}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="connType" id="connType" class="tsinputs2" value="${wi.connType}"/></td>
            <td>
       		  <span class="table4-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table4-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table4-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table4-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
        </c:forEach>
        
        <tr class="tsTR white black-text" style="">
          <form:form action="wireInsubmit" method="post" modelAttribute="wirelessInputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="channelName" id="channelName" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="type" id="type" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessRecMake" id="wirelessRecMake" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessRecModel" id="wirelessRecModel" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="freq" id="freq" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessTransModel" id="wirelessTransModel" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="micCapsule" id="micCapsule" class="tsinputs2" value=""/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="connType" id="connType" class="tsinputs2" value=""/></td>
            <td>
       		  <span class="table4-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table4-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table4-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table4-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!-- FOURTH TAB  -->

<!-- FIFTH TAB -->
  <div class="tab-pane fade ${activewoShow}" id="wr" role="tabpanel" aria-labelledby="wr-tab">
    <!--  Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">WIRELESS AUDIO OUTPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table5" class="table-editable">
      <span class="table5-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="wao" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">MIX NUMBER</th>
            <th class="text-center">PERSON NAME/INSTRUMENT</th>
            <th class="text-center">PACK NUMBER</th>
            <th class="text-center">WIRELESS TRANSMITTER MAKE</th>
            <th class="text-center">WIRELESS TRANSMITTER MODEL</th>
            <th class="text-center">FREQUENCY</th>
            <th class="text-center">WIRELESS RECEIVER MODEL</th>
            <th class="text-center">IEM MODEL</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${wireout}" var="wo">
          <tr class="tsTR white black-text" style="">
          <form:form action="wireOutsubmit" method="post" modelAttribute="wirelessOutputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="mixNumber" id="mixNumber" class="tsinputs2" value="${wo.mixNumber}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="persinstName" id="persinstName" class="tsinputs2" value="${wo.persinstName}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="packNumber" id="packNumber" class="tsinputs2" value="${wo.packNumber}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessTransMake" id="wirelessTransMake" class="tsinputs2" value="${wo.wirelessTransMake}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessTransModel" id="wirelessTransModel" class="tsinputs2" value="${wo.wirelessTransModel}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="freq" id="freq" class="tsinputs2" value="${wo.freq}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessRecModel" id="wirelessRecModel" class="tsinputs2" value="${wo.wirelessRecModel}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="iemModel" id="iemModel" class="tsinputs2" value="${wo.iemModel}"/></td>
            <td>
       		  <span class="table5-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table5-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table5-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table5-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
        </c:forEach>
        
        <tr class="tsTR white black-text" style="">
          <form:form action="wireOutsubmit" method="post" modelAttribute="wirelessOutputs">
            <td class="pt-3-half" contenteditable="false"><form:input path="mixNumber" id="mixNumber" class="tsinputs2" value="${wo.mixNumber}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="persinstName" id="persinstName" class="tsinputs2" value="${wo.persinstName}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="packNumber" id="packNumber" class="tsinputs2" value="${wo.packNumber}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessTransMake" id="wirelessTransMake" class="tsinputs2" value="${wo.wirelessTransMake}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessTransModel" id="wirelessTransModel" class="tsinputs2" value="${wo.wirelessTransModel}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="freq" id="freq" class="tsinputs2" value="${wo.freq}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="wirelessRecModel" id="wirelessRecModel" class="tsinputs2" value="${wo.wirelessRecModel}"/></td>
            <td class="pt-3-half" contenteditable="false"><form:input path="iemModel" id="iemModel" class="tsinputs2" value="${wo.iemModel}"/></td>
            <td>
       		  <span class="table5-"><button type="submit"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table5-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table5-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table5-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
            </form:form>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!--   FIFTH TAB -->
</div>
<!-- END TAB CONTENT -->
</div>


<!-- ORIGINAL TABLE
Editable table
<div class="card">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Editable table</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr>
            <th class="text-center">Person Name</th>
            <th class="text-center">Age</th>
            <th class="text-center">Company Name</th>
            <th class="text-center">Country</th>
            <th class="text-center">City</th>
            <th class="text-center">Sort</th>
            <th class="text-center">Remove</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="pt-3-half" contenteditable="true">Aurelia Vega</td>
            <td class="pt-3-half" contenteditable="true">30</td>
            <td class="pt-3-half" contenteditable="true">Deepends</td>
            <td class="pt-3-half" contenteditable="true">Spain</td>
            <td class="pt-3-half" contenteditable="true">Madrid</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
          This is our clonable table line
          <tr>
            <td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
            <td class="pt-3-half" contenteditable="true">45</td>
            <td class="pt-3-half" contenteditable="true">Insectus</td>
            <td class="pt-3-half" contenteditable="true">USA</td>
            <td class="pt-3-half" contenteditable="true">San Francisco</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
          This is our clonable table line
          <tr>
            <td class="pt-3-half" contenteditable="true">Guadalupe House</td>
            <td class="pt-3-half" contenteditable="true">26</td>
            <td class="pt-3-half" contenteditable="true">Isotronic</td>
            <td class="pt-3-half" contenteditable="true">Germany</td>
            <td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
          This is our clonable table line
          <tr class="hide">
            <td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
            <td class="pt-3-half" contenteditable="true">31</td>
            <td class="pt-3-half" contenteditable="true">Portica</td>
            <td class="pt-3-half" contenteditable="true">United Kingdom</td>
            <td class="pt-3-half" contenteditable="true">London</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
Editable table -->


<!-- <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="tsd-tab" data-toggle="tab" href="#tsd" role="tab" aria-controls="tsd" aria-selected="true"><span class="tsnavhead">TRACKSHEET DETAILS</span></a>
  </li> -->

<script>
document.getElementById('inputSubmit').addEventListener('click', function() {
	document.getElementById('tsd-tab').classList.remove('active');
	document.getElementById('input-tab').classList.add('active');
	});
</script>



<script>
$(document).ready(function() {
	  $('.nav nav-tabs li a').click(function(e) {

	    $('.nav nav-tabs li a.active').removeClass('active');

	    var $parent = $(this).parent();
	    $parent.addClass('active');
	    e.preventDefault();
	  });
	});
</script>

<script>/* FIRST TAB TABLE SCRIPT */
//FIRST TAB TABLE SCRIPT
const $tableID = $('#table');
const $BTN = $('#export-btn');
const $EXPORT = $('#export');

const $newTr = `<form:form action="inputsubmit" method="post" modelAttribute="inputs">
    <tr class="tsTR white black-text" style="">
        <td class="pt-3-half" contenteditable="false"><form:input path="subsnakeNumber" class="tsinputs2" /></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="stageboxInputNumber" class="tsinputs2" /></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="fohInputNumber" class="tsinputs2" /></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="monInputNumber" class="tsinputs2" /></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="sourceName" class="tsinputs2" /></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="inputType" class="tsinputs2"/></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="micdiName" class="tsinputs2"/></td>
        <td class="pt-3-half" contenteditable="false"><form:input path="standType" class="tsinputs2"/></td>
        
		 <td> <span class="table-"><button type="submit"
          class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
    </td>
    <td>
		  <span class="table-"><button type="button"
          class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
    </td>
    <td>
    	<span class="table-"><button type="button"
          class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
    </td>
    <td>
    	<span class="table-remove" id="tscellfix"><button type="button"
          class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
    </td>
</tr></form:form>`;

$('.table-add').on('click', 'i', () => {

	const $clone = $tableID.find('tbody tr').last().clone(true).end();
	$clone = $clone.find("input").val("");
	
  if ($tableID.find('tbody tr').length === 0) {

    $('tbody').append(newTr);
  } 

  $tableID.find('table').append($clone);
  
  
});

$tableID.on('click', '.table-remove', function () {

  $(this).parents('tr').detach();
});

$tableID.on('click', '.table-up', function () {

  const $row = $(this).parents('tr');

  if ($row.index() === 0) {
    return;
  }

  $row.prev().before($row.get(0));
});

$tableID.on('click', '.table-down', function () {

  const $row = $(this).parents('tr');
  $row.next().after($row.get(0));
});

//A few jQuery helpers for exporting only
jQuery.fn.pop = [].pop;
jQuery.fn.shift = [].shift;

$BTN.on('click', () => {

  const $rows = $tableID.find('tr:not(:hidden)');
  const headers = [];
  const data = [];

  //Get the headers (add special header logic here)
  $($rows.shift()).find('th:not(:empty)').each(function () {

    headers.push($(this).text().toLowerCase());
  });

  //Turn all existing rows into a loopable array
  $rows.each(function () {
    const $td = $(this).find('td');
    const h = {};

    //Use the headers from earlier to name our hash keys
    headers.forEach((header, i) => {

      h[header] = $td.eq(i).text();
    });

    data.push(h);
  });

  //Output the result
  $EXPORT.text(JSON.stringify(data));
});
//INPUT TAB TABLE SCRIPTS

//MON OUTPUTS TAB TABLE SCRIPTS
const $table2ID = $('#table2');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN2 = $('#export-btn2');
 const $EXPORT2 = $('#export2');

 const newTr2 = `
<tr class="tsTR white black-text">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table2-remove"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table2-remove"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table2-remove"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table2-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table2-add').on('click', 'i', () => {
	 

   /* const $clone = $table2ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   console.log("$table2ID");

   if ($table2ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr2);
   } */
   
   $table2ID.find('table').append(newTr2);
 });

 $table2ID.on('click', '.table2-remove', function () {

   $(this).parents('tr').detach();
 });

 $table2ID.on('click', '.table2-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table2ID.on('click', '.table2-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN2.on('click', () => {

   const $rows = $table2ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

   //Output the result
   $EXPORT.text(JSON.stringify(data));
 });
//END MON OUTPUTS TAB SCRIPTS
</script>



<script>
//FOH OUTPUTS TAB TABLE SCRIPTS
const $table3ID = $('#table3');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN3 = $('#export-btn3');
 const $EXPORT3 = $('#export3');

 const newTr3 = `
<tr class="tsTR white black-text">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table3-remove"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table3-remove"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table3-remove"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table3-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table3-add').on('click', 'i', () => {
	 

   const $clone = $table3ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   

  /*  if ($table3ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr3);
   } */
   
   $table3ID.find('table').append(newTr3);
 });

 $table3ID.on('click', '.table3-remove', function () {

   $(this).parents('tr').detach();
 });

 $table3ID.on('click', '.table3-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table3ID.on('click', '.table3-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN3.on('click', () => {

   const $rows = $table3ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

   //Output the result
   $EXPORT.text(JSON.stringify(data));
 });
//END FOH OUTPUTS TAB SCRIPTS
</script>

<script> /* WIRELESS INPUTS TAB TABLE SCRIPTS */
//WIRELESS INPUTS TAB TABLE SCRIPTS
const $table4ID = $('#table4');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN4 = $('#export-btn4');
 const $EXPORT4 = $('#export4');

 const newTr4 = `
<tr class="tsTR white black-text">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table4"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table4"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table4"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table4-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table4-add').on('click', 'i', () => {
	 

   /* const $clone = $table4ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   

   if ($table4ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr4);
   } */
   
   $table4ID.find('table').append(newTr4);
 });

 $table4ID.on('click', '.table4-remove', function () {

   $(this).parents('tr').detach();
 });

 $table4ID.on('click', '.table4-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table4ID.on('click', '.table4-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN4.on('click', () => {

   const $rows = $table4ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

  // Output the result
   $EXPORT.text(JSON.stringify(data));
 });
//END WIRELESS INPUTS TAB SCRIPTS
</script>

<script>/* WIRELESS OUTPUTS TAB TABLE SCRIPTS */
//WIRELESS OUTPUTS TAB TABLE SCRIPTS
const $table5ID = $('#table5');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN5 = $('#export-btn5');
 const $EXPORT5 = $('#export5');

 const newTr5 = `
<tr class="tsTR white black-text">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table5"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table5"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table5"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table5-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table5-add').on('click', 'i', () => {
	 

   /* const $clone = $table5ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   

   	 if ($table5ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr5);
   } */ 
   
   $table5ID.find('table').append(newTr5);
 });

 $table5ID.on('click', '.table5-remove', function () {

   $(this).parents('tr').detach();
 });

 $table5ID.on('click', '.table5-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table5ID.on('click', '.table5-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN5.on('click', () => {

   const $rows = $table5ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
    });

   //Output the result
    $EXPORT.text(JSON.stringify(data));
  });
//END WIRELESS OUTPUTS TAB SCRIPTS
</script>


<script>/* Event Listener Script */
//js
var td = document.getElementById('tsName')

td.addEventListener('input', function(){
    console.log(td.innerHTML)
})
</script>

<!-- ALLOW INPUT FIELDS TO AUTO GROW -->
<script>
/*
 * Stretchy: Form element autosizing, the way it should be.
 * by Lea Verou http://lea.verou.me
 * MIT license
 */
(function() {

if (!self.Element) {
	return; // super old browser
}

if (!Element.prototype.matches) {
	Element.prototype.matches = Element.prototype.webkitMatchesSelector || Element.prototype.mozMatchesSelector || Element.prototype.msMatchesSelector || Element.prototype.oMatchesSelector || null;
}

if (!Element.prototype.matches) {
	return;
}

function $$(expr, con) {
	return expr instanceof Node || expr instanceof Window? [expr] :
	       [].slice.call(typeof expr == "string"? (con || document).querySelectorAll(expr) : expr || []);
}

var _ = self.Stretchy = {
	selectors: {
		base: 'textarea, select:not([size]), input:not([type]), input[type="' + "text number url email tel".split(" ").join('"], input[type="') + '"]',
		filter: "*"
	},

	// Script element this was included with, if any
	script: document.currentScript || $$("script").pop(),

	// Autosize one element. The core of Stretchy.
	resize: function(element) {
		if (!_.resizes(element)) {
			return;
		}

		var cs = getComputedStyle(element);
		var offset = 0;
		var empty;

		if (!element.value && element.placeholder) {
			empty = true;
			element.value = element.placeholder;
		}

		var type = element.nodeName.toLowerCase();

		if (type == "textarea") {
			element.style.height = "0";

			if (cs.boxSizing == "border-box") {
				offset = element.offsetHeight;
			}
			else if (cs.boxSizing == "content-box") {
				offset = -element.clientHeight + parseFloat(cs.minHeight);
			}

			element.style.height = element.scrollHeight + offset + "px";
		}
		else if (type == "input") {
			// First test that it is actually visible, otherwise all measurements are off
			element.style.width = "1000px";

			if (element.offsetWidth) {
				element.style.width = "0";

				if (cs.boxSizing == "border-box") {
					offset = element.offsetWidth;
				}
				else if (cs.boxSizing == "padding-box") {
					offset = element.clientWidth;
				}
				else if (cs.boxSizing == "content-box") {
					offset = parseFloat(cs.minWidth);
				}

				var width = Math.max(offset, element.scrollWidth - element.clientWidth);

				element.style.width = width + "px";

				// To bulletproof, we will set scrollLeft to a
				// huge number, and read that back to see what it was clipped to
				// and increment width by that much, iteratively

				for (var i=0; i<10; i++) { // max iterations
					element.scrollLeft = 1e+10;

					if (element.scrollLeft == 0) {
						break;
					}

					width += element.scrollLeft;

					element.style.width = width + "px";
				}
			}
			else {
				// Element is invisible, just set to something reasonable
				element.style.width = element.value.length + 1 + "ch";
			}
		}
		else if (type == "select") {
			var selectedIndex = element.selectedIndex > 0? element.selectedIndex : 0;

			// Need to use dummy element to measure :(
			var option = document.createElement("_");
			option.textContent = element.options[selectedIndex].textContent;
			element.parentNode.insertBefore(option, element.nextSibling);

			// The name of the appearance property, as it might be prefixed
			var appearance;

			for (var property in cs) {
				var value = cs[property];
				if (!/^(width|webkitLogicalWidth|length)$/.test(property) && typeof value == "string") {
					option.style[property] = value;

					if (/appearance$/i.test(property)) {
						appearance = property;
					}
				}
			}

			option.style.width = "";

			if (option.offsetWidth > 0) {
				element.style.width = option.offsetWidth + "px";

				if (!cs[appearance] || cs[appearance] !== "none") {
					// Account for arrow
					element.style.width = "calc(" + element.style.width + " + 2em)";
				}
			}

			option.parentNode.removeChild(option);
			option = null;
		}

		if (empty) {
			element.value = "";
		}
	},

	// Autosize multiple elements
	resizeAll: function(elements) {
		$$(elements || _.selectors.base).forEach(function (element) {
			_.resize(element);
		});
	},

	active: true,

	// Will stretchy do anything for this element?
	resizes: function(element) {
		return element &&
		       element.parentNode &&
		       element.matches &&
		       element.matches(_.selectors.base) &&
		       element.matches(_.selectors.filter);
	},

	init: function(){
		_.selectors.filter = _.script.getAttribute("data-filter") ||
		                     ($$("[data-stretchy-filter]").pop() || document.body).getAttribute("data-stretchy-filter") || _.selectors.filter;

		_.resizeAll();

		// Listen for new elements
		if (self.MutationObserver && !_.observer) {
			_.observer = new MutationObserver(function(mutations) {
				if (_.active) {
					mutations.forEach(function(mutation) {
						if (mutation.type == "childList") {
							_.resizeAll(mutation.addedNodes);
						}
					});
				}
			});
			_.observer.observe(document.documentElement, {
				childList: true,
				subtree: true
			});
		}
	},

	$$: $$
};

// Autosize all elements once the DOM is loaded

// DOM already loaded?
if (document.readyState !== "loading") {
	requestAnimationFrame(_.init);
}
else {
	// Wait for it
	document.addEventListener("DOMContentLoaded", _.init);
}

window.addEventListener("load", function(){
	_.resizeAll();
});

// Listen for changes
var listener = function(evt) {
	if (_.active) {
		_.resize(evt.target);
	}
};

document.documentElement.addEventListener("input", listener);

// Firefox fires a change event instead of an input event
document.documentElement.addEventListener("change", listener);

})();

</script>
<!-- END AUTO GROW SCRIPT  -->
 
 <!-- MAKE TABS HAVE URL ADDRESS -->
 <script>
 $(document).ready(() => {
	  let url = location.href.replace(/\/$/, "");
	 
	  if (location.hash) {
	    const hash = url.split("#");
	    $('#myTab a[href="#'+hash[1]+'"]').tab("show");
	    url = location.href.replace(/\/#/, "#");
	    history.replaceState(null, null, url);
	    setTimeout(() => {
	      $(window).scrollTop(0);
	    }, 400);
	  } 
	   
	  $('a[data-toggle="tab"]').on("click", function() {
	    let newUrl;
	    const hash = $(this).attr("href");
	    if(hash == "#home") {
	      newUrl = url.split("#")[0];
	    } else {
	      newUrl = url.split("#")[0] + hash;
	    }
	    newUrl += "/";
	    history.replaceState(null, null, newUrl);
	  });
	});
 </script>
 
 <script> 
        let change = true; 
          
        console.log('Default value of bool is', 
                                   change); 
      
        function toggle() { 
            change = !change; 
              
            console.log('Toggled bool is', 
                                change); 
        } 
    </script>

<!-- JAVASCRIPTS -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script type="text/javascript" src="static/js/bootstrap.js"></script>
<script type="text/javascript" src="static/js/mdb.js"></script>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript" src="static/js/popper.js"></script>
<!-- <script type="text/javascript" src="static/js/all.js"></script> -->
<!-- <script type="text/javascript" src="static/js/scripts.js"></script>
<script type="text/javascript" src="tsScripts.js"></script> -->

<!-- jQuery -->
  <script type="text/javascript" src="static/js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Your custom scripts (optional) -->
  <script type="text/javascript"></script>


<!-- JAVASCRIPTS -->	
</body>
</html>