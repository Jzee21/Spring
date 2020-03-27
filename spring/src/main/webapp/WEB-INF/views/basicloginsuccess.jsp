<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>basicsuccess</title>
</head>
<body>
	<%=request.getParameter("id") %> 님?<br>
	<%=request.getParameter("pw") %> 가 비밀번호네요?<br>
	<%
		boolean status = false;
		String loginTime = "---";
	
		if(request.getParameter("id").equals("ajax")
				&& request.getParameter("pw").equals("ajax")) {
			status = true;
			loginTime = new java.util.Date().toLocaleString();
		}
	%>
	<%=status %><br>
	<%=loginTime %><br>
</body>
</html>