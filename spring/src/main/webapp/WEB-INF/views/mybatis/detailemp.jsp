<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
	<title>emp detail</title>
</head>
<body>
<table>
	<tr><td>사 번</td><td>${vo.employee_id }</td></tr>
	<tr><td>이 름</td><td>${vo.first_name }</td></tr>
	<tr><td> 성 </td><td>${vo.last_name }</td></tr>
	<tr><td>입사일</td><td>${vo.hire_date }</td></tr>
	<tr><td>부서코드</td><td>${vo.department_id }</td></tr>
	<tr><td>이메일</td><td>${vo.email }</td></tr>
	<tr><td>전화번호</td><td>${vo.phone_number }</td></tr>
	<tr><td>직종코드</td><td>${vo.job_id }</td></tr>
	<tr><td>급여</td><td>${vo.salary }</td></tr>
</table>

</body>
</html>