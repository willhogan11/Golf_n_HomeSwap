<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Opening Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/home.css">
</head>
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg'); padding: 20px;">

	<!-- Header -->
	<div class="container">
		<div class="text-right" style="color: white; background-color: #5cb85c; 
									   border-radius: 5px; padding: 15px;  box-shadow: 10px 5px 2px black;">
			<h1>Golf'n Home Swap</h1>
			<p>The exchange community for golf lovers</p>	
		</div>
	</div>
	
	<!-- Header Link -->
	
	<!-- User panel is here -->
	<div id="user-panel"  class="container">
		<div style="display: inline-block;">
			<div class="text-right" style="width: 350px;">
				<div class="text-center" style="background-color: black; padding: 20px; 
												color: white;  font-size: 20px; border: 2px solid blue;">
					<a href="#"> View Courses and Homes</a>
				</div>
			</div>
		</div>
		
		<!-- Active-user panel here -->
		
		<sec:authorize access="isAuthenticated()">
			<div id="active-user">
	    		<div id="blockWelcome">
	    			<c:if test="${email != null}">
		    			Welcome, <c:out value="${username}"></c:out> <span>(<c:out value="${role}"></c:out>)</span>
		    		</c:if>
	    		</div>
    		</div>
    	</sec:authorize>
	</div>
	

	<!-- Video Clip Placeholder -->
	<div class="container" style="width: 400px; height: 200px;">
		<video width="400" controls>
			<source src="${pageContext.request.contextPath}/res/video/WelcomeVideoPlaceholder.mp4" type="video/mp4">
		</video>
	</div>
	
	
	<!-- First Menu (Links) -->
	<div class="container" style="margin: 100px auto auto auto">
		<div class="btn-group btn-group-sl">
			<a href="${pageContext.request.contextPath}/whatitis" class="btn btn-primary">What it is</a>
			<a href="${pageContext.request.contextPath}/howitworks" class="btn btn-primary">How it Works</a>
			<a href="${pageContext.request.contextPath}/price" class="btn btn-primary">Price</a>
			<a href="${pageContext.request.contextPath}/faq" class="btn btn-primary">FAQ</a>
			<a href="${pageContext.request.contextPath}/apply" class="btn btn-primary">Apply for Membership</a>
			<sec:authorize access="hasAnyRole('ADMIN')">
            	<a href="${pageContext.request.contextPath}/admin" class="btn btn-primary">Admin</a>
            </sec:authorize>
            <sec:authorize access="hasAnyRole('REGISTERED')">
            	<a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary">Dashboard</a>
            	<a href="${pageContext.request.contextPath}/addhomewizard" class="btn btn-primary">Add a home</a>
            </sec:authorize>
            
		</div>
	</div>

	<!-- Second Menu (Buttons) -->
	<div class="container">
		<div class="btn-group btn-group-sl">
			<button type="button" class="btn btn-success">Contact Us</button>
			<button type="button" class="btn btn-success">Legal</button>
			<button type="button" class="btn btn-success">Press</button>
			<button type="button" class="btn btn-success">Testimonials</button>
		</div>
	</div>

	<!-- Login Button -->
	<div class="container">
		<div style="float: right; margin: -45px auto auto auto ;">
	    	<sec:authorize access="!isAuthenticated()">
	    		<a href="${pageContext.request.contextPath}/login">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-log-in"></span>  Login
					</button>
				</a>
	    	</sec:authorize>
	    	<sec:authorize access="isAuthenticated()">
		    	<a href="${pageContext.request.contextPath}/j_spring_security_logout">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-log-out"></span>  Logout
					</button>
				</a>
	    	</sec:authorize>
		</div>
	</div>
	
	</body>
</html>