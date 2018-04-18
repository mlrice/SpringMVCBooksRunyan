<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Author</title>
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
<h1>Edit Author</h1>
	<br />
	<mvc:form modelAttribute="author" action="authorEditResult.mvc">
	<a href="viewAllAuthors.mvc">View all Authors</a>
	<br />
	<br />
	<a href="home.mvc">Back to main menu</a>
	<br />
	<br />
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
	
</body>
</html>