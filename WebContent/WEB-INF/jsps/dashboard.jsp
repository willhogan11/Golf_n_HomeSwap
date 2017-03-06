<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/dashboard.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		.carousel-inner > .item > img,
		.carousel-inner > .item > a > img {
			width: 70%;
			margin: auto;
		}
	</style>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golfOpacity.jpg'); padding: 20px;">

	<!-- Menu Container Div -->
	<div class="container">
		
		<!-- Div for top right menu -->
		
		<!-- 
			 Here is block which displays user's name.
			 isAuthenticated() should always return true as this page
			 is available for authenticated users only.
			 Still better to have it checked to reduce
			 risk for any form of vulnerabilities.  
		-->
		
		<!-- No real need for this now, as the users details are now displayed on the Account button below -->
			<%-- <sec:authorize access="isAuthenticated()">
				<div class="pull-left" id="user-panel">
		    		<div id="blockWelcome">
		    			<c:if test="${email != null}">
			    			Welcome, <span><c:out value="${username}"></c:out></span>
			    		</c:if>
		    		</div>
	    		</div>
	    	</sec:authorize> --%>
	    	
	    	
    	  <div class="pull-right">
	   		<div class="dropdown">
			    <button class="btn btn-default btn-block dropdown-toggle" type="button" data-toggle="dropdown" style="height: 35px;"> 
			    	&nbsp;&nbsp;<span class="glyphicon glyphicon-user"></span>
					<sec:authorize access="isAuthenticated()">
						<div class="pull-left" id="user-panel">
				    		<div style="width: auto; text-align: center;">
				    			<c:if test="${email != null}">
					    			<c:out value="${username}"></c:out>
					    		</c:if>
				    		</div>
			    		</div>
    				</sec:authorize>
		    	</button>
			    <ul class="dropdown-menu">
		    		<li>
		    			<a href="#">Option 1</a>
		    		</li>
		    		<li>
		    			<a href="#">Option 2</a>
		    		</li>
		    		<li>
		    			<sec:authorize access="isAuthenticated()">
					    	<a href="${pageContext.request.contextPath}/j_spring_security_logout">
								<button type="button" class="btn btn-default btn-sm">
									<span class="glyphicon glyphicon-log-out"></span>  Logout
								</button>
							</a>
				    	</sec:authorize>
		    		</li>
			    </ul>
		    </div>
	    </div>
    	
    	<div class="pull-right">
	   		<div class="dropdown">
			    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"> Home Options
			    	<span class="glyphicon glyphicon-collapse-down"></span>
		    	</button>
			    <ul class="dropdown-menu">
			      <li>
			      	  <sec:authorize access="hasAnyRole('REGISTERED')">
					      <a href="${pageContext.request.contextPath}/usershomes">
							<button type="button" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-search"></span> Your Homes
							</button>
						  </a>	
					  </sec:authorize>
				  </li>
			      <li>
			      	  <sec:authorize access="hasAnyRole('REGISTERED')">
					      <a href="${pageContext.request.contextPath}/addhomewizard">
							<button type="button" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-plus"></span> Add a home
							</button>
						  </a>	
					  </sec:authorize>
				  </li>
			    </ul>
		    </div>
	    </div>
	    
	  
    	
		
		<div class="pull-right">
			<sec:authorize access="hasAnyRole('REGISTERED')">
				<a href="${pageContext.request.contextPath}/">	 
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-hand-left"></span> Main Menu 
					</button>
				</a>	
			</sec:authorize>
			
			<a href="Destinations.html">
				<button type="button" class="btn btn-default disabled">
					<span class="glyphicon glyphicon-plane"></span> Destinations 
				</button>
			</a>	
			<a href="HomeProfile1.html">
				<button type="button" class="btn btn-default disabled">
					<span class="glyphicon glyphicon-home"></span> Home Profile 
				</button>
			</a>			
			<a href="Messaging.html">
				<button type="button" class="btn btn-default disabled">
					<span class="glyphicon glyphicon-envelope"></span> Messages 
				</button>
			</a>	
		</div>
		<!-- End Div for top right menu -->
		

		
	</div>
	<!-- End Menu Container Div -->
	
	
	<!-- Slide Container Div 
		 Reference: http://www.w3schools.com/bootstrap/bootstrap_carousel.asp -->
	<div class="container">
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
				<li data-target="#myCarousel" data-slide-to="6"></li>
				<li data-target="#myCarousel" data-slide-to="7"></li>
				<li data-target="#myCarousel" data-slide-to="8"></li>
				<li data-target="#myCarousel" data-slide-to="9"></li>
				<li data-target="#myCarousel" data-slide-to="10"></li>
			</ol>


			
			<!-- ********** PLEASE READ *************** -->
			
				<!--  Values below are statically declared and will need to be located using mongo
				      and displayed using JSTL, this is Just for testing purposes.  -->
			      
			<!-- ************************************** -->
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img src='${pageContext.request.contextPath}/res/img/house1.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 1</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house2.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 2</h3>	
						<p>The atmosphere of this house in Wonderful.
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house3.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 3</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house4.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 4</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house5.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 5</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house6.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 6</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house7.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 7</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house8.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 8</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house9.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 9</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>

				<div class="item">
					<img src='${pageContext.request.contextPath}/res/img/house10.jpg'>
					<div class="carousel-caption">
						<h3>Tampa Bay 10</h3>
						<p>The atmosphere of this house in Wonderful.</p>
					</div>
				</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>		
	</div>
	<!-- End Slide Container Div -->
	</div>
</body>
</html>