<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Book Form Handling</title>
</head>
<body>
<h2>Add Book Information</h2>
	<mvc:form modelAttribute="book" action="bookResult.mvc">
		<table>
			<tr>
				<td><mvc:label path="title">Title</mvc:label></td>
				<td><mvc:input path="title" /></td>
			</tr>
			<tr>
				<td><mvc:label path="author">Author</mvc:label></td>
				<td><mvc:input path="author" /></td>
			</tr>
			<tr>
				<td><mvc:label path="genre">Genre</mvc:label></td>
				<td><mvc:input path="genre" /></td>
			</tr>
			<tr>
				<td><mvc:label path="year_published">Year Published</mvc:label></td>
				<td><mvc:input path="year_published" /></td>
			</tr>
	
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</mvc:form>
	<a href="viewAllBooks.mvc">View All Books</a>
</body>
</html>