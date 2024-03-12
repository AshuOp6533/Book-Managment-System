<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Adding a Book</title>
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
}

input[type="submit"]:hover {
	background-color: rgb(0, 86, 179);
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
		<h2>Add details of Books</h2>
		<form action="addBook" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" placeholder="Enter the Id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"
						placeholder="Enter the Name of Book"></td>
				</tr>
				<tr>
					<td>Author</td>
					<td><input type="text" name="author"
						placeholder="Enter the Name of Author"></td>
				</tr>
				<tr>
					<td>Pages</td>
					<td><input type="text" name="pages"
						placeholder="Enter the number of Pages"></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="price"
						placeholder="Enter the Price of Book"></td>
				</tr>
				<tr>
					<td>Genre</td>
					<td><input type="text" name="genre"
						placeholder="Enter the genre of Book"></td>
				</tr>
				<tr>
					<td>Language</td>
					<td><input type="text" name="language"
						placeholder="Enter the Language of Book"></td>
				</tr>
			</table>
			<input type="submit" value="ADD">
		</form>
		<div class="home-link">
			<a href="Home.jsp">Home</a>
		</div>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	%>
	<div align="center">
		<%
		if (message != null) {
		%>
		<h4><%=message%></h4>
		<%
		}
		%>
	</div>
</body>
</html>

