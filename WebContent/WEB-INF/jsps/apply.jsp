<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/apply.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script> 
	<script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/webshim.js"></script>
	<title>Apply for Membership</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg'); padding: 20px;">

	<!-- Apply for Membership Form -->
		<div class="container" style="position: absolute;margin: auto;top: 0;
									  right: 0;bottom: 0;left: 0;width: 550px;
									  height: auto;border: 3px solid black;border-radius: 10px;
									  padding: 25px;background-color: white;">
			
			<!-- Andrej This url should map to the UserController, Change the name 'docreate' here as needed from your End -->
			<form method="post" action="${pageContext.request.contextPath}/docreate" name="user" id="applicationForm"> 
				
				<h3 style="text-align: center;padding-bottom: 10px;">Apply for Membership</h3>
				<div class="form-group row">
					<label for="firstname" class="col-sm-3 col-form-label">First Name:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="surname" class="col-sm-3 col-form-label">Surname:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="surname" name="surname" placeholder="Surname" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="email" class="col-sm-3 col-form-label">Email:</label>
					<div class="col-sm-7">
						<c:choose>
							<c:when test="${userEmailIsNotUnique != null}">
								<input type="email" class="form-control" 
							   id="email" name="email" placeholder="Email" required
							   style="border: 1px solid red;">
							</c:when>
							<c:otherwise>
								<input type="email" class="form-control" 
							   id="email" name="email" placeholder="Email" required>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

				<div class="form-group row">
					<label for="golfregnum" class="col-sm-3 col-form-label">Golf Reg.Number:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" 
							   id="golfregnum" name="golfregnum" placeholder="Golf Registration Number" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="countryissued" class="col-sm-3 col-form-label">Country of Issue:</label>
					<div class="col-sm-7">
						<select class="form-control" id="countryissued" name="countryissued" required>
							<option selected="selected">Ireland</option>
							<option>England</option>
							<option>Scotland</option>
							<option>Wales</option>
						</select>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="dateofissue" class="col-sm-3 col-form-label">Date of Issue:</label>
					<div class="col-sm-7">
						<div class='input-group date' id='dateofissue'>
							<input type='date' class="form-control" name="dateofissue" required />
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="homeclubname" class="col-sm-3 col-form-label">Home Club Name:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" 
							   id="homeclubname" name="homeclubname" placeholder="Home Club Name" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="homecluburl" class="col-sm-3 col-form-label">Home Club URL:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" 
							   id="homecluburl" name="homecluburl" placeholder="Home Club URL" required>
					</div>
				</div>

				<div id="submitApplication" style="text-align: center;">
					<button type="submit" class="btn btn-primary" name="user">Submit Application</button>
				</div>

			</form>
			
			<c:if test="${userEmailIsNotUnique != null}">
				<div id="errorMessage">
					<c:out value="${userEmailIsNotUnique}" />
				</div>
			</c:if>
		</div>
		<!-- End Apply for Membership Form -->
		

</body>
</html>