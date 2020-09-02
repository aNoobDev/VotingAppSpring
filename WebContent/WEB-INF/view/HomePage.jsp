<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voting App</title>
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
<body>
	<div class="container">
	    <div class="row">
	      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
	        <div class="card card-signin my-5">
	          <div class="card-body">
	            <h1 class="card-title text-center font-weight-bold text-primary">Hacker's Voting Contest</h1>
	            <form:form action="processVotingPage">
	         		<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Enter to Vote">Enter to Vote</button>         
	            </form:form>
	            <hr class="my-2">
	            <form:form action="showLogInForm">
	            	<button class="btn btn-lg btn-secondary btn-block text-uppercase" type="submit" value="Admin LogIn">Admin Login</button>
	           </form:form>
	          </div>
	        </div>
	      </div>
	    </div>
  	</div>
</html> 