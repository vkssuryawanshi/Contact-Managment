<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Contact</title>
<link type="text/css"
	  rel="stylesheet"
	  href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link type="text/css"
	  rel="stylesheet"
	  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
</head>
<script>
	function validateform() {
		var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		var phoneNoValidator = /^\d{10}$/;
		
		var firstName = document.myform.firstName.value;
		var lastName = document.myform.lastName.value;
		var email = document.myform.email.value;
		var phoneNo = document.myform.phoneNo.value;

		if (firstName == null || firstName == "") {
			alert("First Name can't be blank");
			document.myform.firstName.focus();
			return false;
		} else if (lastName == null || lastName	 == "") {
			alert("Last Name can't be blank");
			document.myform.lastName.focus();
			return false;
		} else if (!email.match(mailformat)) {
			alert("Invalid email address");
			document.myform.email.focus();
			return false;
		}  else if (!phoneNo.match(phoneNoValidator)) {
			alert("Invalid Mobile Number enter 10 digit number");
			document.myform.phoneNo.focus();
			return false;
		}
	}
</script>
<body>

	<div id="wrapper">
		<div id ="header">
			<h2>Contact Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Enter Details :</h3>
		<form:form name="myform" action="saveCustomer" modelAttribute="customer" method="POST"  onsubmit="return validateform()">
		
			<form:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<td><label>First Name : </label></td>
						<td> <form:input path="firstName" name="firstName"/></td>
					</tr>
					<tr>
						<td><label>Last Name : </label></td>
						<td> <form:input path="lastName" name="lastName"/></td>
					</tr>
					<tr>
						<td><label>Email : </label></td>
						<td> <form:input path="email" name="email"/></td>
					</tr>
					
					<tr>
						<td><label>Phone No. : </label></td>
						<td> <form:input path="phoneNo" name="phoneNo"/></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="save" class="save"/></td>
					</tr>
				</tbody>			
			</table>
		</form:form>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/">Back To List</a>
		</p>
	
	
		</div>

	
	
		

</body>
</html>