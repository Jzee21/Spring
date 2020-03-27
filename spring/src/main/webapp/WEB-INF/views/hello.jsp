<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Spring MVC Test</title>
</head>
<body>
	<h1>from Controller : ${model}</h1>
	<h1>Controller's 값 : <%= request.getAttribute("model") %></h1>
	
	
</body>
</html>