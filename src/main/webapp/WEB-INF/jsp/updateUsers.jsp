<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改页面</title>
<style type="text/css">
		#m{
			text-align: center;
		}
</style>
</head>
<body background="${pageContext.request.contextPath}/statics/image/Y.jpg"style="background-repeat: no-repeat;
			background-size:100%  100%;
			background-attachment: fixed;" >  
<form action="/updateUser" name="xiugai" method="get" >
<h1 align="center">————修改————</h1>
<table align="center">
	<tr><td>
		&nbsp;&nbsp;&nbsp;ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${user.id}" name="id" readonly="readonly" style="width:210px;height:30px;size:16px">
	</td></tr>
	<tr><td>
		<font>姓名：<input type="text" name="userName" id="NA" value="${user.userName}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>密码：<input type="passWord" name="passWord" id="NA" value="${user.passWord}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>手机号：<input type="text"  name="phone" id="PH" value="${user.phone}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:<input type="text" name="sex" id="AG" value="${user.sex}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>备&nbsp;&nbsp;&nbsp;&nbsp;注：<input type="text"  name="remark" id="RE" value="${user.remark}" style=width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>等&nbsp;&nbsp;&nbsp;&nbsp;级：<input type="text"  name="levels" id="RE" value="${user.levels}" style=width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
	<tr align="right"><td>
		<input type="submit" value="修改">
	</td></tr>
</table>
</form>
</body>
</html>
