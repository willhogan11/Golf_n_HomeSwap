<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
td, th{
	border: 1px dotted grey;
}
</style>
</head>
<body>

<h1>Candidates Testing Page.</h1>
<h4>This is temporary page created to test request for candidates...</h4>
<p>Right now all existing users are retrieved from database.</p>
<p><tt>Next step is to build handler layer to populate just not registered candidates.</tt></p>


<table>
	<thead>
	    <tr>
	        <th>User ID</th>
	        <th>Firstname</th>
	        <th>Surname</th>
	        <th>Email</th>
	    </tr>
	</thead>
	<tbody>
		<c:forEach var="user" items="${users}" >
		    <tr>
		        <td><c:out value="${user.id}" /></td>
		        <td><c:out value="${user.firstname}" /></td>
		        <td><c:out value="${user.surname}" /></td>
		        <td><c:out value="${user.email}" /></td>
		    </tr>
	    </c:forEach>
	</tbody>
</table>

</body>
</html>