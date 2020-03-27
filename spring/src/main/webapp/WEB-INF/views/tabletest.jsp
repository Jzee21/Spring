<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>등록일시</th>
			</tr>
		</thead>
		<tbody>
			<tr onclick="location.href='<%=request.getContextPath()%>/weather2'" 
			onmouseover="this.style.backgroundColor='cyan';"
			onmouseout="this.style.backgroundColor='white';"
				style="cursor: pointer;">
				<td>a</td>
				<td>a</td>
				<td>a</td>
				<td>a</td>
				<td>a</td>
			</tr>
			<tr onclick="location.href='<%=request.getContextPath()%>/weather2'" 
			onmouseover="this.style.backgroundColor='cyan';"
			onmouseout="this.style.backgroundColor='white';"
				style="cursor: pointer;">
				<td>b</td>
				<td>b</td>
				<td>b</td>
				<td>b</td>
				<td>b</td>
			</tr>
			<tr onclick="location.href='<%=request.getContextPath()%>/weather2'" 
			onmouseover="this.style.backgroundColor='cyan';"
			onmouseout="this.style.backgroundColor='white';"
				style="cursor: pointer;">
				<td>c</td>
				<td>c</td>
				<td>c</td>
				<td>c</td>
				<td>c</td>
			</tr>
			<tr onclick="location.href='<%=request.getContextPath()%>/weather2'" 
			onmouseover="this.style.backgroundColor='cyan';"
			onmouseout="this.style.backgroundColor='white';"
				style="cursor: pointer;">
				<td>d</td>
				<td>d</td>
				<td>d</td>
				<td>d</td>
				<td>d</td>
			</tr>
			<tr onclick="location.href='<%=request.getContextPath()%>/weather2'" 
			onmouseover="this.style.backgroundColor='cyan';"
			onmouseout="this.style.backgroundColor='white';"
			style="cursor: pointer;">
				<td>e</td>
				<td>e</td>
				<td>e</td>
				<td>e</td>
				<td>e</td>
			</tr>
		</tbody>
	</table>


</body>
</html>