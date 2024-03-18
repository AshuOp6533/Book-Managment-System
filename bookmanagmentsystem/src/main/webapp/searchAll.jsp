<%@ page import="com.jspiders.bookmanagmentsystem.object.Book"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Details</title>
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
	<%
	List<Book> books = (List<Book>) request.getAttribute("books");
	if (books != null && !books.isEmpty()) {
	%>
	<div align="center">
		<table border="1">
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
	</div>
	<div class="home-link">
		<a href="Home.jsp">Home</a>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h4>No book details available</h4>
	</div>
	<%
	}
	%>
</body>
</html>
