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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/homepage.css" />
	<title>Add a Home</title>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">
	
	<div id="js" style="background-color: white; height: 30px;"></div>

	<div style="text-align:center; color: white;" class="container">
		<h1>Add a Home:</h1>
		<ul class="pagination" id="bookmarks">
			<li>1. Home Type ></li>
			<li id="b2">2. Home Details ></li>
			<li>3. Location ></li>
			<li>4. Availability ></li>
			<li>5. Add Photos ></li>
		</ul>
	</div>
	
	
	<form class="form-horizontal" id="addHome" name='addHome' method="post" action="">
	
	<div id="formswap">
	
		<div class="container form" id="form1">
		
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Bedrooms:</label>
					<select class="form-control" id="bedrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>					
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Type of Property:</label>
					<select class="form-control" id="typeOfProp">
						<option selected="selected">Select...</option>
						<option>Bungalow</option>
						<option>Semi-Detached</option>
						<option>Terraced</option>
						<option>Dormer</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Pet Friendly:</label>
					<select class="form-control" id="petFriendly">
						<option selected="selected">Select...</option>
						<option>Yes</option>
						<option>No</option>
						<option>I Don't Mind</option>
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Bathrooms:</label>
					<select class="form-control" id="bathrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Sleeps:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Privacy Options:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Private (Show to me only)</option>
						<option>Public (Show to all members)</option>
						<option>Protected (Show to selected members)</option>
					</select>
				</div>
			</div>
			
			<div>
				<button type="button" class="btn btn-success" id="next1">Next Step</button>
			</div>
			
	
		</div>
		
		<div class="container" id="form2"> 	
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Bedrooms:</label>
					<select class="form-control" id="bedrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>					
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Type of Property:</label>
					<select class="form-control" id="typeOfProp">
						<option selected="selected">Select...</option>
						<option>Bungalow</option>
						<option>Semi-Detached</option>
						<option>Terraced</option>
						<option>Dormer</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Pet Friendly:</label>
					<select class="form-control" id="petFriendly">
						<option selected="selected">Select...</option>
						<option>Yes</option>
						<option>No</option>
						<option>I Don't Mind</option>
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Bathrooms:</label>
					<select class="form-control" id="bathrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Sleeps:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Privacy Options:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Private (Show to me only)</option>
						<option>Public (Show to all members)</option>
						<option>Protected (Show to selected members)</option>
					</select>
				</div>
			</div>
			
			<div>
				<button type="button" class="btn btn-success" id="next2">Next Step</button>
			</div>
	
		</div>
		
		
		
		<div class="container" id="form3"> 	
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Bedrooms:</label>
					<select class="form-control" id="bedrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>					
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Type of Property:</label>
					<select class="form-control" id="typeOfProp">
						<option selected="selected">Select...</option>
						<option>Bungalow</option>
						<option>Semi-Detached</option>
						<option>Terraced</option>
						<option>Dormer</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Pet Friendly:</label>
					<select class="form-control" id="petFriendly">
						<option selected="selected">Select...</option>
						<option>Yes</option>
						<option>No</option>
						<option>I Don't Mind</option>
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Bathrooms:</label>
					<select class="form-control" id="bathrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Sleeps:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Privacy Options:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Private (Show to me only)</option>
						<option>Public (Show to all members)</option>
						<option>Protected (Show to selected members)</option>
					</select>
				</div>
			</div>
			
			<div>
				<button type="button" class="btn btn-success" id="next3">Next Step</button>
			</div>
	
		</div>
		
		
		
		<div class="container" id="form4"> 	
				
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Bedrooms:</label>
					<select class="form-control" id="bedrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>					
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Type of Property:</label>
					<select class="form-control" id="typeOfProp">
						<option selected="selected">Select...</option>
						<option>Bungalow</option>
						<option>Semi-Detached</option>
						<option>Terraced</option>
						<option>Dormer</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Pet Friendly:</label>
					<select class="form-control" id="petFriendly">
						<option selected="selected">Select...</option>
						<option>Yes</option>
						<option>No</option>
						<option>I Don't Mind</option>
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Bathrooms:</label>
					<select class="form-control" id="bathrooms">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-6">
					<label for="">Sleeps:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Select...</option>
						<c:forEach var="i" begin="0" end="10">
							<option>${i}</option>
						</c:forEach>	
					</select>
				</div>
				<div class="col-xs-6">
					<label for="">Privacy Options:</label>
					<select class="form-control" id="sleeps">
						<option selected="selected">Private (Show to me only)</option>
						<option>Public (Show to all members)</option>
						<option>Protected (Show to selected members)</option>
					</select>
				</div>
			</div>
			
			<div>
				<button type="submit" class="btn btn-success">Add Home</button>
			</div>
	
		</div>
		
	
	</div>

	</form>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/formswapping.js"></script>
	

</body>
</html>