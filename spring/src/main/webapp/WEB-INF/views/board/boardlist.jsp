<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="edu.multi.mvc.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${title }</title>
	<style type="text/css">
		table {
			border-collapse: collapse;
		}
		tr {
			border-bottom: 1px solid black;
			padding-right: 10px;
			margin-right: 10px;
		}
		
	</style>
</head>
<body>
	<%
		ArrayList<BoardVO> list = (ArrayList<BoardVO>) request.getAttribute("list");
	%>
	
	<%-- <br>
	
	<table>
		<tr>
			<th>No.</th>
			<th>Title</th>
			<th>Context</th>
			<th>Writer</th>
			<th>Date</th>
			<th>Count</th>
		</tr>
		<%
			for(BoardVO vo : list) {
				out.println("<tr>");
				out.println("<td>" + vo.getSeq() + "</td>");
				out.println("<td>" + vo.getTitle() + "</td>");
				out.println("<td>" + vo.getContents() + "</td>");
				out.println("<td>" + vo.getWriter() + "</td>");
				out.println("<td>" + vo.getTime() + "</td>");
				out.println("<td>" + vo.getViewcount() + "</td>");
				out.println("</tr>");
			}
		%>
	</table> 
	
	<hr>
	<br>--%>
	
	<table>
		<tr>
			<th>No.</th>
			<th>Title</th>
			<th>Context</th>
			<th>Writer</th>
			<th>Date</th>
			<th>Count</th>
		</tr>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:forEach items="${list }" var="vo">
			<tr>
				<td><a href="<%=request.getContextPath()%>/boarddetail?seq=${vo.seq }" >
					${vo.seq }</a></td>
				<td>${vo.title }</td>
				<td>${vo.contents }</td>
				<td>${vo.writer }</td>
				<td>${vo.time }</td>
				<td>${vo.viewcount }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>