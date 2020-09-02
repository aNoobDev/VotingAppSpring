<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn App</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-grid.min.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-grid.min.css.map" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-reboot.min.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap-reboot.min.css.map" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.min.css.map" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css" type="text/css"></link>


<script type="text/JavaScript" src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/JavaScript" src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>


</head>
<body>
	<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h1 class="card-title text-center font-weight-bold text-primary">Admin Login</h1>
            <i>Required(*) </i><br>
            <label style=color:red>${authmsg}</label>
            <form:form class="form-signin" action="processLogInForm" method="post" modelAttribute="admin">
              <div class="form-label-group">
                <input type="text" name="username" id="inputEmail" class="form-control" placeholder="username" required autofocus>
                <label for="inputEmail">Username*</label>
              </div>
              <div class="form-label-group">
              <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password*</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
            </form:form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>