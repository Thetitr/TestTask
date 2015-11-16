<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Declaring URLs -->
<c:url var="allUsers" value="/main/users?page=1" />
<c:url var="mainUrl" value="/main" />
<c:url var="addUrl" value="/main/users/add" />
<c:url var="searchUrl" value="/main/search"/>

<h1>Users</h1>

<p>You have added a new user at <%= new java.util.Date() %></p>

<p><a href="${addUrl}">Add user</a></p>
<p><a href="${searchUrl}">Search user</a></p>
<p><a href="${allUsers}">All users</a></p>
<p><a href="${mainUrl}">Main</a></p>


</body>
</html>