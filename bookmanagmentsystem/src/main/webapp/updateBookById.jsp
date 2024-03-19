<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book Details</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: rgb(249, 249, 249);
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 20px auto;
	padding: 20px;
	background-color: rgb(255, 255, 255);
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: rgb(51, 51, 51);
}

form {
	text-align: left;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

table td, table th {
	padding: 10px;
	border: 1px solid rgb(221, 221, 221);
}

input[type="text"], input[type="submit"] {
	width: calc(100% - 20px);
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid rgb(221, 221, 221);
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: rgb(0, 123, 255);
	color: rgb(255, 255, 255);
	cursor: pointer;
	display: block;
	margin: 0 auto;
}

input[type="submit"]:hover {
	background-color: rgb(0, 86, 179);
}

button a {
	color: white;
}

button a:hover {
	color: white;
}

button {
	padding: 8px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

.home-link {
	text-align: center;
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
		<h2>Update Book Details</h2>

		<form action="updateBookById" method="post">
			<table>
				<tr>
					<td>Book ID:</td>
					<td><input type="text" id="id" name="id"
						placeholder="Enter book ID" required></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" id="name" name="name"
						placeholder=" Enter new book Name" required></td>
				</tr>
				<tr>
					<td>Author:</td>
					<td><input type="text" id="author" name="author"
						placeholder="Updated author name" required></td>
				</tr>
				<tr>
					<td>Pages:</td>
					<td><input type="text" id="pages" name="pages"
						placeholder="Updated number of pages" required></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="text" id="price" name="price"
						placeholder="Updated price" required></td>
				</tr>
				<tr>
					<td>Genre:</td>
					<td><input type="text" id="genre" name="genre"
						placeholder="Updated genre" required></td>
				</tr>
				<tr>
					<td>Language:</td>
					<td><input type="text" id="language" name="language"
						placeholder="Updated language" required></td>
				</tr>
			</table>

			<div style="text-align: center;">

				<button type="submit">Update</button>
			</div>
		</form>
	</div>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h4><%=message%></h4>
	</div>
	<%
	}
	%>
	<div class="home-link">
			<a href="http://localhost:8080/bookmanagmentsystem/searchAllBooks">See
				All Books</a>
		</div>
	<div class="home-link">
		<a href="Home.jsp">Home</a>
	</div>
</body>
</html>
