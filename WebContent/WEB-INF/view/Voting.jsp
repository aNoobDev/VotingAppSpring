<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    


<!DOCTYPE html>
<html>
<head>
<title>Voting Page</title>
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
			<h1 style="text-align:center">Hacker's Voting Contest</h1>
			<div class="row">
				<div class="col-md-5">
				<h3 style="color:blue">${msg}</h3>
					<form:form action="#" method="get">
						<div class="input-group">
							<input class="form-control" id="system-search" name="q" placeholder="Search hacker" required>
						
						</div>
						
					</form:form>
					
				</div>
				<div class="col-md-8">
					<p>Note: <i>Click on hacker's name for more details.</i></p><hr class="my-2"></hr>
				</div>
				
				<table class="table table-striped table-list-search">
					<thead class="thead-dark">
						<th>S.no</th>
						<th>Name </th>
						<th>Vote</th>
					</thead>
					<%int i=1;%>
					<c:forEach var="hacker" items="${list}">   
					<tr>
						<td><%=i++%></td>
						
						<td>
						<form:form action="detail" method="post">
						<button type="submit" name="HackerName" value="${hacker.id}" class="btn btn-link">${hacker.name} </button>
						</form:form>
						</td>
						<td>
							<form action="processVoting" method="post">
								<button type="submit" name="VotingName" value="${hacker.id}" class="btn btn-light" >
									<i class="material-icons" style="color:red" data-toggle="tooltip" data-placement="top" title="Click to Vote ${hacker.name}">favorite_border</i>
								</button>
							</form>
						</td>
					</tr>
					 </c:forEach>
				</table>
				<h4>Hacker Details</h4>
				<table class="table table-bordered">
				  <thead>
				  	  <th>SR No.</th>
				      <th>Name</th>
				      <th>Age</th>
				      <th>Town</th>
				      <th>Edit</th>
				   </thead>
				  <tr>
				    <td>1</td>
				    <td>${h.name}</td>
				    <td>${h.age}</td>
				    <td>${h.town}</td>
				    <td>
				    	<form action="userAuth" method="post">
								<button type="submit" name="user" value="${h.id}" id="${h.id}" class="btn btn-primary btn-xs" >
								<i class="material-icons">edit</i>
								</button>
						</form>
					</td>
				   </tr>
			   </table>
		 </div>
	 	</div>
	</div>
</body>
</html>