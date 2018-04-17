<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Book</title>
</head>
<body>
<h2>Edit Vehicle</h2>
	<mvc:form modelAttribute="book" action="bookEditResult.mvc">
		<table>
			<tr>
				<td>Book Title:</td>
				<td><input type="text" name="title"
					value="${bookToEdit.title}"></td>
			</tr>
			<tr>
				<td>Author:</td>
				<td><input type="text" name="author"
					value="${bookToEdit.author }"></td>
			</tr>
			<tr>
				<td>Genre:</td>
				<td><input type="text" name="genre"
					value="${bookToEdit.genre }"></td>
			</tr>
			<tr>
				<td>Year Published:</td>
				<td><input type="text" name="year_published"
					value="${bookToEdit.year_published }"></td>
			</tr>
		</table>
		<br />
		<input type="hidden" name="id"
			value="${bookToEdit.id }">
		<input type="submit" value="Save Edited book">

	</mvc:form>
	<a href="viewAllBooks.mvc">View all Books</a>
	<a href="home.mvc">Back to main menu</a>
</body>
</html>