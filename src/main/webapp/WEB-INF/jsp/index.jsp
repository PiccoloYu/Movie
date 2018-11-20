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
                 <li ><a href="/selectFilm">查询电影</a></li>
              <li ><a href="/bankb/customer1">存款业务</a></li>
               <li ><a href="/JaneShop/CommodityServlet?who=comSelectAll&page=1">取款业务</a></li>
             </ul>
         </nav>
     </div>
     <div class="right">
        <img class="wColck" src="${pageContext.request.contextPath }/images/clock.jpg" alt=""/>
        <div class="wFont">
            <p><h2>欢迎：${uname} 来到电影网后台</h2></p>
        </div>
    </div>
</section>
</body>

</html>