<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
		<div class="pull-right">	
			<a href="Destinations.html">
				<button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-plane"></span> Destinations 
				</button>
			</a>	
			<a href="HomeProfile1.html">
				<button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-home"></span> Home Profile 
				</button>
			</a>			
			<a href="Messaging.html">
				<button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-envelope"></span> Messages 
				</button>
			</a>	
			<a href="Account.html">
				<button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-user"></span> Account 
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
				      and displayed using JSTL Just for testing purposes.  -->
			      
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

</body>
</html>