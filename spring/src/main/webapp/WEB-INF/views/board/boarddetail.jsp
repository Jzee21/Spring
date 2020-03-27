<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Board Detail</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/boardupdate" method="post">
		<table>
			<tr>
				<td>No.</td>
				<td><input type="text" name="seq" value="${vo.seq }" readonly></td>
			</tr>
			<tr>
				<td>Title</td>
				<td><input type="text" name="title" value="${vo.title }"></td>
			</tr>
			<tr>
				<td>Writer</td>
				<td><input type="text" name="writer" value="${vo.writer }"></td>
			</tr>
			<tr>
				<td>Context</td>
				<td><textarea rows="10" cols="50" name="contents" >${vo.contents }</textarea></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input type="text" name="time" value="${vo.time }" readonly></td>
			</tr>
			<tr>
				<td>Count</td>
				<td><input type="text" name="viewcount" value="${vo.viewcount }" readonly></td>
			</tr>
		</table>	
		<input type="submit" value="수정">
	</form>
	<form action="<%=request.getContextPath()%>/boarddelete" method="post">
		<input type="hidden" name="seq" value="${vo.seq }" readonly>
		<input type="submit" value="삭제">
	</form>
</body>
</html>