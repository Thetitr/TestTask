<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Users</title>
</head>
<body>
<h1>Users</h1>

<!-- Declaring URLs -->
<c:url var="addUrl" value="/main/users/add"/>
<c:url var="mainUrl" value="/main"/>
<c:url var="searchUrl" value="/main/search"/>

<!-- Users table -->
<c:if test="${not empty users}">
	<table border="3" style="border-color: black"  cellpadding="1" cellspacing="1">
		<thead style="background:orangered">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Age</th>
			<th>Admin</th>
			<th>Date</th>
			<th colspan="2">Actions</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${users}" var="user">
			<c:url var="editUrl" value="/main/users/edit?id=${user.id}" />
			<c:url var="deleteUrl" value="/main/users/delete?id=${user.id}" />
			<tr>
				<td style=""><b><c:out value="${user.id}" /></b></td>
				<td><c:out value="${user.name}" /></td>
				<td><c:out value="${user.age}" /></td>
				<td><c:out value="${user.admin}" /></td>
				<td><c:out value="${user.createdDate}" /></td>
				<td><a href="${editUrl}">Edit</a></td>
				<td><a href="${deleteUrl}">Delete</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	<!-- Declaring paging URLs -->
	<br>
	<c:url var="previousUrl" value="/main/users?page=${param.page-1}" />
	<c:url var="nextUrl" value="/main/users?page=${param.page+1}" />

	<!-- Paging table -->
	<table border="3" style="border-color: black; background-color: white" cellpadding="1" cellspacing="1" >
		<tr>
			<td>
				<c:choose>
					<c:when test="${param.page==1}">
						&nbsp;
					</c:when>
					<c:otherwise>
						<a href="${previousUrl}">${param.page-1}</a>
					</c:otherwise>
				</c:choose>
			</td>
			<td style="font-weight: bold">${param.page}</td>
			<td>
				<c:choose>
					<c:when test="${isNext}">
						<a href="${nextUrl}">${param.page+1}</a>
					</c:when>
					<c:otherwise>
						&nbsp;
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>




	<p><a href="${searchUrl}">Search user</a></p>
</c:if>
<c:if test="${empty users}">
	There are currently no users in the list.
</c:if>
<p><a href="${addUrl}">Add user</a></p>

<p><a href="${mainUrl}">Main</a></p>



</body>
</html>