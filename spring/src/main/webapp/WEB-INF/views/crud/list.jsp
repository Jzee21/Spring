<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CRUD List</title>
</head>
<body>
	<h1>리스트</h1><hr>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:forEach items="${members }" var="member">
		<h4>ID : <a href="<%=request.getContextPath()%>/crud/get?id=${member.key }">${member.key }</a></h4>
		<h4>Name : ${member.value }</h4><br>
	</c:forEach>
</body>
</html>