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
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<title>Admin Page</title>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

<h1 style="text-align: center; color: white; font-weight: bolder;">Admin Page</h1>

<div class="container" style="background-color: white; padding: 10px; border: solid 2px black; width: 100%;">
	<table class="table table-striped">
		<thead>
		    <tr>
		        <th>Firstname</th>
		        <th>Surname</th>
		        <th>Email</th>
		        <th>Golf Reg Num</th>
		        <th>Country Issued</th>
		        <th>Home Club Name</th>
		        <th>Home Club URL</th>
		        <th>Access Level</th>
		        <th>Visibility</th>
		    </tr>
		</thead>
		<tbody>
			<c:forEach var="candidate" items="${users}" >
			    <tr>
			        <td><c:out value="${candidate.firstname}" /></td>
			        <td><c:out value="${candidate.surname}" /></td>
			        <td><c:out value="${candidate.email}" /></td>
			        <td><c:out value="${candidate.golfregnum}" /></td>
			        <td><c:out value="${candidate.countryissued}" /></td>
			        <td><c:out value="${candidate.homeclubname}" /></td>
			        <td><c:out value="${candidate.homecluburl}" /></td>
			        <td><c:out value="${candidate.useraccesslevel}" /></td>
			        <td><c:out value="${candidate.uservisibility}" /></td>
			        
			        
			        
			        <td><a href="<c:url value='approve?u=${candidate.id}' />"><button class="btn btn-success btn-sm">Approve</button></a></td>
			        <td><button class="btn btn-danger btn-sm">Decline</button></td>
			        
			    </tr>
		    </c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>