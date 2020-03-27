<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>loginsuccess.jsp 파일이 요기에</h1>
	<%=request.getParameter("id") %>님의 로그인 결과는 ${loginresult } 입니다.<br>
	${param.age } 세(param.age)<br><!-- el -->
	${login.age } 세(login.age)<br>
<%-- 	${loginVO.age } 세(loginVO)<br> --%>

	<hr>

	<%
	String id = request.getParameter("id");	// controller 와 동일한 코드 사용
	String pw = request.getParameter("pw");
	%>
	<br>
	
	<%=id %><br>
	<%=pw %><br>
	<%=request.getParameter("age") %><br>
	${param.age }
	
	<hr>
	
	

</body>
</html>