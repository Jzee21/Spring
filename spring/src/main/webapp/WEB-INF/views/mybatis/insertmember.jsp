<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sign Up</title>
</head>
<body>
<!--
String userid, passowrd;
String name, phone;
-->

<form action="<%=request.getContextPath()%>/mybatis/insertmember" method="post">
	<table>
		<tr>
			<td>ID</td><td><input type="text" name="userid" required></td>
		</tr>
		<tr>
			<td>Password</td><td><input type="password" name="password" required></td>
		</tr>
		<tr>
			<td>Name</td><td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>Phone</td><td><input type="text" name="phone" required></td>
		</tr>
		<tr><td></td><td><input type="submit" value="Sign Up"></td></tr>
	</table>
</form>

</body>
</html>