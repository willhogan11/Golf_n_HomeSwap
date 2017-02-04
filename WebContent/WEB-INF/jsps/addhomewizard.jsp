<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<title>Add Home Wizard</title>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

	<div class="container">
		<ul class="pagination">
			<li><a href="#" style="color: green; font-weight: bold;">1. Watch Tutorial ></a></li>
			<li><a href="#">2. Home Type ></a></li>
			<li><a href="#">3. Home Details ></a></li>
			<li><a href="#">4. Location ></a></li>
			<li><a href="#">5. Availability ></a></li>
			<li><a href="#">6. Add Photos ></a></li>
		 </ul>
		
		<div class="jumbotron">
			<h1>Step 1:</h1>
			<h4>Watch the tutorial wizard below to help you add your home</h4>
		</div>
		
		<!-- Video Clip Placeholder -->
		<div class="container" style="width: 400px; height: 200px;">
			<video width="400" controls>
				<source src="${pageContext.request.contextPath}/res/video/clip.mp4" type="video/mp4">
			</video>
		</div>
		
		<div class="pull-right">
			<button type="button" class="btn-lg btn-default">Skip Tutorial</button>
		</div>
	</div>	

</body>
</html>