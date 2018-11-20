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
				<tr><th>ID</th><th>姓名</th><th>密码</th><th>联系电话</th><th>性别</th><th>备注</th><th>等级</th><th>状态</th><th>创建人</th><th>创建时间</th><th>修改人</th><th>修改时间</th><th>&nbsp;&nbsp;操&nbsp;&nbsp;&nbsp;作</th></tr>
					<c:forEach items="${list }" var="li">
						<c:if test="${li.userName != uname}">
							<tr>
								<td>${li.id}</td>
								<td>${li.userName}</td>
								<td>${li.passWord}</td>
								<td>${li.phone}</td>
								<td>${li.sex}</td>
								<td>${li.remark}</td>
								<td>${li.levels}</td>
								<td>${li.status}</td>
								<td>${li.createUser}</td>
								<td>${li.createTime}</td>
								<td>${li.updateUser}</td>
								<td>${li.updateTime}</td>
								<td><a onclick="return del()" href="/updateStaff?id=${li.id}">删除</a>
									<a href="/selectById?id=${li.id}">修改</a>
								</td>
							</tr>
						</c:if>
					</c:forEach>
		</table>
		<form action="/mohucx" method="post">
				<input type="text" name="Agoni">
				<select name="CM">
					<option value="用户名">用户名</option>
					<option value="等级">等级</option>
					<option value="性别">性别</option>
					<option value="电话">电话</option>
				</select>
				<input type="submit" value="提交"> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/addUser">添加用户</a>
			</form>
		
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