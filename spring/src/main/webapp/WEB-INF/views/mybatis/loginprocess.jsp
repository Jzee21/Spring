<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Process</title>
</head>
<body>
<h1>${member.name} 회원님이 로그인 하셨습니다.</h1>
<%-- 
<%=session.getAttribute("member") %><br>
${sessionScope.member }<br>
${member }<br>
--%>
<h4><a href="<%=request.getContextPath()%>/session/mypage">내 정보</a></h4>
<h4><a href="<%=request.getContextPath()%>/session/logout">로그아웃</a></h4>
</body>
</html>