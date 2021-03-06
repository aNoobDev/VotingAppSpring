<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    


<!DOCTYPE html>
<html>
<head>
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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/JavaScript"
	src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/JavaScript"
	src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.min.js"></script>
<script type="text/JavaScript"
	src="${pageContext.request.contextPath}/assets/js/tableSearch.js"></script> 
</head>
	<body>
		<div class="container">
		<div class="col-md-8 offset-md-2">
			<h1 style="text-align:center">Current LeaderBoard</h1>
			<h4 style="text-align:center; color:green">${msg}</h4>
			<div class="row">
				<div class="col-md-5">
					<form action="#" method="get">
						<div class="input-group">
							<input class="form-control" id="system-search" name="q"
								placeholder="Search hacker" required>
						</div>
						<hr class="my-2"></hr>
					</form>
				</div>
				<table class="table table-striped table-list-search">
					<thead class="thead-dark">
						<th>S.no</th>
						<th>Name</th>
						<th>Age</th>
						<th>Town</th>
						<th>Total Vote</th>
					</thead>
					<%int i=1; %>
					<c:forEach var="h" items="${list}" >
					<tr>
						<td><%=i++%></td>
						<td>${h.name}</td>
						<td>${h.age}</td>
						<td>${h.town}</td>
						<td>${h.voteCount}</td>
					</tr>
					</c:forEach>
				</table>			
		 </div>
	 	</div>
	</div>
</body>
</html>