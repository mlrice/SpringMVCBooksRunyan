<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Author Form Handling</title>
</head>
<body>
<h2>Add Author Information</h2>
	<mvc:form modelAttribute="author" action="authorResult.mvc">
		<table>
			<tr>
				<td><mvc:label path="firstname">First Name</mvc:label></td>
				<td><mvc:input path="firstname" /></td>
			</tr>
			<tr>
				<td><mvc:label path="lastname">Last Name</mvc:label></td>
				<td><mvc:input path="lastname" /></td>
			</tr>
			<tr>
				<td><mvc:label path="num_of_publications">Number of Publications</mvc:label></td>
				<td><mvc:input path="num_of_publications" /></td>
			</tr>
			
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</mvc:form>
	<a href="viewAllAuthors.mvc">View All Authors</a>
</body>
</html>