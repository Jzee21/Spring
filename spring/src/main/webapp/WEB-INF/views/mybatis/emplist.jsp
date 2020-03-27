<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>emplist.jsp</title>
</head>
<body>
<!--
	servlet.jsp		webcontent\WEB-INF\lib\	jstl.jar, standard.jar
	Spring MVC		기본 다운로드
-->
<c:forEach items="${list }" var="vo">
	사번 : ${vo.employee_id }, 사원명 : ${vo.first_name } ${vo.last_name }<br>
</c:forEach>
<hr>
<form action="<%=request.getContextPath()%>/mybatis/detailemp">
사번 : <input type="text" name="id">
<input type="submit" value="조회" >
</form>

</body>
</html>