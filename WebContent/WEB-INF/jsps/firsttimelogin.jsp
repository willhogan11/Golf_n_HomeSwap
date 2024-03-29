<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/firsttimelogin.css" />
	<title>New User Login</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg'); padding: 20px;">


				  

	<div class="container"> 	
							    
	<!-- :::::::::::::::::::::::::::::: FIRST TIME LOGIN FORM ::::::::::::::::::::::::::::::: -->
	
	<sf:form class="form-horizontal" name='credentials' method="post" action="${pageContext.request.contextPath}/userhome">
	  <div class="form-group">
	  	<h4 style="text-align: center;">You're nearly there.....</h4>
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="email">Email:</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="email" placeholder="Enter Username" name="j_username" />
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="temppwd">Temp_Password:</label>
	    <div class="col-sm-10"> 
	      <input type="password" class="form-control" id="pwd" placeholder="Enter Temporary Password" name="j_tempPassword" />
	    </div>
	  </div>
	  
      <div class="form-group">	
	    <label style="padding-right: 50px;" class="control-label col-sm-3" for="newpwd">New_Password:</label>
	    <div class="col-sm-10"> 
	      <input type="password" class="form-control" id="pwd" placeholder="Enter new Password" name="j_newPassword" />
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
	<%-- 	<c:if test="${param.error != null }">
			<div id="loginError">
				<img alt="error" src="${pageContext.request.contextPath}/res/img/error_20.png">
				<span>Username or password is not correct.</span>
			</div>
		</c:if> --%>
		    				
		    				
	  <!--  Need to redirect to the 'dashboard.jsp' page, when user clicks this button  -->	    				
	  <div class="form-group"> 
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-success">Complete Registration</button>
	    </div>
	  </div>
	</sf:form>
	<!-- ::::::::::::::::::::::::::::: END FORM :::::::::::::::::::::::::::::::::: -->
	
						  
	<c:if test="${error != null}">	
    	<div id="msg"><c:out value="${error}" /></div>
    </c:if>	
    			
	</div>

</body>
</html>