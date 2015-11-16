<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Main</title>
    <style type="text/css">
        html{
            height:100%;
        }
        body{
            height:100%;
        }
        .divStyle {
            height: 33%;
            font-size: 10vw;
            text-align: center;

        }
        .blackDiv{
            background-color: black;
            color: white;
        }
        .orangeDiv
        {
            background-color: orangered;

        }
        .box:hover{
            border: 30px solid dodgerblue;
            font-weight: bold;
        }

        a.blackvisited:visited
        {
            color: black;
        }
        a{
            text-decoration: none;
        }
    </style>
</head>

<body>

<!-- Declaring URLs -->
<c:url var="allUsersURL" value="/main/users?page=1" />
<c:url var="addUrl" value="/main/users/add" />
<c:url var="searchURL" value="/main/search" />

<a href="${allUsersURL}"><div id="allUsers" class="divStyle blackDiv box"   >All users</div></a>
<a href="${addUrl}" class="blackvisited"><div id="add" class="divStyle orangeDiv box" >Add user</div></a>
<a href="${searchURL}"><div id="search" class="divStyle blackDiv box">Search user</div></a>

</body>
</html>