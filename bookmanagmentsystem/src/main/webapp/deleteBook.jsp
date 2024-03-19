<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete By Id</title>
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

.home-link a:hover {
	background-color: rgb(0, 86, 179);
}
</style>
</head>
<body>
	<div class="container">
		<h2>DELETE BOOK BY ID</h2>
		<div class="form-container">
			<form action="deleteBook">
				<label for="id">Id : </label> <input type="text" id="id" name="id"
					placeholder="Enter id here"> <input type="submit"
					value="Submit">
			</form>
		</div>
		<div class="home-link">
			<a href="http://localhost:8080/bookmanagmentsystem/searchAllBooks">See
				All Books</a>
		</div>
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
