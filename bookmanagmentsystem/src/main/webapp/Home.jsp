<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management System</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: rgb(242, 242, 242);
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: rgb(255, 255, 255);
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: rgb(51, 51, 51);
}

p {
	text-align: center;
	color: rgb(102, 102, 102);
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

table td {
	padding: 10px;
	text-align: center;
}

table td:first-child {
	width: 10%;
}

table td a {
	text-decoration: none;
	color: rgb(0, 123, 255);
}

table td a:hover {
	color: rgb(0, 86, 179);
}
</style>
</head>
<body>
	<div class="container">
		<h2>Welcome to Book Management System</h2>
		<p>Please select one of the following options:</p>
		<table border="1">
			<tr>
				<td>1).</td>
				<td><a href="addBook.jsp">Add a Book</a></td>
			</tr>
			<tr>
				<td>2).</td>
				<td><a href="searchBook.jsp">Search for a Book</a></td>
			</tr>
			<tr>
				<td>3).</td>
				<td><a href="deleteBook.jsp">Delete a Book</a></td>
			</tr>
			<tr>
				<td>4).</td>
				<td><a href="updateBookById.jsp">Update Book Information</a></td>
			</tr>
		</table>
	</div>
</body>
</html>

