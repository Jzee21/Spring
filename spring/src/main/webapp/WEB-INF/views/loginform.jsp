<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>loginform.jsp 파일이 요기에</h1>
	<form action="<%=request.getContextPath()%>/login" method="post">
		id : <input type="text" name="id">&nbsp;
		pw : <input type="password" name="pw">&nbsp;
		age : <input type="text" name="age">&nbsp;
		<input type="submit" value="post">
	</form>
</body>
</html>