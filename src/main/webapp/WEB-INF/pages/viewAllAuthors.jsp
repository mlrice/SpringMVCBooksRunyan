<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Authors</title>
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
</head>
<body>
	<h1>View All Authors</h1>
	<br />
	<a href="authorForm.mvc">Add a new Author</a>
	<br />
	<br />
	<a href="home.mvc">Back to main menu</a>
	<br />
	<br />
	<mvc:form modelAttribute="author" action="authorUpdate.mvc">
		<table>
			<tr>
				<th>Selection</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Number of Publications</th>
			</tr>
			<c:forEach items="${all}" var="item">
				<tr>
					<td><input type="radio" name="authorId"
						value="${item.id}"></td>
					<td>${item.firstname}</td>

					<td>${item.lastname}</td>

					<td>${item.num_of_publications}</td>

				</tr>
			</c:forEach>
		</table>
<br />
		<input type="submit" value="Edit Selected Author"
			name="doThisToAuthor">
		<input type="submit" value="Delete Selected Author"
			name="doThisToAuthor">
	</mvc:form>

</body>
</html>