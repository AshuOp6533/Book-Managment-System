<%@ page import="com.jspiders.bookmanagmentsystem.object.Book"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Book By Author</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

table th, table td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #dddddd;
}

.not-found {
	text-align: center;
	color: #ff0000;
}

.form-container {
	text-align: center;
}

.form-container input[type="text"] {
	padding: 8px;
	width: 200px;
	margin: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.form-container input[type="submit"] {
	padding: 8px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
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
</style>
</head>
<body>
	<div class="container">
		<h2>Search Book By Author</h2>
		<div class="form-container">
			<form action="searchBookByAuthor" method="get">
				<input type="text" name="author" placeholder="Enter Author Name">
				<input type="submit" value="Search">
			</form>
			</div>
		<%
		List<Book> books = (List) request.getAttribute("books");
		if (books != null && !books.isEmpty()) {
		%>
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Author</th>
				<th>Pages</th>
				<th>Price</th>
				<th>Genre</th>
				<th>Language</th>
			</tr>
			<%
			for (Book book : books) {
			%>
			<tr>
				<td><%=book.getId()%></td>
				<td><%=book.getName()%></td>
				<td><%=book.getAuthor()%></td>
				<td><%=book.getPages()%></td>
				<td><%=book.getPrice()%></td>
				<td><%=book.getGenre()%></td>
				<td><%=book.getLanguage()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		} 
		%>
		<div class="home-link">
			<a href="Home.jsp">Home</a>
		</div>
	</div>
</body>
</html>
