<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/admin.css" />
	
	<title>Admin Page</title> 
</head>

<body style="background-image: url('${pageContext.request.contextPath}/res/img/golf.jpg');">

<h1 style="text-align: center; color: white; font-weight: bolder;">Admin Page</h1>

<!-- Admin interactive panel here -->
<div id="admin_panel">
	<div class="interactiv-panel" id="active_user">
    	<sec:authorize access="isAuthenticated()">
    		<div id="blockWelcome">
    			<c:if test="${email != null}">
	    		Hi, <c:out value="${username}"></c:out> <span>(<c:out value="${role}"></c:out>)</span>
	    		</c:if>
    		</div>
    	</sec:authorize>
	</div>
	
	<a href="${pageContext.request.contextPath}/j_spring_security_logout"><div class="interactiv-panel button" id="logout_button">Logout</div></a>
	
	<a href="${pageContext.request.contextPath}/"><div class="interactiv-panel button" id="home_button">Home</div></a>
</div>

<div class="container" style="background-color: white; padding: 10px; border: solid 2px black; width: 100%;">
	<table class="table table-striped">
		<thead>
		    <tr>
		        <th>Firstname</th>
		        <th>Surname</th>
		        <th>Email</th>
		        <th>Golf Reg Num</th>
		        <th>Country Issued</th>
		        <th>Date Issued</th>
		        <th>Home Club Name</th>
		        <th>Home Club URL</th>
		        <th>Access Level</th>
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
			        <td><c:out value="${candidate.dateofissue}" /></td>
			        <td><c:out value="${candidate.homeclubname}" /></td>
			        <td><c:out value="${candidate.homecluburl}" /></td>
			        <td><c:out value="${candidate.useraccesslevel}" /></td>
			        
			        <c:choose>
			        	<c:when test="${candidate.useraccesslevel == 'CANDIDATE'}">
			        		<td><a href="<c:url value='approve?u=${candidate.id}' />"><button class="btn btn-success btn-sm">Approve</button></a></td>
			        		<td><a href="<c:url value='decline?u=${candidate.id}' />"><button class="btn btn-danger btn-sm">Decline</button></a></td>
			        	</c:when>
			        	
			        	<c:when test="${candidate.useraccesslevel == 'TEMPORARY'}">
			        		<td><div id="approved_label">APPROVED</div></td>
			        		<td><a href="<c:url value='suspend?u=${candidate.id}' />"><button class="btn btn-warning btn-sm">Suspend</button></a></td>
			        	</c:when>
			        	
			        	<c:when test="${candidate.useraccesslevel == 'REGISTERED'}">
			        		<td><div id="approved_label">REGISTERED</div></td>
			        		<td><a href="<c:url value='suspend?u=${candidate.id}' />"><button class="btn btn-warning btn-sm">Suspend</button></a></td>
			        	</c:when>
			        	
			        	<c:when test="${candidate.useraccesslevel == 'SUSPENDED'}">
			        		<td><div id="approved_label">SUSPENDED</div></td>
			        		<td><a href="<c:url value='reactivate?u=${candidate.id}' />"><button class="btn btn-info btn-sm">Reactivate</button></a></td>
			        	</c:when>
			        	
			        	<c:when test="${candidate.useraccesslevel == 'DECLINED'}">
			        		<td><div id="approved_label">DECLINED</div></td>
			        	</c:when>
			        </c:choose>
			        
			    </tr>
		    </c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>