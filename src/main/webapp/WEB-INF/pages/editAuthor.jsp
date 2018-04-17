<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Author</title>
</head>
<body>
<h2>Edit Author</h2>
	<mvc:form modelAttribute="author" action="authorEditResult.mvc">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstname"
					value="${authorToEdit.firstname}"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastname"
					value="${authorToEdit.lastname }"></td>
			</tr>
			
		</table>
		<br />
		<input type="hidden" name="id"
			value="${authorToEdit.id }">
		<input type="submit" value="Save Edited Author">

	</mvc:form>
	<a href="viewAllAuthors.mvc">View all Authors</a>
	<a href="home.mvc">Back to main menu</a>
</body>
</html>