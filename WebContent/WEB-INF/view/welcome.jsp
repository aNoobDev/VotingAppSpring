<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-grid.min.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-grid.min.css.map" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-reboot.min.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-reboot.min.css.map" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.min.css.map" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css" type="text/css"></link>

<script type="text/JavaScript" src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/JavaScript" src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.min.js"></script>

</head>
<%
	if (session.getAttribute("Username") == null)
	response.sendRedirect("showLogInForm");
%>
	<body> 
		<div class="container">
		  <div class="row">
		    <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
		      <div class="card card-signin my-5">
		        <div class="card-body">
		          <h2 class="card-title text-center font-weight-bold text-primary">Welcome Admin</h2>
		          <form action="add">
		       		<button class="btn btn-lg btn-primary btn-block" type="submit" name="add" >Add Candidate</button>         
		          	<hr class="my-2">
		          </form>
		          <form action="editDelete">
		       		<button class="btn btn-lg btn-primary btn-block" type="submit" name="edit" >Edit/Delete Candidate</button>         
		          	<hr class="my-2">
		          </form>
		          <form action="logout" method="get">
		       		<button class="btn btn-primary" type="submit" name="logout" >Logout</button>       
		          	<hr class="my-2">
		          </form>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
	</body>
</html>