<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加员工</title>
<style type="text/css">
		#m{
			text-align: center;
		}
</style>
</head>
<body background="${pageContext.request.contextPath}/static/statics/image/Y.jpg"style="background-repeat: no-repeat;
			background-size:100%  100%;
			background-attachment: fixed;" >  
<form action="/insertUser" name="zhuce" method="get" >
<h1 align="center">添加员工</h1>
<table align="center">
	<tr><td>
		<font>用户名：<input type="text" name="userName" id="NA" style="width:210px;height:30px;size:16px"/></font>
		<span id="unspan" style="color: green;"></span><span id="unspan1" style="color: red;"></span>
	</td></tr>
	<tr><td>
		<font>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="passWord" name="password" id="PA" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>手机号：<input type="text"  name="phone" id="PH" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
	<tr align="right"><td>
		<input type="submit" value="添加">
	</td></tr>
</table>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#NA").blur(function(){		
		$.ajax({
			type:"GET",
			url:"loginByName",
			data:{"userName":$("#NA").val()},
			dataType:"json",
			success:function(data){
				  
				if(data == null || data == ""){
					$("#unspan1").html("");
					$("#unspan").html("用户名不存在可以添加");
				}else{
					$("#unspan").html("")
					$("#unspan1").html("用户名已存在不可添加");
				}
			}	
		})
		
	})
	
})
</script>
</html>