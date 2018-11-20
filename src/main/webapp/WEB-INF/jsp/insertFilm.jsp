<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>  
    <script type="text/javascript" src="/static/ckeditor/ckeditor.js"></script>  
	<script>

	</script>
<title>添加员工</title>
<style type="text/css">
		#m{
			text-align: center;
		}
</style>
</head>
<body background="${pageContext.request.contextPath}/statics/image/Y.jpg"style="background-repeat: no-repeat;
			background-size:100%  100%;
			background-attachment: fixed;" >
<form action="/uploadMath" name="xiugai" method="get" >
	<h1 align="center">————添加————</h1>
	<table align="center">
		<tr><td>
			<font>电影名称：<input type="text" name="filmName" id="NA" style="width:210px;height:30px;size:16px"/></font>
		</td></tr>
		<tr><td>
			<font>帖子标题：<input type="text" name="title" id="NA" style="width:210px;height:30px;size:16px"/></font>
		</td></tr>
		<tr><td>

			<font>帖子内容：<textarea name="content" id="editor1" class="ckeditor"></textarea></font>
		</td></tr>
		<tr><td>
			<font>热度:<input type="text" name="hot" id="AG" style="width:210px;height:30px;size:16px"/></font>
		</td></tr>
		<tr><td>
		<tr align="right"><td>
			<input type="submit" name="button" value="提交内容" /> (提交快捷键: Ctrl + Enter)
		</td></tr>
	</table>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
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
