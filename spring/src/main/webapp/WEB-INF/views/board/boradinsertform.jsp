<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Board Insert Form</title>
</head>
<body>
	<h1>게시글 작성</h1>
	<form action="<%=request.getContextPath()%>/boardinsert" method="post">
		Title <input type="text" name="title"><br>
		Context <textarea rows="10" cols="50" name="contents"></textarea><br>
		Writer 	<input type="text" name="writer"><br>
		Password <input type="password" name="password"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>