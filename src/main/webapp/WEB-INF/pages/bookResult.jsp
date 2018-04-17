<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body> <h2>Book Result</h2>
    <table>
        <tr>
            <td>Title</td>
            <td>${b.title}</td>
        </tr>
           <tr>
            <td>Author</td>
            <td>${b.author}</td>
        </tr>
        <tr>
            <td>Genre</td>
            <td>${b.genre}</td>
        </tr>
        <tr>
            <td>Year Published</td>
            <td>${b.year_published}</td>
        </tr>
        
        </table>
<a href = "viewAllBooks.mvc">View all Books</a>

</body>
</html>