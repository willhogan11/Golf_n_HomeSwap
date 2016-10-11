<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<title>Apply for Membership</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg'); padding: 20px;">

	<!-- Apply for Membership Form -->
		<div class="container" style="position: absolute;margin: auto;top: 0;
									  right: 0;bottom: 0;left: 0;width: 850px;
									  height: auto;border: 3px solid black;border-radius: 10px;
									  padding: 25px;background-color: white;">
			<form>
				<h3 style="text-align: center">Apply for Membership</h3>
				<div class="form-group row">
					<label for="firstname" class="col-sm-2 col-form-label">First Name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" 
							   id="firstname" name="firstname" placeholder="First Name">
					</div>
				</div>
			
				<div class="form-group row">
					<label for="surname" class="col-sm-2 col-form-label">Surname:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" 
							   id="surname" name="surname" placeholder="Surname">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">Email:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" 
							   id="email" name="email" placeholder="Email">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">Golf Reg.Number:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" 
							   id="golfregnum" name="golfregnum" placeholder="Golf Registration Number">
					</div>
				</div>
				
				
				<div class="form-group row">
					<label for="countryissued" class="col-sm-2 col-form-label">Country of Issue:</label>
					<div class="col-sm-10">
						<select class="form-control" id="countryissued" name="countryissued">
							<option selected="selected">-Select-</option>
							<option>Ireland</option>
							<option>England</option>
							<option>Scotland</option>
							<option>Wales</option>
							<option>U.S.A</option>
						</select>
					</div>
				</div>
				
				
				<div class="form-group row">
					<label for="example-date-input" class="col-xs-2 col-form-label">Date of Issue:</label>
					<div class="col-xs-10">
						<input class="form-control" type="date" id="dateofissue" name="dateofissue">
					</div>
				</div>
				
			
				<div class="form-group row" style="text-align: center;">
					<div class="offset-sm-2 col-sm-10">
						<button type="submit" class="btn btn-primary">Submit Application</button>
					</div>
				</div>
			</form>
		</div>
		<!-- End Apply for Membership Form -->

</body>
</html>