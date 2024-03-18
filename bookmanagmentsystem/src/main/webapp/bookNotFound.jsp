<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Not Found</title>
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

.not-found {
	text-align: center;
	color: #ff0000;
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
		<h2>Book Not Found</h2>
		<div class="not-found">
			<p>The book you are looking for was not found.</p>
		</div>
	</div>
	<div class="home-link">
		<a href="Home.jsp">Home</a>
	</div>
</body>
</html>
