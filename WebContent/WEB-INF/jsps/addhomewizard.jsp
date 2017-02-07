<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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

	<div class="container" style="margin: 100px;">
		<h1 style="color: white; text-align: center;">Add a Home...</h1>
			
		<!-- Video Clip Placeholder -->
		<div class="container" style="width: 400px; height: 200px;">
			<video width="400" controls>
				<source src="${pageContext.request.contextPath}/res/video/clip.mp4" type="video/mp4">
			</video>
		</div>
		
		<div class="pull-right">
			<a href="${pageContext.request.contextPath}/addhome" class="btn-lg btn-default" role="button">Skip Tutorial</a>
		</div>
	</div>	

</body>
</html>