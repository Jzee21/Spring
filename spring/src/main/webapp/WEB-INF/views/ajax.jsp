<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="<%=request.getContextPath()%>/resources/jquery-3.2.1.min.js"></script>
	<title>AJAX Test</title>
</head>
<body>

	<form action="<%=request.getContextPath()%>/basiclogin">
		id : <input id="id" type="text" name="id"><br>
		pw : <input id="pw" type="password" name="pw"><br>
		<input type="submit" value="Login">
		<input id="ajaxbtn" type="button" value="AJAX Login">
	</form>

	<div id="ajaxlogin"></div>
	<hr>
	<img src="<%=request.getContextPath()%>/resources/images/google.png"><br>
	
	<script>
	$("#ajaxbtn").on('click', function () {
		$.ajax( {
			url: '/mvc/ajaxlogin',
			data:  { 'id' : $("#id").val() , 'pw' : $("#pw").val() } ,
			type: 'get' ,
			dataType: 'json' ,
			success:function( serverdata ){
				//{"status":true/false, "time":"2020년......"}
				//serverdata.status;
				//serverdata.time;
				$("div#ajaxlogin").html(serverdata.status + " - " + serverdata.time);
				$("div#ajaxlogin").css("color", "red");
				$("div#ajaxlogin").css("border", "2px solid blue");
			}
		}	);
	});
	</script>
	
	<hr>
	<input type="text" id="seq">
	<input type="button" id="ajaxboradbtn" value="call board">
	<div id="ajaxboard"></div>
	
	<script>
	$("#ajaxboradbtn").on('click', function () {
		$.ajax( {
			url: '/mvc/ajaxboard',
			data:  { 'seq' : $("#seq").val() } ,
			type: 'get' ,
			dataType: 'json' ,
			success:function( data ){
				$("div#ajaxboard").append(
						"<table><tr><td>No.</td><td>" + data.seq + 
						"</td></tr><tr><td>Title</td><td>" + data.title + 
						"</td></tr><tr><td>Writer</td><td>" + data.writer + 
						"</td></tr><tr><td>Context</td><td>" + data.contents +
						"</textarea></td></tr><tr><td>Date</td><td>" + data.time +
						"</td></tr><tr><td>Count</td><td>" + data.viewcount + 
						"</td></tr></table><br>"
						);
				$("div#ajaxboard").css("color", "red");
				$("div#ajaxboard").css("border", "2px solid blue");
			}
		}	);
	});
	</script>

</body>
</html>