<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Candidate Approval Page</title>
<style>
td, th{
	border: 1px dotted grey;
}
</style>
</head>
<body>

<h1>Test</h1>


<table>
	<thead>
	    <tr>
	        <th>Firstname</th>
	        <th>Surname</th>
	        <th>Email</th>
	        <th>Golf Reg Num</th>
	        <th>Country Issued</th>
	        <th>Home Club Name</th>
	        <th>Home Club URL</th>
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
		        <td><button>Approve</button></td>
		        <td><button>Decline</button></td>
		    </tr>
	    </c:forEach>
	</tbody>
</table>

</body>
</html>