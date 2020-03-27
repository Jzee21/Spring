<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<script type="text/javascript">
		
	</script>
</head>
<body>
	<div id="message"></div>
	<form action="<%=request.getContextPath()%>/session/loginprocess" method="post">
		<table>
			<tr>
				<td>ID</td><td><input type="text" name="userid"> </td>
				<td>PW</td><td><input type="password" name="password"> </td>
				<td></td><td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>