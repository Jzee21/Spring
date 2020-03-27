<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
<%
	int totalPage = (int)request.getAttribute("totalPage");
	for(int i=1 ; i<=totalPage ; i++) {
		out.println("<a href='/mvc/mybatis/pagingemplist2?page=" + i + "'>" +i+ "</a>&nbsp;");
	}
%>

</body>
</html>