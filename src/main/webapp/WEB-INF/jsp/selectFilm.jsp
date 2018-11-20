<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/style/style.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/style/public.css" />
</head>
<body>
<header class="publicHeader">
        <h1>电影网站后台管理</h1>
        <div class="publicHeaderR">
            <p><span>下午好！</span><span style="color: #fff21b">${uname }</span> , 欢迎你！</p>
            <a href="/JaneShop/CommodityServlet?who=exit">退出</a>
        </div>
    </header>

 <!--主体内容-->
 <section class="publicMian ">
     <div class="left">
         <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
         <nav>
             <ul class="list">
             
              <li ><a href="/selectAll">用户管理</a></li>
            
              <li ><a href="/bankb/customer1">存款业务</a></li>
               <li ><a href="/JaneShop/CommodityServlet?who=comSelectAll&page=1">取款业务</a></li>
             </ul>
         </nav>
     </div>
     <div class="right">
     <table class="table table-striped">
				<tr><th>ID</th><th>电影姓名</th><th>帖子标题</th><th>热门 </th><th>图片名字</th><th>帖子内容</th><th>创建人</th><th>创建时间</th><th>修改人</th><th>修改时间</th><th>&nbsp;&nbsp;操&nbsp;&nbsp;&nbsp;作</th></tr>
					<c:forEach items="${Flist}" var="Fli">
							<tr>
								<td>${Fli.id}</td>
								<td>${Fli.filmName}</td>
								<td>${Fli.title}</td>
								<td>${Fli.hot}</td>
								<td>${Fli.imageName}</td>
								<td>${Fli.content}</td>
								<td>${Fli.createUser}</td>
								<td>${Fli.createTime}</td>
								<td>${Fli.updateUser}</td>
								<td>${Fli.updateTime}</td>
								<td><a onclick="return del()" href="/deletef?id=${Fli.id}">删除</a>
									<a href="/selectFId?id=${Fli.id}">修改</a>
								</td>
							</tr>
					</c:forEach>
		</table>
	<a href="/addFilm">添加用户</a>


<div style="margin-left:960px;">
	<p>
		每页${page.pageSize }条 当前页${page.size }条${page.pageNum }/${page.pages }页
		总条数${page.total }
	</p>
	<c:if test="${page.isFirstPage==true }"><a>首页</a></c:if>
	<c:if test="${page.isFirstPage==false }">
		<a href="/Movie/selectAll">首页</a>
	</c:if>
	
	<c:if test="${page.hasPreviousPage==true }">
		<a href="/Movie/selectAll?page=${page.prePage }">上一页</a>
	</c:if>
	<c:if test="${page.hasPreviousPage==false }">
		<a>上一页</a>
	</c:if>
	
	<c:if test="${page.hasNextPage==true }">
		<a href="/Movie/selectAll?page=${page.nextPage }">下一页</a>
	</c:if>
	<c:if test="${page.hasNextPage==false }">
		<a>下一页</a>
	</c:if>
	
	<c:if test="${page.isLastPage==true }"><a>末页</a></c:if>
	<c:if test="${page.isLastPage==false }">
		<a href="/Movie/selectAll?page=${page.pages }">末页</a>
	</c:if>
	</div>
        </div>
    </div>
</section>
</body>

</html>