<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Author Result</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td>${a.firstname}</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>${a.lastname}</td>
        </tr>
        <tr>
            <td>Number of Publications</td>
            <td>${a.num_of_publications}</td>
        </tr>
        
        </table>
<a href = "viewAllAuthors.mvc">View all Authors</a>

</body>
</html>