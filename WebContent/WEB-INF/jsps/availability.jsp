<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<title>Availability</title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

	<div class="container" style="position: absolute; margin: auto; top: 0; right: 0; bottom: 0;
						  		  left: 0; width: 750px; height: 300px; border: 3px solid black; 
						  		  border-radius: 10px; padding: 15px; background-color: white;"> 
						  		  
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
					  		  
 		  <div style="text-align: center; margin-top: 10px;"><button type="button" class="btn btn-success" id="next4">Next Step</button></div>

    </div>
    
    
    
</body>
</html>
