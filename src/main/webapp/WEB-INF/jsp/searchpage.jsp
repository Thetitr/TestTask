<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Search</title>
  <link href="error.css" rel="stylesheet" type="text/css" />
</head>
<body>

<style type="text/css" >
  .error{
    color: red;
  }

  input.error {
    border: 1px solid red;
  }

</style>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script type="text/javascript">
  $(function(){

    $('#idForm').validate({
      rules: {
        id: {
          required: true,
          digits: true

        }
      },
      messages: {
        id: {
          required: "Please enter ID"

        }
      }

    });

    $('#nameForm').validate({
      rules: {
        name: {
          required: true


        }
      },
      messages: {
        name: {
          required: "Please enter name"

        }
      }

    });

    $('#ageForm').validate({
      rules: {
        from: {
          required: true,
          digits: true      },
        to: {
          required: true,
          digits: true
        }

      },
      messages: {
from:{
  required: "",
  digits: ""

},
        to:{required: "Please enter min and max value" }
      }

    })
  })


</script>

<h1>Search</h1>

<!-- Declaring URLs -->
<c:url var="addUrl" value="/main/users/add"/>
<c:url var="mainUrl" value="/main"/>
<c:url var="allUsersUrl" value="/main/users?page=1"/>
<c:url var="searchByIDUrl" value="/main/search/id"/>
<c:url var="searchByNameUrl" value="/main/search/name"/>
<c:url var="searchByAdminUrl" value="/main/search/admin"/>
<c:url var="searchByAgeUrl" value="/main/search/age"/>

<form id="idForm"  method="POST"  action="${searchByIDUrl} ">
  <table>
    <tr>
      <td>ID:</td>
      <td><input type="text" name="id" ></td>
      <td><input type="submit"   value="Find by ID" ></td>
    </tr>
  </table>
</form>

<form id="nameForm"  method="get"  action="${searchByNameUrl} ">
  <table>
    <tr>
      <td>Name:</td>
      <td><input type="text" name="name" ></td>
      <td><input type="hidden" name="page" value="1"></td>
      <td><input type="submit"   value="Find by name" ></td>
    </tr>
  </table>
</form>

<form id="ageForm"  method="get"  action="${searchByAgeUrl} ">
  <table>
    <tr>
      <td>Age from:</td>
      <td><input type="hidden" name="page" value="1"></td>
      <td><input type="text" name="from" size="2"> </td>
      <td> to </td>
      <td><input type="text" name="to" size="2"></td>
      <td><input type="submit"   value="Find by age" ></td>
    </tr>
  </table>
</form>

<form id="adminForm"  method="get"  action="${searchByAdminUrl} ">
  <table>
    <tr>
      <td>Admin:</td>
      <td><input type="hidden" name="page" value="1"></td>
      <td><input type="radio" name="admin" value="true" >Yes</td>
      <td><input type="radio" name="admin" value="false">No</td>
      <td><input type="submit"   value="Admin search" ></td>
    </tr>
  </table>
</form>

<p><a href="${addUrl}">Add user</a></p>
<p><a href="${allUsersUrl}">All users</a></p>
<p><a href="${mainUrl}">Main</a></p>

</body>
</html>