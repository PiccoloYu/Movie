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
<!-- kindeditor-all -->
<link rel="stylesheet" href="/KindEditor/themes/default/default.css" />
	<link rel="stylesheet" href="/KindEditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="/KindEditor/kindeditor-all.js"></script>
	<script charset="utf-8" src="/KindEditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="/KindEditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content1"]', {
				cssPath : '../plugins/code/prettify.css',
				uploadJson : '../jsp/upload_json.jsp',
				fileManagerJson : '../jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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
<%=htmlData%>  
<form action="/updateFilm" name="xiugai" method="get" >
<h1 align="center">————修改————</h1>
<table align="center">
	<tr><td>
		&nbsp;&nbsp;&nbsp;ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${film.id}" name="id" readonly="readonly" style="width:210px;height:30px;size:16px">
	</td></tr>
	<tr><td>
		<font>电影名称：<input type="text" name="filmName" id="NA" value="${film.filmName}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>帖子标题：<input type="text" name="title" id="NA" value="${film.title}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
		<font>帖子内容：<textarea name="content1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea></font>
	</td></tr>
	<tr><td>
		<font>热度:<input type="text" name="hot" id="AG" value="${film.hot}" style="width:210px;height:30px;size:16px"/></font>
	</td></tr>
	<tr><td>
	<tr align="right"><td>
		<input type="submit" value="修改">
	</td></tr>
</table>
</form>
</body>
</html>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>