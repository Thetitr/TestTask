<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
</head>
<body>

<c:if test="${user!=null}">
  <h1>User with ID ${user.id}</h1>
</c:if>

<!-- Declaring URLs -->
<c:url var="addUrl" value="/main/users/add"/>
<c:url var="mainUrl" value="/main"/>
<c:url var="allUsers" value="/main/users?page=1" />
<c:url var="searchUrl" value="/main/search"/>

<!-- User table -->
<c:if test="${user!=null}">
<table border="3" style="border-color: black"  cellpadding="1" cellspacing="1">
  <c:url var="editUrl" value="/main/users/edit?id=${user.id}" />
  <c:url var="deleteUrl" value="/main/users/delete?id=${user.id}" />
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
    <tr>
      <td style=""><b><c:out value="${user.id}" /></b></td>
      <td><c:out value="${user.name}" /></td>
      <td><c:out value="${user.age}" /></td>
      <td><c:out value="${user.admin}" /></td>
      <td><c:out value="${user.createdDate}" /></td>
      <td><a href="${editUrl}" >Edit</a></td>
      <td><a href="${deleteUrl}">Delete</a></td>
    </tr>

  </tbody>
</table>
</c:if>
<c:if test="${user==null}">
  There is no user with this ID.
</c:if>
<p><a href="${addUrl}">Add user</a></p>
<p><a href="${searchUrl}">Search user</a></p>
<p><a href="${allUsers}">All users</a></p>
<p><a href="${mainUrl}">Main</a></p>



</body>
</html>