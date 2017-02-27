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
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script> 
	<script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/webshim.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/homepage.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/addlocation.css" />
	<title>Add a Home</title>
	
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">


	<div style="text-align:center; color: white;" class="container">
		<h1>Add a Home:</h1>
		<ul class="pagination" id="bookmarks">
			<li>1. Home Type ></li>
			<li>2. Home Details ></li>
			<li>3. Location ></li>
			<li>4. Availability ></li>
			<li>5. Add Photos ></li>
		</ul>
	</div>
	
	
	<!-- :::::::::::::::::::::::::::::: ADD HOME FORM ::::::::::::::::::::::::::::::: -->
	<sf:form class="form-horizontal" name='home' method="post" action="${pageContext.request.contextPath}/docreatehome">
	
		<!-- 'formswap' is the main container for all blocks with forms -->
		<div id="formswap">
		
			<!--
			1) Home type - this is the first step of home adding completion form.
			-->
			<div class="container form" id="form1">
			
				<div class="col-xs-12" class="form-group">
				<label for="title">Title:</label>
				<input placeholder="e.g A Stunning architect design mews house" type="text" 
					   class="form-control" name="title" id="title" >
				</div>
				
				<div class="col-xs-12" class="form-group">
					<br>
					<label for="comment">More about your home and neighbourhood:</label>
					<textarea placeholder="e.g. Our stunning home has a wonderful....." class="form-control" rows="5" 
							  name="homeDetails" id="homeDetails" ></textarea>
				</div>
		
				<label for="features">Features:</label>
				<div class="col-xs-12">
					<label class="checkbox-inline">
						<input name="garden" type="checkbox" value="true">Garden&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="balcony" type="checkbox" value="true">Balcony&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="pool" type="checkbox" value="true">Pool&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="cleaner" type="checkbox" value="true">Cleaner&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
				<div class="col-xs-12">
					<label class="checkbox-inline">
						<input name="wifi" type="checkbox" value="true">Wifi&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="cabletv" type="checkbox" value="true">Cable T.V.&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="gym" type="checkbox" value="true">Gym&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="aircon" type="checkbox" value="true">Air Conditioning&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
				<div class="col-xs-12">
					<label class="checkbox-inline">
						<input name="equipforkids" type="checkbox" value="true">Equipment for Kids&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
					<label class="checkbox-inline">
						<input name="disabledaccess" type="checkbox" value="true">Disabled Access&nbsp;&nbsp;&nbsp;&nbsp;
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
						<select class="form-control" id="bedrooms" name="bedrooms">
							<!-- <option selected="selected">Select...</option> -->
							<c:forEach var="i" begin="1" end="10">
								<option>${i}</option>
							</c:forEach>					
						</select>
					</div>
					<div class="col-xs-6">
						<label for="">Type of Property:</label>
						<select class="form-control" id="propertyType" name="propertyType">
							<option selected="selected" value="NOT_SPECIFIED">Select...</option>
							<option value="BUNGALOW">Bungalow</option>
							<option value="SEMI_DETACHED">Semi-Detached</option>
							<option value="TERRACED">Terraced</option>
							<option value="FLAT">Flat</option>
							<option value="END_OF_TERRACE">End_Of_Terrace</option>
							<option value="COTTAGE">Cottage</option>
							<option value="DETACHED">Detached</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-xs-6">
						<label for="">Pet Friendly:</label>
						<select class="form-control" id="petFriendly" name="petFriendly">
							<option selected="selected" value="false">Select...</option>
							<option value="true">Yes</option>
							<option value="false">No</option>
						</select>
					</div>
					<div class="col-xs-6">
						<label for="">Bathrooms:</label>
						<select class="form-control" id="bathrooms" name="bathrooms">
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
						<select class="form-control" id="sleeps" name="sleeps">
							<!-- <option selected="selected">Select...</option> -->
							<c:forEach var="i" begin="1" end="10">
								<option>${i}</option>
							</c:forEach>	
						</select>
					</div>
					<div class="col-xs-6">
						<label for="">Privacy Options:</label>
						<select class="form-control" name="homevisibility">
							<option selected="selected" value="PRIVATE">Private (Show to me only)</option>
							<option value="PUBLIC">Public (Show to all members)</option>
							<option value="GROUP">Protected (Show to selected members)</option>
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
			
				<input name="address" id="pac-input" class="controls" type="text" placeholder="Enter a location">
	
				<div class="container" id="map">
					
				</div>
			
				<div id="infowindow-content">
				  <span id="place-name" class="title"></span><br>Place ID 
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
						<div class='input-group date' id='availableFrom'>
							<input type='date' class="form-control" name="availableFrom"  />
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="dateofissue" class="col-sm-3 col-form-label">Available To:</label>
					<div class="col-sm-7">
						<div class='input-group date' id='availableTo'>
							<input type='date' class="form-control" name="availableTo"  />
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
			5) Add photos of your Home
			-->
			<!-- Reference: https://www.abeautifulsite.net/whipping-file-inputs-into-shape-with-bootstrap-3 -->
			
			<!-- <h1 style="text-align: center;">Add Photos</h1> --> 
			
			<div id="form5" class="container form"> 
	            <h3>Add one or more photos</h3>
	            <div class="input-group">
	                <label class="input-group-btn">
	                    <span class="btn btn-primary">
	                        Browse&hellip; <input type="file" style="display: none;" multiple>
	                    </span>
	                </label>
	                <input type="text" class="form-control" readonly>
	            </div>
	            
	            <!-- Submit button -->
				<div style="text-align: center; margin-top: 20px;">
					<button type="submit" class="btn btn-success" id="addHouse">Add Photos and Finish</button>
				</div>
	        </div>
			
		</div>
	
	</sf:form>
	<!-- ::::::::::::::::::::::::::::: END FORM :::::::::::::::::::::::::::::::::: -->
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/formswapping.js"></script>

</body>
</html>