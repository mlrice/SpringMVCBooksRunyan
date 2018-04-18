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
<h1>Add Book Information</h1>
	<mvc:form modelAttribute="book" action="bookResult.mvc">
	<style>
		h1 {color: black; font-family: arial; font-size: 180%; margin: 5px; text-align: center;}
		p {color: black; font-family: arial; font-size: 140%; margin: 5px;text-align: center;}   

		table {
		    font-family: arial;
		    border-collapse: collapse;
		    width:70%; margin-left:14%; margin-right:15%;
		}
		
		td, th {
		    border: 2px solid #000000;
		    text-align: left;
		    padding: 4px;
		}
		
		tr:nth-child(odd) {
		    background-color: #FFFFE0;
		}
		input[type=submit] {
			padding: 5px 15px;
			background: #ccc;
			border: 2px solid;
			cursor: pointer;
		
			border-color: #000000;
			font-size: 21px;
			background-color: #FFFFE0;
			font-weight: bold;
			text-shadow: 1px 1px #F36C8C;
			color: #000000;
			margin: 25px 25px 25px 130px;
		</style>
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