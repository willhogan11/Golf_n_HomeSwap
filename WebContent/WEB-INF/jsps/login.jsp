<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<title>Login Page</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

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
	<form class="form-horizontal">
	  <div class="form-group">
	  	<h4 style="text-align: center;">Login into GolfSwap</h4>
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="email">Email:</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="email" placeholder="Enter Username">
	    </div>
	  </div>
	  <div class="form-group">
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="pwd">Password:</label>
	    <div class="col-sm-10"> 
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
	    </div>
	  </div>
	  <div class="form-group"> 
	    <div class="col-sm-offset-2 col-sm-10">
	      <div class="checkbox">
	        <label><input type="checkbox"> Remember me</label>
	      </div>
	    </div>
	  </div>
	  <div class="form-group"> 
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">Login</button>
	    </div>
	  </div>
	</form>
	</div>

</body>
</html>