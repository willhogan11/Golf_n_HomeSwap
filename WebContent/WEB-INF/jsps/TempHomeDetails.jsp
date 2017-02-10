<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/firsttimelogin.css" />
	<title>Temp Home Details (Step 2)</title>
</head>

<body>
	<div style="text-align:center; color: white;" class="container">
		<h1>Add a Home:</h1>
		<ul class="pagination">
			<li><a href="#">1. Home Type ></a></li>
			<li><a href="#" style="color: green; font-weight: bold;">2. Home Details ></a></li>
			<li><a href="#">3. Location ></a></li>
			<li><a href="#">4. Availability ></a></li>
			<li><a href="#">5. Add Photos ></a></li>
		</ul>
	</div>
	
	
	<div class="container" style="position: absolute;
								  margin: auto;
								  top: 0;
								  right: 0;
								  bottom: 0;
								  left: 0;
								  width: 700px;
								  height: 400px;
								  border: 3px solid black;
								  border-radius: 10px;
								  padding: 25px;
								  background-color: white;"> 	
		

		<!-- :::::::::::::::::::::::::::::: ADD HOME FORM ::::::::::::::::::::::::::::::: -->
		<form class="form-horizontal" id="addHome" name='addHome' method="" action="">
			
			<div class="col-xs-12" class="form-group">
				<label for="title">Title:</label>
				<input placeholder="e.g A Stunning architect design mews house" type="text" 
					   class="form-control" name="title" id="title">
			</div>
			
			<div class="col-xs-12" class="form-group">
				<br>
				<label for="comment">More about your home and neighbourhood:</label>
				<textarea placeholder="e.g. Our stunning home has a wonderful....." class="form-control" rows="5" name="moreinfoabouthome" id="moreinfoabouthome"></textarea>
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
				<button type="submit" class="btn btn-success">Next Step</button>
			</div>

		</form>
		<!-- ::::::::::::::::::::::::::::: END FORM :::::::::::::::::::::::::::::::::: -->

	</div>
	
</body>
</html>