<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Add Photos</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript"></script>
	
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

	<div class="container" style="position: absolute; margin: auto; top: 0; right: 0; bottom: 0;
						  		  left: 0; width: 500px; height: 250px; border: 3px solid black; 
						  		  border-radius: 10px; padding: 15px; background-color: white;"> 
						  		  
		<h1 style="text-align: center;">Add Photos</h1>
		
		<!-- Reference: https://www.abeautifulsite.net/whipping-file-inputs-into-shape-with-bootstrap-3 -->
		<div>
            <p>Add one or more photos</p>
            <div class="input-group">
                <label class="input-group-btn">
                    <span class="btn btn-primary">
                        Browse&hellip; <input type="file" style="display: none;" multiple>
                    </span>
                </label>
                <input type="text" class="form-control" readonly>
            </div>
        </div>

		 <div style="text-align: center; margin-top: 20px;"><button type="button" class="btn btn-success" id="next5">Finish</button></div>
						  		  
    </div>
	
</body>
</html>