<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/admin.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<Title>Users Homes</Title>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

<h1 style="text-align: center; color: white;">Your Houses at a glance.....</h1>

<div class="container" style="background-color: white; padding: 10px; border: solid 2px black;">
	<table class="table table-striped">
		<thead>
		    <tr>
		        <th>Title</th>
		        <th>Home Details</th>
		        <th>Bedrooms</th>
		        <th>Property Type</th>
				<th>Pet Friendly</th>
				<th>Bathrooms</th>
				<th>Sleeps</th>
				<th>Home Visibility</th>
				<th>Garden</th>
				<th>Balcony</th>
				<th>Pool</th>
				<th>Cleaner</th>
				<th>Wifi</th>
				<th>Cable TV</th>
				<th>Gym</th>
				<th>Air Con</th>
				<th>Equiped for Kids</th>
				<th>Disabled Access</th>
				<th>Address</th>
				<th>Available From</th>
				<th>Available To</th>
		    </tr>
		</thead>
		
		<tbody>
			<c:forEach var="usersHomes" items="${homes}">
				<tr>
					<td><c:out value="${usersHomes.title}"></c:out></td>
					<td><c:out value="${usersHomes.homeDetails}"></c:out></td>
					<td><c:out value="${usersHomes.bedrooms}"></c:out></td>
					<td><c:out value="${usersHomes.propertyType}"></c:out></td>
					<td><c:out value="${usersHomes.petFriendly}"></c:out></td>
					<td><c:out value="${usersHomes.bathrooms}"></c:out></td>
					<td><c:out value="${usersHomes.sleeps}"></c:out></td>
					<td><c:out value="${usersHomes.homevisibility}"></c:out></td>
					<td><c:out value="${usersHomes.garden}"></c:out></td>
					<td><c:out value="${usersHomes.balcony}"></c:out></td>
					<td><c:out value="${usersHomes.pool}"></c:out></td>
					<td><c:out value="${usersHomes.cleaner}"></c:out></td>
					<td><c:out value="${usersHomes.wifi}"></c:out></td>
					<td><c:out value="${usersHomes.cabletv}"></c:out></td>
					<td><c:out value="${usersHomes.gym}"></c:out></td>
					<td><c:out value="${usersHomes.aircon}"></c:out></td>
					<td><c:out value="${usersHomes.equipforkids}"></c:out></td>
					<td><c:out value="${usersHomes.disabledaccess}"></c:out></td>
					<td><c:out value="${usersHomes.address}"></c:out></td>
					<td><c:out value="${usersHomes.availableFrom}"></c:out></td>
					<td><c:out value="${usersHomes.availableTo}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
</div>

</body>
</html>