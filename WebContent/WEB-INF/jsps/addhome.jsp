<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDtko2ncKToOp2KYet1Oigq2wTuWzH2zBs&libraries=places&callback=initMap"async defer></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/addlocation.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/addphotos.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/homepage.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/addlocation.css" />
	<title>Add a Home</title>
	
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

<div id="js" style="background-color: white; height: 30px;"></div>

	<div style="text-align:center; color: white;" class="container">
		<h1>Add a Home:</h1>
		<ul class="pagination" div="nav">
			<li><a id="nav1" href="#" style="color: green; font-weight: bold;">1. Home Type ></a></li>
			<li><a id="nav2" href="#">2. Home Details ></a></li>
			<li><a id="nav3" href="#">3. Location ></a></li>
			<li><a id="nav4" href="#">4. Availability ></a></li>
			<li><a id="nav5" href="#">5. Add Photos ></a></li>
		</ul>
	</div>
	
	
	<!-- :::::::::::::::::::::::::::::: ADD HOME FORM ::::::::::::::::::::::::::::::: -->
	<sf:form class="form-horizontal" id="addHome" name='addHome' method="post" action="">
	
		<!-- 'formswap' is the main container for all blocks with forms -->
		<div id="formswap">
		
			<!--
			1) Home type - this is the first step of home adding completion form.
			-->
			<div class="container form" id="form1">
			
				<div class="col-xs-12" class="form-group">
				<label for="title">Title:</label>
				<input placeholder="e.g A Stunning architect design mews house" type="text" 
					   class="form-control" name="title" id="title" required>
				</div>
				
				<div class="col-xs-12" class="form-group">
					<br>
					<label for="comment">More about your home and neighbourhood:</label>
					<textarea placeholder="e.g. Our stunning home has a wonderful....." class="form-control" rows="5" 
							  name="moreinfoabouthome" id="moreinfoabouthome" required></textarea>
				</div>
		
				<label for="features">Features:</label>
				<div class="col-xs-12">
					<label class="checkbox-inline">
						<input type="checkbox" value="">Garden&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Balcony&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Pool&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Cleaner&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
				<div class="col-xs-12">
					<label class="checkbox-inline">
						<input type="checkbox" value="">Wifi&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Cable T.V.&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Gym&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Air Conditioning&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
				<div class="col-xs-12">
					<label class="checkbox-inline">
						<input type="checkbox" value="">Equipment for Kids&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" value="">Disabled Access&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
	
				<div class="pull-right">
					<button type="button" class="btn btn-success" id="next1">Next Step</button>
				</div>
			
			</div>
			
			
			<!-- 
			2) Home details - this is the second step of home adding completion form.
			 -->
			<div class="container form" id="form2"> 	
					
				<div class="form-group">
					<div class="col-xs-6">
						<label for="">Bedrooms:</label>
						<select class="form-control" id="bedrooms">
							<!-- <option selected="selected">Select...</option> -->
							<c:forEach var="i" begin="1" end="10">
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
							<!-- <option selected="selected">Select...</option> -->
							<c:forEach var="i" begin="1" end="10">
								<option>${i}</option>
							</c:forEach>	
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-xs-6">
						<label for="">Sleeps:</label>
						<select class="form-control" id="sleeps">
							<!-- <option selected="selected">Select...</option> -->
							<c:forEach var="i" begin="1" end="10">
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
			
			
			<!-- 
			3) Location - this is the third step of home adding completion form.
			 -->
			<div class="container form" id="form3">
			
				<input id="pac-input" class="controls" type="text" placeholder="Enter a location" required>
	
				<div class="container" id="map">
					
				</div>
			
				<div id="infowindow-content">
				  <span id="place-name"  class="title"></span><br>Place ID 
				  <span id="place-id"></span><br>
				  <span id="place-address"></span>
				  
				</div>
				
				<div style="text-align: center; margin-top: 10px;">
					<button type="button" class="btn btn-success" id="next3">Next Step</button>
				</div>
 
			</div>
			
			
			<!-- 
			4) Availability - this is the third step of home adding completion form.
			 -->
			<div class="container form" id="form4">
 				<h1 style="text-align: center;">Your Home Availability</h1>
						  		  
			  	<div class="form-group row">
					<label for="dateofissue" class="col-sm-3 col-form-label">Available From:</label>
					<div class="col-sm-7">
						<div class='input-group date' id='availablefrom'>
							<input type='date' class="form-control" name="availablefrom" required />
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="dateofissue" class="col-sm-3 col-form-label">Available To:</label>
					<div class="col-sm-7">
						<div class='input-group date' id='availableto'>
							<input type='date' class="form-control" name="availableto" required />
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
						  		  
	 		  	<div style="text-align: center; margin-top: 10px;">
	 		  		<button type="button" class="btn btn-success" id="next4">Next Step</button>
	 		  	</div>
			</div>
			
			
			<!-- 
			(5 Add photos of your Home
			-->
			<!-- Reference: https://www.abeautifulsite.net/whipping-file-inputs-into-shape-with-bootstrap-3 -->
			
			<!-- <h1 style="text-align: center;">Add Photos</h1> --> 
			
			<div id="form5" class="container" style="position: absolute; margin: auto; top: 0; right: 0; bottom: 0;
	  		     left: 0; width: 500px; height: 250px; border: 3px solid black; border-radius: 10px; padding: 15px; background-color: white;"> 
	            <h3>Add one or more photos</h3>
	            <div class="input-group">
	                <label class="input-group-btn">
	                    <span class="btn btn-primary">
	                        Browse&hellip; <input type="file" style="display: none;" multiple>
	                    </span>
	                </label>
	                <input type="text" class="form-control" readonly>
	            </div>
	             <div style="text-align: center; margin-top: 20px;"><button type="button" class="btn btn-success" id="next5">Add Photos and Finish</button></div>
	        </div>
	

	<!-- 		<!-- 
			
			 -->
			<div class="container form" id="form5">
						  		  
	 		  	<div style="text-align: center; margin-top: 10px;">
	 		  		<button type="submit" class="btn btn-success" id="addHouse">Add House</button>
	 		  	</div>
			</div> -->
			
		</div>
	
	</sf:form>
	<!-- ::::::::::::::::::::::::::::: END FORM :::::::::::::::::::::::::::::::::: -->
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/formswapping.js"></script>

</body>
</html>