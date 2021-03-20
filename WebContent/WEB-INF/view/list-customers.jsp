<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customers</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Contact Management Application</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

			<input type="button" value="Add Contact"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button" />

			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Action</th>
				</tr>

				<c:forEach var="tempCustomer" items="${customers}">

					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}"></c:param>
					</c:url>

					<c:url var="deleteLink" value="/customer/deleteCustomer">
						<c:param name="customerId" value="${tempCustomer.id}"></c:param>
					</c:url>
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>${tempCustomer.phoneNo}</td>
						<th><a href="${updateLink}"> <img alt=""
								src="${pageContext.request.contextPath}/resources/icons/edit.png"
								width="25" height="25"  title="Update"></a>   &nbsp;&nbsp; <a href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this..?')))  return false">
								<img alt=""
								src="${pageContext.request.contextPath}/resources/icons/delete.png"
								width="25" height="25" title="Delete/Deactivate">
						</a></th>

					</tr>


				</c:forEach>

			</table>

		</div>

	</div>

</body>
</html>