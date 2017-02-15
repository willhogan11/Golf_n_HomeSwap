<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	 <title>Place ID Finder</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDtko2ncKToOp2KYet1Oigq2wTuWzH2zBs&libraries=places&callback=initMap"async defer></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/addlocation.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/addlocation.css" />
      
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

	<div class="container" style="position: absolute;
								  margin: auto;
								  top: 0;
								  right: 0;
								  bottom: 0;
								  left: 0;
								  width: 750px;
								  height: 600px;
								  border: 3px solid black;
								  border-radius: 10px;
								  padding: 15px;
								  background-color: white;"> 	
								  
							<input id="pac-input" class="controls" type="text" placeholder="Enter a location">
	
							<div class="container" id="map">
								
							</div>
						
							<div id="infowindow-content">
							  <span id="place-name"  class="title"></span><br>Place ID 
							  <span id="place-id"></span><br>
							  <span id="place-address"></span>
							  
							</div>
							
							
							<div style="text-align: center; margin-top: 10px;"><button type="button" class="btn btn-success" id="next3">Next Step</button></div>
    </div>

	
		

</body>
</html>