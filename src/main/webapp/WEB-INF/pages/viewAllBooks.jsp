<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Books</title>
</head>
<body>
	<mvc:form modelAttribute="book" action="bookUpdate.mvc">
		<table>
			<tr>
				<th>Selection</th>
				<th>Title</th>
				<th>Author</th>
				<th>Genre</th>
				<th>Year Publised</th>
			</tr>
			<c:forEach items="${all}" var="item">
				<tr>
					<td><input type="radio" name="xid"
						value="${item.id}"></td>
					<td>${item.title}</td>

					<td>${item.author}</td>

					<td>${item.genre}</td>

					<td>${item.year_published}</td>

				</tr>


			</c:forEach>
		</table>
<br />
		<input type="submit" value="Edit Selected Book"
			name="doThisToBook">
		<input type="submit" value="Delete Selected Book"
			name="doThisToBook">
	</mvc:form>
	<br />
	<a href="bookForm.mvc">Add a new book</a>
	<br />
	<a href="home.mvc">Back to main menu</a>
	<br />
</body>
</html>