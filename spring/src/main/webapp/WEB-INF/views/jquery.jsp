<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="<%=request.getContextPath() %>/resources/jquery-3.2.1.min.js" ></script>
	<meta charset="UTF-8">
	<title>jQuery Test</title>
</head>
<body>
	<%=request.getContextPath() %>
	<h1>이미지 보는 중</h1>
	<h1 class="c">이미지 보는 중</h1>
	<h1 id="me">이미지 보는 중</h1>
	<h1 class="c">이미지 보는 중</h1>
	<h1 class="c">이미지 보는 중</h1>
	<input id="btn" type="button" value="click">
	<div id="result"></div>
	<br>
	
	<form action="/a">
		id : <input id=a2 type=text name="a"><a>
		<input id=btn2 type=button value="전송" >
	</form>
	
	
	<img src="<%=request.getContextPath()%>/resources/images/google.png">
	<img src="<%=request.getContextPath() %>/resources/images/android.jpg">
	<script>
		$("h1").css("color", "blue");
		$("#me").css("color", "black");		// id
		$(".c").css("color", "purple");		// class
		//$("div#result").html("<h3>추가</h3>");
		//$("input[type=button]")
		var cnt = 1;
		$("input[value=click]").on('click', function ( ) {
			//$("div#result").html("<h3>추가 " + cnt++ + "</h3>");
			//$("div#result").text("<h3>추가 " + cnt++ + "</h3>");
			$("div#result").append("<h3>추가 " + cnt++ + "</h3>");
		});
		
		$("#btn2").on("click", function () {
			location.href="/a?a=" + $('#a2').val();
			//$("form").action="/b";
			//$("form").submit();
		});
		
	</script>
</body>
</html>