<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Opening Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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
	<div class="container">
		<div class="text-right" style="width: 350px;">
			<div class="text-center" style="background-color: black; padding: 20px; 
											color: white;  font-size: 20px; border: 2px solid blue;">
				<a href="#"> View Courses and Homes</a>
			</div>
		</div>
	</div>
	

	<!-- Video Clip Placeholder -->
	<div class="container" style="width: 400px; height: 200px;">
		<video width="400" controls>
			<source src="${pageContext.request.contextPath}/res/video/clip.mp4" type="video/mp4">
		</video>
	</div>
	
	
	<!-- First Menu (Links) -->
	<div class="container" style="margin: 100px auto auto auto">
		<div class="btn-group btn-group-sl">
			<a href="#" class="btn btn-primary">What it is</a>
			<a href="#" class="btn btn-primary">How it Works</a>
			<a href="#" class="btn btn-primary">Price</a>
			<a href="#" class="btn btn-primary">FAQ</a>
			<a href="#" class="btn btn-primary">Apply for Membership</a>
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
			<a href="${pageContext.request.contextPath}/login.jsp">
				<button type="button"  class="btn btn-default btn-lg">Login</button>
			</a>
		</div>
	</div>
	
	</body>
</html>