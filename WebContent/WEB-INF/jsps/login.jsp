<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/login.css" />
	<title>Login Page</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg'); padding: 20px;">

	<div class="container" style="position: absolute;
							     margin: auto;
							     top: 0;
							     right: 0;
							     bottom: 0;
							     left: 0;
							     width: 450px;
							     height: 350px;
							     border: 3px solid black;
							     border-radius: 10px;
							     padding: 25px;
							     background-color: white;"> 	
							    
	<!-- :::::::::::::::::::::::::::::: LOGIN FORM ::::::::::::::::::::::::::::::: -->
	<form class="form-horizontal" name='f' method="post" action='${pageContext.request.contextPath}/j_spring_security_check'>
	  <div class="form-group">
	  	<h4 style="text-align: center;">Login into GolfSwap</h4>
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="email">Email:</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="email" placeholder="Enter Username" name="j_username" />
	    </div>
	  </div>
	  <div class="form-group">
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="pwd">Password:</label>
	    <div class="col-sm-10"> 
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="j_password" />
	    </div>
	  </div>
	  <div class="form-group"> 
	    <div class="col-sm-offset-2 col-sm-10">
	      <div class="checkbox">
	        <label><input type="checkbox"> Remember me</label>
	      </div>
	    </div>
	  </div>
	  
	    <!-- ::::::ERROR (USERNAME OR PASSWORD IS NOT CORRECT):::::: -->
		<c:if test="${param.error != null }">
			<div id="loginError">
				<img alt="error" src="${pageContext.request.contextPath}/res/img/error_20.png">
				<span>Username or password is not correct.</span>
			</div>
		</c:if>
		    				
	  <div class="form-group"> 
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">Login</button>
	    </div>
	  </div>
	</form>
	<!-- ::::::::::::::::::::::::::::: END FORM :::::::::::::::::::::::::::::::::: -->
	
	
	</div>

</body>
</html>