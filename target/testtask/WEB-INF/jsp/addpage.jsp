<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>

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

<!-- Validation -->
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script type="text/javascript">
	$(function(){

		$('#addForm').validate({
			rules: {
				name: "required",
				age: {
					required: true,
					range: [0,100],
					digits: true,

				}
			},

			messages: {
				name: "Please enter your name.",
				age: {
					required: "Please enter your age.",
					range: "Your age must be between 0 and 100."
				}
			}

		});

	});
</script>
<h1>Create New User</h1>

<c:url var="saveUrl" value="/main/users/add" />
<form:form id="addForm" modelAttribute="userAttribute" method="POST" action="${saveUrl} ">
	<table>
		<tr>
			<td><form:label path="name">Name:</form:label></td>
			<td><form:input path="name"/></td>
		</tr>

		<tr>
			<td><form:label path="age">Age</form:label></td>
			<td><form:input path="age"/></td>
		</tr>

		<tr>
			<td><form:label path="admin"/>Admin</td>
			<td><form:checkbox path="admin"></form:checkbox></td>

		</tr>
	</table>

	<input type="submit" value="Save" />
</form:form>


</body>
</html>