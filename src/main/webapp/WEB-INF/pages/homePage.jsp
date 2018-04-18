<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add to the Library</title>

<style>
h1 {color: black; font-family: arial; font-size: 180%; margin: 0px; text-align: left;}
p {color: black; font-family: arial; font-size: 140%; margin: 5px;text-align: center;}   
a:link {
    color: dark-grey; font-family: arial; font-size: 125%; font-weight: bold; text-align: center;}
/* visited link */
a:visited {
    color: dark-grey;}
/* mouse over link */
a:hover {
    color: red;}
/* selected link */
a:active {
    color: yellow;}
table {
    font-family: arial;
    border-collapse: collapse;
    width: 60%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 4px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

body {
    background-image: url("scrabblebooks.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-color: tan;
}


</style>
</head>
<body>
	
	<h1>Add to our Library</h1>

	

	<br />
	<a href="form.mvc">Add Book Information</a>
	<br />
	<br />
	<a href="authorForm.mvc">Add Author Information</a>
	<br />
	<br />
	<a href="viewAllAuthors.mvc">View All Authors</a>
	<br />
	<br />
	<a href="viewAllBooks.mvc">View All Books</a>
</body>
</html>