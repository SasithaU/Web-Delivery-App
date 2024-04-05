<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>


</head>
<body>
	<h1>Error</h1>
    <p>An error occurred. Please try again later.</p>
    <p>Error Details: <%= request.getAttribute("errorDetails") %></p>
	
</body>
</html>