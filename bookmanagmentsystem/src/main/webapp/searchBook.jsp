<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Search</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: rgb(242, 242, 242);
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 50px auto;
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

.home-link {
	display: flex;
	justify-content: center; 
	align-items: center; 
	margin-top: 20px; 
}

.home-link a {
	display: inline-block;
	padding: 10px 20px;
	background-color: rgb(0, 123, 255);
	color: rgb(255, 255, 255);
	text-decoration: none;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.home-link a:hover {
	background-color: rgb(0, 86, 179);
}
</style>
</head>
<body>
	<div class="container">
		<h2>Search Books</h2>
		<p>Please select one of the following options:</p>
		<table border="1">
			<tr>
				<td>1).</td>
				<td><a href="http://localhost:8080/bookmanagmentsystem/searchAllBooks">Get All Books</a></td>
			</tr>
			<tr>
				<td>2).</td>
				<td><a href="searchById.jsp">Search by Id</a></td>
			</tr>
			<tr>
				<td>3).</td>
				<td><a href="searchByName.jsp">Search by Name</a></td>
			</tr>
			<tr>
				<td>4).</td>
				<td><a href="searchByAuthor.jsp">Search by Author Name</a></td>
			</tr>
			<tr>
				<td>5).</td>
				<td><a href="searchByGenre.jsp">Search by Genre</a></td>
			</tr>
			<tr>
				<td>6).</td>
				<td><a href="searchByPrice.jsp">Search by Price</a></td>
			</tr>
		</table>
	</div>
	<div class="home-link">
		<a href="Home.jsp">Home</a>
	</div>
</body>
</html>
