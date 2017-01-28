<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/logout.css" />
	<title>Successful Application</title>
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
	
	<h4>You have successfully submitted your application.</h4>
	<h4>We'll be in touch with you in due course.</h4>
	<p><a href="${pageContext.request.contextPath}/">Home</a></p>

	</div>

</body>
</html>