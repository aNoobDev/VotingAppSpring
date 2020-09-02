<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-grid.min.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-grid.min.css.map"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-reboot.min.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-reboot.min.css.map"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.min.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.min.css.map"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/login.css"
	type="text/css"></link>

<script type="text/JavaScript"
	src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/JavaScript"
	src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.min.js"></script>

</head>
<%
	if (session.getAttribute("Username") == null)
	response.sendRedirect("showLogInForm");
%>
<body style="text-align: center;">
	<div class="container">
		<div class="row">
	   	  <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
	    	<div class="card card-signin my-5">
	         <div class="card-body">
	           <h1 class="card-title text-center font-weight-bold text-primary">Add Candidate</h1>
	           	<form:form class="form-signin" action="addHacker" modelAttribute="hacker" >
	             <div class="form-label-group">
	              <input type="text" name="name" id="addPerson" class="form-control edit" placeholder="Hacker's Name"required autofocus>
	              <label for="addPerson" class="edit">Hacker's Name</label>
	             </div>
	             <div class="form-label-group">
	               <input type="text" name="age" id="addAge" class="form-control edit" placeholder="Hacker's Age" required autofocus>
	               <label for="addAge" class="edit">Hacker's Age</label>
	             </div>
	             <div class="form-label-group">
	               <input type="text" name="town" id="addTown" class="form-control edit" placeholder="Hacker's Town" required autofocus>
	               <label for="addTown" class="edit">Hacker's Town</label>
	             </div>
	             <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="add">Add Candidate</button>
	             <hr class="my-2">
	             </form:form>
	             <form action="logout" method="get">
		       	   <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="add" >Logout</button>       
		           <hr class="my-2">
		          </form>
	         </div>
	       </div>
	     </div>
	   </div>
	 </div>
</body>
</html>