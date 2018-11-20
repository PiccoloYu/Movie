<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>主页面</title>
    <meta name="keywords" content="免费电影,特视网"/>
    <meta name="description" content="特视网是一个免费在线观看最新电影的免费在线电影网站，特视网第一时间收集最新电影和热播的电视剧免费资源供网友免费在线观看下载，希望这是您找到的看电影的好网站！"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10"/>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/static/font/iconfont.css" type="text/css"/>
    <link rel="stylesheet" href="/static/css/stui_block.css" type="text/css"/>
    <link rel="stylesheet" href="/static/css/stui_default.css" type="text/css"/>
    <link rel="stylesheet" href="/static/css/stui_custom.css" type="text/css"/>
    <link rel="stylesheet" href="/static/css/login.css" type="text/css"/>
    <link rel="stylesheet" href="/static/css/login1.css" type="text/css"/>
    <!--<link rel="stylesheet" href="css/bootstrap.css">
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>-->
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/static/js/stui_default.js"></script>

    <script type="text/javascript">var sitePath = '', siteUrl = 'www.teshiw.com', sitepath = ''</script>
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
   <style type="text/css">
       img{
           /*height: 462px;*/
       }
       .navbar{
           /*margin-bottom: -10px;*/
       }
       #myppt{
          /* margin-top: -20px;*/
       }
   </style>

</head>
<body>
<header class="stui-header__top clearfix" id="header-top">

    <div class="container">
        <div class="row">
            <div class="stui-header_bd clearfix">
                <div class="stui-header__logo"><a class="logo" href="/"></a></div>
                <div class="stui-header__side">
                    <ul class="stui-header__user">
                        <li class="hidden-xs"><a href="javascript:void(0)"><i class="icon iconfont icon-account" id="login"></i></a></li>
                        <li class="visible-xs"  ><a href="javascript:void(0)"><i class="icon iconfont icon-account"></i></a></li><!--登录-->
                    </ul>
                    <script>
                        $(document).ready(function() {
                            // Handler for .ready() called.
                            $("#login").click(function () {
                                $(".hide-center").fadeIn("slow");
                                $(".overCurtain").fadeIn("slow");
                            })
                            $("#close").click(function () {
                                $(".hide-center").fadeOut("slow")
                                $(".overCurtain").fadeOut("slow")
                            })
                        });
                    </script>
                    <div class="stui-header__search">
                        <form name="formsearch" id="formsearch" action='/search.php' method="post" autocomplete="off">
                            <input class="form-control" id="wd" placeholder="输入影片关键词..." name="searchword" type="text"
                                   id="keyword" required=""><input type="submit" id="searchbutton" value=""
                                                                   class="hide">
                            <button class="submit" id="submit" onClick="$('#formsearch').submit();"><i
                                    class="icon iconfont icon-search"></i></button>
                        </form>
                        <div id="word" class="autocomplete-suggestions active hidden-xs" style="display: none;"></div>
                    </div>
                </div>
                <ul class="stui-header__menu type-slide">
                    <li><a href="/">首页</a></li>
                    <li><a href="/dy/index.html"> 电影</a></li>
                    <li><a href="/dsj/index.html"> 电视剧</a></li>
                    <li><a href="/zy/index.html"> 综艺</a></li>
                    <li><a href="/dm/index.html"> 动漫</a></li>
					<li><a href="/selectAll"> 用户管理</a></li>
					<!-- <li><a href="/news/">资讯</a></li> --></ul>
            </div>
        </div>
    </div>
</header>
<!--登录弹窗-->
<div class="overCurtain"></div>
<div class="hide-center">
    <div class="cotn_principal">
        <div class="cont_centrar">
            <button type="button" id="close">X</button><!-- 关闭弹窗 -->
            <div class="cont_login">
                <div class="cont_info_log_sign_up">
                    <div class="col_md_login">
                        <div class="cont_ba_opcitiy">
                            <h2>登录</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur.</p>
                            <button class="btn_login" onClick="cambiar_login()">LOGIN</button>
                        </div>
                    </div>
                    <div class="col_md_sign_up">
                        <div class="cont_ba_opcitiy">
                            <h2>注册</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur.</p>
                            <button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN UP</button>
                        </div>
                    </div>
                </div>
                <div class="cont_back_info">
                    <div class="cont_img_back_grey"> <img src="img/po.jpg" alt="" /> </div>
                </div>
                <div class="cont_forms" >
                    <div class="cont_img_back_"> <img src="img/po.jpg" alt="" /> </div>
                    <form action="/login" method="post">
                    <div class="cont_form_login"> 
                    <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>                     
                        <h2>登录</h2>
                        <span style="color: red;">${mag}</span>
			  			<span style="color: red;">${mag1}</span>
                        <input type="text" placeholder="userName" name="userName" id="value_1"/>
                        <span id="unspan" style="color: red;"></span><span id="unspan1" style="color: green;"></span>
                        <input type="password" placeholder="Password" name="passWord"/>
                        <input type="text" class="text" id="verifyCode" placeholder="验证码" name="verifyCode" tabindex="1" style="width: 165px">
                        <img src="${pageContext.request.contextPath}/getVerifyCode" width="90" height="30" id="verifyCodeImage" onclick="changeImage()"
						  title="看不清换一张">
						  <script type="text/javascript">//切换验证码
							function changeImage(){
								$.ajax({
									url:"getVerifyCode",
									success:function(){
										$('#verifyCodeImage').attr('src', '${pageContext.request.contextPath }/getVerifyCode');
									}
								})
							}
							</script>
							<script type="text/javascript">
$(document).ready(function(){
	$("#value_1").blur(function(){		
		$.ajax({
			type:"GET",
			url:"loginByName",
			data:{"userName":$("#value_1").val()},
			dataType:"json",
			success:function(data){
				  
				if(data == null || data == ""){
					$("#unspan1").html("");
					$("#unspan").html("×××");
				}else{
					$("#unspan").html("")
					$("#unspan1").html("√√√");
				}
			}	
		})
		
	})
	
})
</script>
                        <button class="btn_login" onClick="cambiar_login()" >LOGIN</button>
                    </div>
                    </form>
                    <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                        <h2>注册</h2>
                        <input type="text" placeholder="Email" />
                        <input type="text" placeholder="User" />
                        <input type="password" placeholder="Password" />
                        <input type="password" placeholder="Confirm Password" />
                        <button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN UP</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/login.js"></script>
</div>
<!--登陆结束-->
<div class="popup clearfix">
    <div class="popup-head bottom-line"><h5 class="title pull-right">全部分类</h5><a href="javascript:;" class="close-popup"><i
            class="icon iconfont icon-back"></i></a></div>

    <div class="popup-body col-pd">
        <ul class="tag tag-type">
            <li class="col-xs-4"><a href="/dalu/index.html">大陆剧</a></li>
            <li class="col-xs-4"><a href="/tvb/index.html">港台剧</a></li>
            <li class="col-xs-4"><a href="/hanri/index.html">韩日剧</a></li>
            <li class="col-xs-4"><a href="/tv/index.html">欧美剧</a></li>
            <li class="col-xs-4"><a href="/hw/index.html">海外剧</a></li>
            <li class="col-xs-4"><a href="/dz/index.html">动作片</a></li>
            <li class="col-xs-4"><a href="/xj/index.html">喜剧片</a></li>
            <li class="col-xs-4"><a href="/aq/index.html">爱情片</a></li>
            <li class="col-xs-4"><a href="/kh/index.html">科幻片</a></li>
            <li class="col-xs-4"><a href="/kb/index.html">恐怖片</a></li>
            <li class="col-xs-4"><a href="/zz/index.html">战争片</a></li>
            <li class="col-xs-4"><a href="/jq/index.html">剧情片</a></li>
            <li class="col-xs-4"><a href="/jlp/index.html">纪录片</a></li>
            <li class="col-xs-4"><a href="/rebo/index.html">伦理片</a></li>
            <li class="col-xs-4"><a href="/dy/index.html">电影</a></li>
            <li class="col-xs-4"><a href="/dsj/index.html">电视剧</a></li>
            <li class="col-xs-4"><a href="/zy/index.html">综艺</a></li>
            <li class="col-xs-4"><a href="/dm/index.html">动漫</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="row"><!-- D082 by v.shoutu.cn -->
        <div class="stui-pannel stui-pannel-bg clearfix">
            <div class="stui-pannel-box">
                <div class="stui-pannel_bd"><a class="more text-muted pull-right" href="/search.php?searchtype=5&tid=1">更多
                    <i class="icon iconfont icon-more"></i></a>
                    <h3 class="title"><img src="icon/icon_6.png"/>热播推荐</h3>
                    <div class="carousel carousel_right col-pd clearfix">
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb"
                                                              href="/dalu/nihewodeqingchengshiguang/" title="你和我的倾城时光"
                                                              style="background: url(/uploadimg/allimg/201810/9a6264e34c351031.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">你和我的倾城时光</span></a>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb"
                                                              href="/dalu/liangsheng_womenkebukeyibuyoushang/"
                                                              title="凉生，我们可不可以不忧伤"
                                                              style="background: url(/uploadimg/allimg/201809/25e865f32027f54e.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">凉生，我们可不可以不忧伤</span></a>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb" href="/dalu/jiangye/"
                                                              title="将夜"
                                                              style="background: url(/uploadimg/allimg/201810/ef89d458565c1cf6.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">将夜</span></a></div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb" href="/jlp/McQueen/"
                                                              title="麦昆"
                                                              style="background: url(/uploadimg/allimg/201811/f79d83aa6a822483.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">麦昆</span></a></div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb" href="/jq/Nancy/" title="南茜"
                                                              style="background: url(/uploadimg/allimg/201811/af2f853063ef37be.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">南茜</span></a></div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb" href="/xj/Birthmarke/"
                                                              title="胎记"
                                                              style="background: url(/uploadimg/allimg/201811/a940fe6f4c85adad.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">胎记</span></a></div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb"
                                                              href="/jq/guitanqihuanlvcheng/" title="诡探奇幻旅程"
                                                              style="background: url(/uploadimg/allimg/201811/47be9b370171d212.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">诡探奇幻旅程</span></a>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb"
                                                              href="/dalu/wozaidalisidangchongwu/" title="我在大理寺当宠物"
                                                              style="background: url(/uploadimg/allimg/180925/9264730698b79716.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">我在大理寺当宠物</span></a>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb"
                                                              href="/dalu/yuanlainihuanzaizheli/" title="原来你还在这里"
                                                              style="background: url(/uploadimg/allimg/201810/df496af9aeee860d.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">原来你还在这里</span></a>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-5 col-xs-3 list">
                            <div class="stui-vodlist__box"><a class="stui-vodlist__thumb"
                                                              href="/dalu/shuangshichongfei2/" title="双世宠妃2"
                                                              style="background: url(/uploadimg/allimg/181022/64f8bac6c860dcc1.jpg) no-repeat; background-position:50% 50%; background-size: cover;"><span
                                    class="play hidden-xs"></span><span class="pic-text text-center">双世宠妃2</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    <!-- 幻灯片 -->
        <div class="stui-pannel stui-pannel-bg clearfix">
            <div class="stui-pannel-box clearfix">
                <div class="col-lg-wide-75 col-xs-1 padding-0">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/dy/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_29.png"/><a href="/dy/index.html">电影</a></h3>
                            <ul class="nav nav-text pull-right hidden-sm hidden-xs">
                                <li><a href="/dz/index.html" class="text-muted">动作片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/xj/index.html" class="text-muted">喜剧片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/aq/index.html" class="text-muted">爱情片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/kh/index.html" class="text-muted">科幻片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/kb/index.html" class="text-muted">恐怖片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/zz/index.html" class="text-muted">战争片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/jq/index.html" class="text-muted">剧情片</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/jlp/index.html" class="text-muted">纪录片</a> <span
                                        class="split-line"></span></li>
                                <li><a href="/rebo/index.html" class="text-muted">伦理片</a> <span
                                        class="split-line"></span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="stui-pannel_bd clearfix">
                        <ul class="stui-vodlist clearfix">
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/rebo/zhongxueshengriji/" title="中学圣日记"
                                                                  data-original="/uploadimg/allimg/181115/e5822c75e24a21ad.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至06集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/rebo/zhongxueshengriji/" title="中学圣日记">中学圣日记</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">有村架纯,岡田健史,町田启太</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/rebo/womenyouqijigoucheng/" title="我们由奇迹构成"
                                                                  data-original="/uploadimg/allimg/181115/db8199623b2f6450.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至05集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/rebo/womenyouqijigoucheng/" title="我们由奇迹构成">我们由奇迹构成</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">高桥一生,荣仓奈奈,小林薰</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/jq/tiexueyishi/" title="铁血义士"
                                                                  data-original="/uploadimg/allimg/201811/e2a2fae5b83b228e.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/jq/tiexueyishi/" title="铁血义士">铁血义士</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">内详</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/aq/qiyuzhenai/" title="奇遇真爱"
                                                                  data-original="/uploadimg/allimg/201811/3594b20f13fbfb40.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/aq/qiyuzhenai/" title="奇遇真爱">奇遇真爱</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">刘小春</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/jq/shijieqimiaowuyu2018nianqiujitebiepian/"
                                                                  title="世界奇妙物语2018年秋季特别篇"
                                                                  data-original="/uploadimg/allimg/201811/7649306ab341ccb5.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/jq/shijieqimiaowuyu2018nianqiujitebiepian/" title="世界奇妙物语2018年秋季特别篇">世界奇妙物语2..</a>
                                    </h4>
                                        <p class="text text-overflow text-muted hidden-xs">佐野史郎,胜地凉,川荣李奈,坂口健太郎</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/jlp/McQueen/" title="麦昆"
                                                                  data-original="/uploadimg/allimg/201811/f79d83aa6a822483.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/jlp/McQueen/" title="麦昆">麦昆</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            亚历山大·麦昆,伊莎贝拉·布罗,玛德莲娜·弗莱克维亚,裘蒂·洁德</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/xj/YouCantFightChristmas/" title="躲不过的圣诞节"
                                                                  data-original="/uploadimg/allimg/201811/206306fd2a4ecb86.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/xj/YouCantFightChristmas/" title="躲不过的圣诞节">躲不过的圣诞节</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">Brely Evans</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/jq/naxiemingzinaxienian_2018_/"
                                                                  title="那些名字那些年(2018)"
                                                                  data-original="/uploadimg/allimg/201811/4f533dc1cfdb8287.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新预告片</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/jq/naxiemingzinaxienian_2018_/" title="那些名字那些年(2018)">那些名字那些年..</a>
                                    </h4>
                                        <p class="text text-overflow text-muted hidden-xs">盛一伦,郑湫泓,卿雯,吴烨,王禹 </p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload" href="/jq/Nancy/"
                                                                  title="南茜"
                                                                  data-original="/uploadimg/allimg/201811/af2f853063ef37be.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/jq/Nancy/" title="南茜">南茜</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            安德丽亚·瑞斯波罗格,史蒂夫·布西密,安·唐德,约翰·雷吉扎莫,吉恩·史密斯-卡梅隆</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dz/TheTrough/" title="低压槽：欲望之城"
                                                                  data-original="/uploadimg/allimg/201811/07932bcfb6c4337a.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dz/TheTrough/" title="低压槽：欲望之城">低压槽：欲望之..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">张家辉,徐静蕾,何炅,余男,苗侨伟</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/xj/Birthmarke/" title="胎记"
                                                                  data-original="/uploadimg/allimg/201811/a940fe6f4c85adad.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/xj/Birthmarke/" title="胎记">胎记</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            马修·古迪,菲奥纽拉·弗拉纳根,托妮·科莱特,苏珊娜·克莱蒙</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/jq/guitanqihuanlvcheng/" title="诡探奇幻旅程"
                                                                  data-original="/uploadimg/allimg/201811/47be9b370171d212.jpg"><span
                                        class="play hidden-xs"></span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/jq/guitanqihuanlvcheng/" title="诡探奇幻旅程">诡探奇幻旅程</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">茹常虎,卢江宇,李婵,吴焱尊</p></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-wide-25 hidden-md hidden-sm hidden-xs">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=29&order=hit">更多
                            <i class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__media active col-pd clearfix">
                            <li>
                                <div class="thumb"><a class="m-thumb stui-vodlist__thumb lazyload"
                                                      href="/kb/huoshidianti/" title="活尸电梯"
                                                      data-original="/uploadimg/allimg/180906/a2214819b3e92e3a.jpg"><span
                                        class="pic-tag pic-tag-h">1</span></a></div>
                                <div class="detail detail-side"><h4 class="title"><a href="/kb/huoshidianti/"><i
                                        class="icon iconfont icon-more text-muted pull-right"></i> 活尸电梯</a></h4>
                                    <p class="font-12"><span class="text-muted">类型：</span>恐怖片 , <span
                                            class="text-muted">地区：</span>欧美</p>
                                    <p class="font-12 margin-0"><span class="text-muted">主演：</span>亚历山德罗·罗亚,卡罗利娜..</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a href="/rebo/yiluxiangxi/" title="一路向西"><span
                                    class="text-muted pull-right">HD</span><span class="badge badge-second">2</span>一路向西</a>
                            </li>
                            <li><a href="/rebo/xinjinpingmei3D/" title="新金瓶梅3D"><span
                                    class="text-muted pull-right">BD</span><span class="badge badge-third">3</span>新金瓶梅3D</a>
                            </li>
                            <li><a href="/jq/jianghuernv/" title="江湖儿女"><span class="text-muted pull-right"></span><span
                                    class="badge">4</span>江湖儿女</a></li>
                            <li><a href="/rebo/shentifengmanxuebaideguafu/" title="身体丰满雪白的寡妇"><span
                                    class="text-muted pull-right">HD720P韩..</span><span class="badge">5</span>身体丰满雪白的..</a>
                            </li>
                            <li><a href="/xj/xihongshishoufu/" title="西虹市首富"><span class="text-muted pull-right">HD1280高..</span><span
                                    class="badge">6</span>西虹市首富</a></li>
                            <li><a href="/dz/bingfengxia_shikongxingzhe/" title="冰封侠：时空行者"><span
                                    class="text-muted pull-right">TC清晰版</span><span class="badge">7</span>冰封侠：时空行..</a>
                            </li>
                            <li><a href="/dz/sishenzhenrenban/" title="死神真人版"><span class="text-muted pull-right">BD1280高..</span><span
                                    class="badge">8</span>死神真人版</a></li>
                            <li><a href="/rebo/yanmu16quanji/" title="艳母1-6全集"><span
                                    class="text-muted pull-right"></span><span class="badge">9</span>艳母1-6全集</a></li>
                            <li><a href="/jq/shangliushehui/" title="上流社会"><span
                                    class="text-muted pull-right">HD1280高..</span><span class="badge">10</span>上流社会</a>
                            </li>
                        </ul>
                    </div>
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=29">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_25.png"/>筛选</h3></div>
                    </div>
                    <div class="stui-pannel_bd col-pd">
                        <ul class="stui-vodlist__screen clearfix">
                            <li><a href="/search.php?searchtype=5&tid=29&area=大陆" title="大陆">大陆</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=香港" title="香港">香港</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=台湾" title="台湾">台湾</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=日本" title="日本">日本</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=韩国" title="韩国">韩国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=欧美" title="欧美">欧美</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=泰国" title="泰国">泰国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=印度" title="印度">印度</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&area=其他" title="其他">其他</a></li>
                        </ul>
                        <ul class="stui-vodlist__screen top-line-dot clearfix">
                            <li><a href="/search.php?searchtype=5&tid=29&year=2018" title="2018">2018</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2017" title="2017">2017</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2016" title="2016">2016</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2015" title="2015">2015</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2014" title="2014">2014</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2013" title="2013">2013</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2012" title="2012">2012</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2011" title="2011">2011</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2010" title="2010">2010</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2009" title="2009">2009</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2008" title="2008">2008</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=2007" title="2007">2007</a></li>
                            <li><a href="/search.php?searchtype=5&tid=29&year=more" title="更早">更早</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="stui-pannel stui-pannel-bg clearfix">
            <div class="stui-pannel-box clearfix">
                <div class="col-lg-wide-75 col-xs-1 padding-0">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/dsj/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_30.png"/><a href="/dsj/index.html">电视剧</a>
                            </h3>
                            <ul class="nav nav-text pull-right hidden-sm hidden-xs">
                                <li><a href="/dalu/index.html" class="text-muted">大陆剧</a> <span
                                        class="split-line"></span></li>
                                <li><a href="/tvb/index.html" class="text-muted">港台剧</a> <span
                                        class="split-line"></span></li>
                                <li><a href="/hanri/index.html" class="text-muted">韩日剧</a> <span
                                        class="split-line"></span></li>
                                <li><a href="/tv/index.html" class="text-muted">欧美剧</a> <span class="split-line"></span>
                                </li>
                                <li><a href="/hw/index.html" class="text-muted">海外剧</a> <span class="split-line"></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="stui-pannel_bd clearfix">
                        <ul class="stui-vodlist clearfix">
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/womendesishinian/" title="我们的四十年"
                                                                  data-original="/uploadimg/allimg/181111/e30209eb08571378.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至06</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/womendesishinian/" title="我们的四十年">我们的四十年</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">金世佳,柴碧云,李茂,徐小飒</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/jingzhe/" title="惊蛰"
                                                                  data-original="/uploadimg/allimg/181107/6e5feb3a08060c12.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至22集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/jingzhe/" title="惊蛰">惊蛰</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">杨烁,迟嘉,林雪飘,刘陆</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/huangtugaotian/" title="黄土高天"
                                                                  data-original="/uploadimg/allimg/181102/9897127046d332c0.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至13集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/huangtugaotian/" title="黄土高天">黄土高天</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">董勇,王海燕,马少骅,高明</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/fengzaiqishi/" title="风再起时"
                                                                  data-original="/uploadimg/allimg/201810/b173c1e45ed768f1.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到18集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/fengzaiqishi/" title="风再起时">风再起时</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">陆毅,袁泉,朱雨辰,王维维</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/nihewodeqingchengshiguang/"
                                                                  title="你和我的倾城时光"
                                                                  data-original="/uploadimg/allimg/201810/9a6264e34c351031.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至06</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/nihewodeqingchengshiguang/" title="你和我的倾城时光">你和我的倾城时..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">赵丽颖,金瀚,曹曦文,俞灏明</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/liangsheng_womenkebukeyibuyoushang/"
                                                                  title="凉生，我们可不可以不忧伤"
                                                                  data-original="/uploadimg/allimg/201809/25e865f32027f54e.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到58集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/liangsheng_womenkebukeyibuyoushang/" title="凉生，我们可不可以不忧伤">凉生，我们可不..</a>
                                    </h4>
                                        <p class="text text-overflow text-muted hidden-xs">钟汉良，马天宇，孙怡，于朦胧，孟子义，王智</p>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/jiangye/" title="将夜"
                                                                  data-original="/uploadimg/allimg/201810/ef89d458565c1cf6.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到20集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/jiangye/" title="将夜">将夜</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            陈飞宇，宋伊人，胡军，郑少秋，黎明，孟子义，袁冰妍，孙祖君，童瑶</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dalu/renjianguizedierji/" title="人间规则第二季"
                                                                  data-original="http://tupian.tupianzy.com/pic/upload/vod/2018-11-14/201811141542168258.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">12集全</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dalu/renjianguizedierji/" title="人间规则第二季">人间规则第二季</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">张雅玫,厉娜,王李丹妮,陈子由</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/tv/bitediyiji/" title="比特第一季"
                                                                  data-original="/uploadimg/allimg/181115/e3f050c86e2b82fd.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到01集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/tv/bitediyiji/" title="比特第一季">比特第一季</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            杰尼斯·纽沃纳,克里斯蒂安·贝克尔,卡洛琳·赫弗斯,思文佳·永</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/tv/heidaoyongshidiyiji/" title="黑道勇士第一季"
                                                                  data-original="/uploadimg/allimg/181115/20b80ae67af4bbcc.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到06集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/tv/heidaoyongshidiyiji/" title="黑道勇士第一季">黑道勇士第一季</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">Jakob Oftebro,Søren
                                            Malling,Dar Salim,Danica Ćurčić</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/tv/gaomizhediyiji/" title="告密者第一季"
                                                                  data-original="/uploadimg/allimg/181025/002c44486bde5542.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到04集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/tv/gaomizhediyiji/" title="告密者第一季">告密者第一季</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">帕迪·康斯戴恩,Nabhaan
                                            Rizwan,蓓尔·波利,Fehinti Balogun</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/tv/zhetangnvwangdisanji/" title="蔗糖女王第三季"
                                                                  data-original="/uploadimg/allimg/181017/1602887333e6cda2.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新到05集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/tv/zhetangnvwangdisanji/" title="蔗糖女王第三季">蔗糖女王第三季</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            卢蒂娜·卫斯理,唐恩-林叶·加德纳,科菲·斯里博伊,奥马尔·J·多尔西</p></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-wide-25 hidden-md hidden-sm hidden-xs">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=30&order=hit">更多
                            <i class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__media active col-pd clearfix">
                            <li>
                                <div class="thumb"><a class="m-thumb stui-vodlist__thumb lazyload"
                                                      href="/dalu/minghongchuan/" title="鸣鸿传"
                                                      data-original="/uploadimg/allimg/201809/e14c1d8cd0dff56d.jpg"><span
                                        class="pic-tag pic-tag-h">1</span></a></div>
                                <div class="detail detail-side"><h4 class="title"><a href="/dalu/minghongchuan/"><i
                                        class="icon iconfont icon-more text-muted pull-right"></i> 鸣鸿传</a></h4>
                                    <p class="font-12"><span class="text-muted">类型：</span>大陆剧 , <span
                                            class="text-muted">地区：</span>大陆</p>
                                    <p class="font-12 margin-0"><span class="text-muted">主演：</span>张亮，白客，陈都灵，吴优，..</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a href="/dalu/youyongxiansheng/" title="游泳先生"><span
                                    class="text-muted pull-right">46集全</span><span class="badge badge-second">2</span>游泳先生</a>
                            </li>
                            <li><a href="/dalu/wozaidalisidangchongwu/" title="我在大理寺当宠物"><span
                                    class="text-muted pull-right">22集全</span><span class="badge badge-third">3</span>我在大理寺当宠..</a>
                            </li>
                            <li><a href="/dalu/shirifengbaoyueyu/" title="蚀日风暴粤语"><span class="text-muted pull-right">36集全</span><span
                                    class="badge">4</span>蚀日风暴粤语</a></li>
                            <li><a href="/dalu/liangsheng_womenkebukeyibuyoushang/" title="凉生，我们可不可以不忧伤"><span
                                    class="text-muted pull-right">更新到58集</span><span class="badge">5</span>凉生，我们可不..</a>
                            </li>
                            <li><a href="/dalu/ruruobalibukuaile/" title="如若巴黎不快乐"><span class="text-muted pull-right">更新到48集</span><span
                                    class="badge">6</span>如若巴黎不快乐</a></li>
                            <li><a href="/dalu/niangdao/" title="娘道"><span
                                    class="text-muted pull-right">更新至第76集</span><span class="badge">7</span>娘道</a></li>
                            <li><a href="/tvb/chuangshiji1guoyu/" title="创世纪1国语"><span
                                    class="text-muted pull-right">完结</span><span class="badge">8</span>创世纪1国语</a></li>
                            <li><a href="/dalu/shahai/" title="沙海"><span
                                    class="text-muted pull-right">完结+番外篇</span><span class="badge">9</span>沙海</a></li>
                            <li><a href="/dalu/doupocangqiong/" title="斗破苍穹"><span
                                    class="text-muted pull-right">更新到42集</span><span class="badge">10</span>斗破苍穹</a>
                            </li>
                        </ul>
                    </div>
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=30">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_25.png"/>筛选</h3></div>
                    </div>
                    <div class="stui-pannel_bd col-pd">
                        <ul class="stui-vodlist__screen clearfix">
                            <li><a href="/search.php?searchtype=5&tid=30&area=大陆" title="大陆">大陆</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=香港" title="香港">香港</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=台湾" title="台湾">台湾</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=日本" title="日本">日本</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=韩国" title="韩国">韩国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=欧美" title="欧美">欧美</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=泰国" title="泰国">泰国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=印度" title="印度">印度</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&area=其他" title="其他">其他</a></li>
                        </ul>
                        <ul class="stui-vodlist__screen top-line-dot clearfix">
                            <li><a href="/search.php?searchtype=5&tid=30&year=2018" title="2018">2018</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2017" title="2017">2017</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2016" title="2016">2016</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2015" title="2015">2015</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2014" title="2014">2014</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2013" title="2013">2013</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2012" title="2012">2012</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2011" title="2011">2011</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2010" title="2010">2010</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2009" title="2009">2009</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2008" title="2008">2008</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=2007" title="2007">2007</a></li>
                            <li><a href="/search.php?searchtype=5&tid=30&year=more" title="更早">更早</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="stui-pannel stui-pannel-bg clearfix">
            <div class="stui-pannel-box clearfix">
                <div class="col-lg-wide-75 col-xs-1 padding-0">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/zy/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_31.png"/><a href="/zy/index.html">综艺</a></h3>
                            <ul class="nav nav-text pull-right hidden-sm hidden-xs"></ul>
                        </div>
                    </div>
                    <div class="stui-pannel_bd clearfix">
                        <ul class="stui-vodlist clearfix">
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/huoxingqingbaojudisiji/" title="火星情报局第四季"
                                                                  data-original="/uploadimg/allimg/181012/aedcc53cbb3ca1f1.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-14期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/huoxingqingbaojudisiji/" title="火星情报局第四季">火星情报局第四..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">汪涵,李希侃,娄滋博,李诞</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/wodeshiyouriji/" title="我的室友日记"
                                                                  data-original="/uploadimg/allimg/181012/542fa44c4126a02e.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-14期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/wodeshiyouriji/" title="我的室友日记">我的室友日记</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">金星</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/jingxihuanlesong/" title="惊喜欢乐送"
                                                                  data-original="/uploadimg/allimg/180921/759b7737172ea8d3.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-08期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/jingxihuanlesong/" title="惊喜欢乐送">惊喜欢乐送</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">内详</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/qizidelangmanlvxing/" title="妻子的浪漫旅行"
                                                                  data-original="/uploadimg/allimg/180819/3e3b3979f6f6c622.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-14期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/qizidelangmanlvxing/" title="妻子的浪漫旅行">妻子的浪漫旅行</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">张杰,谢娜,应采儿,陈小春</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/junwudabenyingdisanji/" title="军武大本营第三季"
                                                                  data-original="/uploadimg/allimg/180802/7f1a733ac295176d.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-14期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/junwudabenyingdisanji/" title="军武大本营第三季">军武大本营第三..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">毕蜂,张召忠</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/xingfulaiqiaomen/" title="幸福来敲门"
                                                                  data-original="/uploadimg/allimg/180802/7c90169d1935b858.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-13期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/xingfulaiqiaomen/" title="幸福来敲门">幸福来敲门</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">周群/赵川/涂磊</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/dawangxiaowang/" title="大王小王"
                                                                  data-original="/uploadimg/allimg/180802/3c36ceb421c08fdc.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-13期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/dawangxiaowang/" title="大王小王">大王小王</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">内详</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/yingshifengyunlu/" title="影视风云路"
                                                                  data-original="/uploadimg/allimg/180802/672b1598421990c8.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-14期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/yingshifengyunlu/" title="影视风云路">影视风云路</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">向真</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/kuailesanxiongdi/" title="快乐三兄弟"
                                                                  data-original="/uploadimg/allimg/180801/3ec4c4bf0f6abb63.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-13期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/kuailesanxiongdi/" title="快乐三兄弟">快乐三兄弟</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">内详</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/wenyuxintiandi/" title="文娱新天地"
                                                                  data-original="/uploadimg/allimg/180731/3ccd38119b4bc8e8.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-14期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/wenyuxintiandi/" title="文娱新天地">文娱新天地</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">马杰 王冠</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/dushixiaokouzu/" title="都市笑口组"
                                                                  data-original="/uploadimg/allimg/180731/d48bf9e5b7566c73.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-13期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/dushixiaokouzu/" title="都市笑口组">都市笑口组</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">内详</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/zy/mahoupao/" title="马后炮"
                                                                  data-original="/uploadimg/allimg/180731/a2ea905128c7ab17.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至：2018-11-13期</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/zy/mahoupao/" title="马后炮">马后炮</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">内详</p></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-wide-25 hidden-md hidden-sm hidden-xs">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=31&order=hit">更多
                            <i class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__media active col-pd clearfix">
                            <li>
                                <div class="thumb"><a class="m-thumb stui-vodlist__thumb lazyload"
                                                      href="/zy/wojiushiyanyuan/" title="我就是演员"
                                                      data-original="/uploadimg/allimg/180909/3b2992e9a4757f1b.jpg"><span
                                        class="pic-tag pic-tag-h">1</span></a></div>
                                <div class="detail detail-side"><h4 class="title"><a href="/zy/wojiushiyanyuan/"><i
                                        class="icon iconfont icon-more text-muted pull-right"></i> 我就是演员</a></h4>
                                    <p class="font-12"><span class="text-muted">类型：</span>综艺 , <span class="text-muted">地区：</span>大陆
                                    </p>
                                    <p class="font-12 margin-0"><span class="text-muted">主演：</span>章子怡,徐峥,吴秀波,陈凯..</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a href="/zy/qizidelangmanlvxing/" title="妻子的浪漫旅行"><span class="text-muted pull-right">更新至：201..</span><span
                                    class="badge badge-second">2</span>妻子的浪漫旅行</a></li>
                            <li><a href="/zy/mengmianchangjiangcaicaicaidisanji/" title="蒙面唱将猜猜猜第三季"><span
                                    class="text-muted pull-right">2018111..</span><span
                                    class="badge badge-third">3</span>蒙面唱将猜猜猜..</a></li>
                            <li><a href="/zy/xiangshengyouxinren/" title="相声有新人"><span class="text-muted pull-right">2018110..</span><span
                                    class="badge">4</span>相声有新人</a></li>
                            <li><a href="/zy/tucaodahuidierji/" title="吐槽大会第二季"><span
                                    class="text-muted pull-right">完结</span><span class="badge">5</span>吐槽大会第二季</a></li>
                            <li><a href="/zy/zhe_jiushiguanlandiyiji/" title="这！就是灌篮第一季"><span
                                    class="text-muted pull-right">2018110..</span><span class="badge">6</span>这！就是灌篮第..</a>
                            </li>
                            <li><a href="/zy/jixiantiaozhandierji/" title="极限挑战第二季"><span class="text-muted pull-right">完结</span><span
                                    class="badge">7</span>极限挑战第二季</a></li>
                            <li><a href="/zy/zhongguoxinshuochang/" title="中国新说唱"><span class="text-muted pull-right">更新至：201..</span><span
                                    class="badge">8</span>中国新说唱</a></li>
                            <li><a href="/zy/mingxingdazhentandisiji/" title="明星大侦探第四季"><span
                                    class="text-muted pull-right">2018110..</span><span class="badge">9</span>明星大侦探第四..</a>
                            </li>
                            <li><a href="/zy/kengwangjiadaodi2ji/" title="坑王驾到第2季"><span class="text-muted pull-right">更新至：201..</span><span
                                    class="badge">10</span>坑王驾到第2季</a></li>
                        </ul>
                    </div>
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=31">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_25.png"/>筛选</h3></div>
                    </div>
                    <div class="stui-pannel_bd col-pd">
                        <ul class="stui-vodlist__screen clearfix">
                            <li><a href="/search.php?searchtype=5&tid=31&area=大陆" title="大陆">大陆</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=香港" title="香港">香港</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=台湾" title="台湾">台湾</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=日本" title="日本">日本</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=韩国" title="韩国">韩国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=欧美" title="欧美">欧美</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=泰国" title="泰国">泰国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=印度" title="印度">印度</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&area=其他" title="其他">其他</a></li>
                        </ul>
                        <ul class="stui-vodlist__screen top-line-dot clearfix">
                            <li><a href="/search.php?searchtype=5&tid=31&year=2018" title="2018">2018</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2017" title="2017">2017</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2016" title="2016">2016</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2015" title="2015">2015</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2014" title="2014">2014</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2013" title="2013">2013</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2012" title="2012">2012</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2011" title="2011">2011</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2010" title="2010">2010</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2009" title="2009">2009</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2008" title="2008">2008</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=2007" title="2007">2007</a></li>
                            <li><a href="/search.php?searchtype=5&tid=31&year=more" title="更早">更早</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="stui-pannel stui-pannel-bg clearfix">
            <div class="stui-pannel-box clearfix">
                <div class="col-lg-wide-75 col-xs-1 padding-0">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/dm/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_32.png"/><a href="/dm/index.html">动漫</a></h3>
                            <ul class="nav nav-text pull-right hidden-sm hidden-xs"></ul>
                        </div>
                    </div>
                    <div class="stui-pannel_bd clearfix">
                        <ul class="stui-vodlist clearfix">
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/xinhuiguniang2018/" title="新灰姑娘2018"
                                                                  data-original="/uploadimg/allimg/181115/84ab2e8668b20158.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">HD</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/xinhuiguniang2018/" title="新灰姑娘2018">新灰姑娘201..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">Kirsten Day,Stephanie
                                            Sanditz</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/mengshouxia/" title="猛兽侠"
                                                                  data-original="/uploadimg/allimg/181115/8bd3159ce06af324.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">HD</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/mengshouxia/" title="猛兽侠">猛兽侠</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">Jim Byrnes,Gary Chalk,Ian
                                            James Corlett</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/kongbuchongwudian/" title="恐怖宠物店"
                                                                  data-original="/uploadimg/allimg/181115/4a7e09af87a80eb7.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">完结</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/kongbuchongwudian/" title="恐怖宠物店">恐怖宠物店</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">关俊彦,小野坂昌也,伊藤美纪</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/woshijiangxiaobaidierji/" title="我是江小白第二季"
                                                                  data-original="/uploadimg/allimg/181109/520271236bd9be4a.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至3集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/woshijiangxiaobaidierji/" title="我是江小白第二季">我是江小白第二..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">陈张太康,佟心竹,杨凝,李兰陵</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/ouxiangdashi_sidem_shichuyouyinmini_/"
                                                                  title="偶像大师 SideM 事出有因Mini!"
                                                                  data-original="/uploadimg/allimg/181107/0d73b6a9814b5285.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至6集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/ouxiangdashi_sidem_shichuyouyinmini_/"
                                            title="偶像大师 SideM 事出有因Mini!">偶像大师 Si..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">仲村宗悟,内田雄马,八代拓,寺岛拓笃</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/wojiadashixiongnaoziy/"
                                                                  title="我家大师兄脑子有坑 特别篇"
                                                                  data-original="/uploadimg/allimg/181031/da3bb690385d6e91.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至4集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/wojiadashixiongnaoziy/" title="我家大师兄脑子有坑 特别篇">我家大师兄脑子..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">阿杰,苏尚卿,张予佟,赵爽</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/kaijiayongshiliekai/" title="铠甲勇士猎铠"
                                                                  data-original="/uploadimg/allimg/181023/b8ab1073a9dd9f5a.jpg"><span
                                        class="play hidden-xs"></span><span
                                        class="pic-text text-right">更新至第28集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/kaijiayongshiliekai/" title="铠甲勇士猎铠">铠甲勇士猎铠</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">叶湘宇,阿部快征（日本）,郑明洋,韩欣桐</p>
                                    </div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/shandianshiyiren_liehuzuodekeyin/"
                                                                  title="闪电十一人 猎户座的刻印"
                                                                  data-original="/uploadimg/allimg/181019/4ec0fd5aded16990.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">连载6</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/shandianshiyiren_liehuzuodekeyin/" title="闪电十一人 猎户座的刻印">闪电十一人
                                        猎..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">村濑步,神谷浩史,福山润,竹内顺子</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/zhandoubageji_diyiji/" title="战斗吧歌姬！第一季"
                                                                  data-original="/uploadimg/allimg/181010/4b8bcf5e302d5770.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至6集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/zhandoubageji_diyiji/" title="战斗吧歌姬！第一季">战斗吧歌姬！第..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">
                                            李清歌,神宫司玉藻,卡缇娅·乌拉诺娃,伊莎贝拉·霍利</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/weiwoersheng/" title="为我而生"
                                                                  data-original="/uploadimg/allimg/181010/112ad9b88c59f8cf.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至6集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/weiwoersheng/" title="为我而生">为我而生</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">小野友树,加藤英美里,远藤绫,藤田咲</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/darendefangjudian/" title="大人的防具店"
                                                                  data-original="/uploadimg/allimg/181009/c4c870a878d6a134.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">更新至6集</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/darendefangjudian/" title="大人的防具店">大人的防具店</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">石井马克,东山奈央,樱井孝宏,大森日雅</p></div>
                                </div>
                            </li>
                            <li class="col-md-5 col-sm-4 col-xs-3 hidden-lg hidden-md">
                                <div class="stui-vodlist__box"><a class="stui-vodlist__thumb lazyload"
                                                                  href="/dm/dongjingshishiguidisiji/" title="东京食尸鬼第四季"
                                                                  data-original="/uploadimg/allimg/181005/24bdc80f2f5842c3.jpg"><span
                                        class="play hidden-xs"></span><span class="pic-text text-right">连载6</span></a>
                                    <div class="stui-vodlist__detail"><h4 class="title text-overflow"><a
                                            href="/dm/dongjingshishiguidisiji/" title="东京食尸鬼第四季">东京食尸鬼第四..</a></h4>
                                        <p class="text text-overflow text-muted hidden-xs">花江夏树,石川界人,藤原夏海,佐仓绫音</p></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-wide-25 hidden-md hidden-sm hidden-xs">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=32&order=hit">更多
                            <i class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__media active col-pd clearfix">
                            <li>
                                <div class="thumb"><a class="m-thumb stui-vodlist__thumb lazyload"
                                                      href="/dm/haizeiwang/" title="海贼王"
                                                      data-original="/pic/uploadimg/2013-10/8.jpg"><span
                                        class="pic-tag pic-tag-h">1</span></a></div>
                                <div class="detail detail-side"><h4 class="title"><a href="/dm/haizeiwang/"><i
                                        class="icon iconfont icon-more text-muted pull-right"></i> 海贼王</a></h4>
                                    <p class="font-12"><span class="text-muted">类型：</span>动漫 , <span class="text-muted">地区：</span>日本
                                    </p>
                                    <p class="font-12 margin-0"><span class="text-muted">主演：</span>田中真弓,冈村明美,中井和..</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a href="/dm/modaozushi/" title="魔道祖师"><span class="text-muted pull-right">更新到15集</span><span
                                    class="badge badge-second">2</span>魔道祖师</a></li>
                            <li><a href="/dm/tianjiangnvzi__nvh/" title="天降女子!～女孩子从2楼…掉了下来!?～"><span
                                    class="text-muted pull-right">更新至09集</span><span class="badge badge-third">3</span>天降女子!～女..</a>
                            </li>
                            <li><a href="/dm/xingchenbian/" title="星辰变"><span
                                    class="text-muted pull-right">连载7</span><span class="badge">4</span>星辰变</a></li>
                            <li><a href="/dm/yaoshenjizhiyingyaopian/" title="妖神记之影妖篇"><span
                                    class="text-muted pull-right">更新到17集</span><span class="badge">5</span>妖神记之影妖篇</a>
                            </li>
                            <li><a href="/dm/douluodaludi1ji/" title="斗罗大陆 第1季"><span class="text-muted pull-right">更新到26集</span><span
                                    class="badge">6</span>斗罗大陆 第1..</a></li>
                            <li><a href="/dm/wugengjidierji/" title="武庚纪第二季"><span
                                    class="text-muted pull-right">42集全</span><span class="badge">7</span>武庚纪第二季</a></li>
                            <li><a href="/dm/jinjidejurendisanji/" title="进击的巨人第三季"><span class="text-muted pull-right">更新到12集</span><span
                                    class="badge">8</span>进击的巨人第三..</a></li>
                            <li><a href="/dm/dongjingshishiguidisiji/" title="东京食尸鬼第四季"><span
                                    class="text-muted pull-right">连载6</span><span class="badge">9</span>东京食尸鬼第四..</a>
                            </li>
                            <li><a href="/dm/qingrenzhendehewolianai/" title="请认真的和我恋爱"><span
                                    class="text-muted pull-right">完结</span><span class="badge">10</span>请认真的和我恋..</a>
                            </li>
                        </ul>
                    </div>
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/search.php?searchtype=5&tid=32">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_25.png"/>筛选</h3></div>
                    </div>
                    <div class="stui-pannel_bd col-pd">
                        <ul class="stui-vodlist__screen clearfix">
                            <li><a href="/search.php?searchtype=5&tid=32&area=大陆" title="大陆">大陆</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=香港" title="香港">香港</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=台湾" title="台湾">台湾</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=日本" title="日本">日本</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=韩国" title="韩国">韩国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=欧美" title="欧美">欧美</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=泰国" title="泰国">泰国</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=印度" title="印度">印度</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&area=其他" title="其他">其他</a></li>
                        </ul>
                        <ul class="stui-vodlist__screen top-line-dot clearfix">
                            <li><a href="/search.php?searchtype=5&tid=32&year=2018" title="2018">2018</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2017" title="2017">2017</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2016" title="2016">2016</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2015" title="2015">2015</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2014" title="2014">2014</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2013" title="2013">2013</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2012" title="2012">2012</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2011" title="2011">2011</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2010" title="2010">2010</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2009" title="2009">2009</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2008" title="2008">2008</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=2007" title="2007">2007</a></li>
                            <li><a href="/search.php?searchtype=5&tid=32&year=more" title="更早">更早</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>    <!-- 分类列表 -->
        <div class="stui-pannel stui-pannel-bg clearfix">
            <div class="stui-pannel-box clearfix">
                <div class="col-lg-4 col-md-3 col-sm-2 col-xs-1 ">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/dy/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>电影热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a class="stui-vodlist__thumb active lazyload" href="/kb/huoshidianti/" title="活尸电梯"
                                   data-original="/uploadimg/allimg/180906/a2214819b3e92e3a.jpg"><span
                                    class="play active hidden-xs"></span><span class="pic-tag pic-tag-h">Top1</span></a>
                            </li>
                            <li><a href="/kb/huoshidianti/" title="活尸电梯"><span class="text-muted pull-right hidden-md">BD1280高..</span><span
                                    class="badge badge-first">1</span>活尸电梯</a></li>
                            <li><a href="/rebo/yiluxiangxi/" title="一路向西"><span class="text-muted pull-right hidden-md">HD</span><span
                                    class="badge badge-second">2</span>一路向西</a></li>
                            <li><a href="/rebo/xinjinpingmei3D/" title="新金瓶梅3D"><span
                                    class="text-muted pull-right hidden-md">BD</span><span
                                    class="badge badge-third">3</span>新金瓶梅3D</a></li>
                            <li><a href="/jq/jianghuernv/" title="江湖儿女"><span class="badge">4</span>江湖儿女</a></li>
                            <li><a href="/rebo/shentifengmanxuebaideguafu/" title="身体丰满雪白的寡妇"><span
                                    class="text-muted pull-right hidden-md">HD720P韩..</span><span class="badge">5</span>身体丰满雪白的..</a>
                            </li>
                            <li><a href="/xj/xihongshishoufu/" title="西虹市首富"><span
                                    class="text-muted pull-right hidden-md">HD1280高..</span><span class="badge">6</span>西虹市首富</a>
                            </li>
                            <li><a href="/dz/bingfengxia_shikongxingzhe/" title="冰封侠：时空行者"><span
                                    class="text-muted pull-right hidden-md">TC清晰版</span><span class="badge">7</span>冰封侠：时空行..</a>
                            </li>
                            <li><a href="/dz/sishenzhenrenban/" title="死神真人版"><span
                                    class="text-muted pull-right hidden-md">BD1280高..</span><span class="badge">8</span>死神真人版</a>
                            </li>
                            <li><a href="/rebo/yanmu16quanji/" title="艳母1-6全集"><span class="badge">9</span>艳母1-6全集</a>
                            </li>
                            <li><a href="/jq/shangliushehui/" title="上流社会"><span
                                    class="text-muted pull-right hidden-md">HD1280高..</span><span
                                    class="badge">10</span>上流社会</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-2 col-xs-1 ">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/dsj/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>电视剧热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a class="stui-vodlist__thumb active lazyload" href="/dalu/minghongchuan/" title="鸣鸿传"
                                   data-original="/uploadimg/allimg/201809/e14c1d8cd0dff56d.jpg"><span
                                    class="play active hidden-xs"></span><span class="pic-tag pic-tag-h">Top1</span></a>
                            </li>
                            <li><a href="/dalu/minghongchuan/" title="鸣鸿传"><span
                                    class="text-muted pull-right hidden-md">完结</span><span
                                    class="badge badge-first">1</span>鸣鸿传</a></li>
                            <li><a href="/dalu/youyongxiansheng/" title="游泳先生"><span
                                    class="text-muted pull-right hidden-md">46集全</span><span class="badge badge-second">2</span>游泳先生</a>
                            </li>
                            <li><a href="/dalu/wozaidalisidangchongwu/" title="我在大理寺当宠物"><span
                                    class="text-muted pull-right hidden-md">22集全</span><span
                                    class="badge badge-third">3</span>我在大理寺当宠..</a></li>
                            <li><a href="/dalu/shirifengbaoyueyu/" title="蚀日风暴粤语"><span
                                    class="text-muted pull-right hidden-md">36集全</span><span class="badge">4</span>蚀日风暴粤语</a>
                            </li>
                            <li><a href="/dalu/liangsheng_womenkebukeyibuyoushang/" title="凉生，我们可不可以不忧伤"><span
                                    class="text-muted pull-right hidden-md">更新到58集</span><span class="badge">5</span>凉生，我们可不..</a>
                            </li>
                            <li><a href="/dalu/ruruobalibukuaile/" title="如若巴黎不快乐"><span
                                    class="text-muted pull-right hidden-md">更新到48集</span><span class="badge">6</span>如若巴黎不快乐</a>
                            </li>
                            <li><a href="/dalu/niangdao/" title="娘道"><span class="text-muted pull-right hidden-md">更新至第76集</span><span
                                    class="badge">7</span>娘道</a></li>
                            <li><a href="/tvb/chuangshiji1guoyu/" title="创世纪1国语"><span
                                    class="text-muted pull-right hidden-md">完结</span><span class="badge">8</span>创世纪1国语</a>
                            </li>
                            <li><a href="/dalu/shahai/" title="沙海"><span
                                    class="text-muted pull-right hidden-md">完结+番外篇</span><span class="badge">9</span>沙海</a>
                            </li>
                            <li><a href="/dalu/doupocangqiong/" title="斗破苍穹"><span
                                    class="text-muted pull-right hidden-md">更新到42集</span><span class="badge">10</span>斗破苍穹</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-2 col-xs-1 ">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/zy/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>综艺热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a class="stui-vodlist__thumb active lazyload" href="/zy/wojiushiyanyuan/" title="我就是演员"
                                   data-original="/uploadimg/allimg/180909/3b2992e9a4757f1b.jpg"><span
                                    class="play active hidden-xs"></span><span class="pic-tag pic-tag-h">Top1</span></a>
                            </li>
                            <li><a href="/zy/wojiushiyanyuan/" title="我就是演员"><span
                                    class="text-muted pull-right hidden-md">2018110..</span><span
                                    class="badge badge-first">1</span>我就是演员</a></li>
                            <li><a href="/zy/qizidelangmanlvxing/" title="妻子的浪漫旅行"><span
                                    class="text-muted pull-right hidden-md">更新至：201..</span><span
                                    class="badge badge-second">2</span>妻子的浪漫旅行</a></li>
                            <li><a href="/zy/mengmianchangjiangcaicaicaidisanji/" title="蒙面唱将猜猜猜第三季"><span
                                    class="text-muted pull-right hidden-md">2018111..</span><span
                                    class="badge badge-third">3</span>蒙面唱将猜猜猜..</a></li>
                            <li><a href="/zy/xiangshengyouxinren/" title="相声有新人"><span
                                    class="text-muted pull-right hidden-md">2018110..</span><span class="badge">4</span>相声有新人</a>
                            </li>
                            <li><a href="/zy/tucaodahuidierji/" title="吐槽大会第二季"><span
                                    class="text-muted pull-right hidden-md">完结</span><span class="badge">5</span>吐槽大会第二季</a>
                            </li>
                            <li><a href="/zy/zhe_jiushiguanlandiyiji/" title="这！就是灌篮第一季"><span
                                    class="text-muted pull-right hidden-md">2018110..</span><span class="badge">6</span>这！就是灌篮第..</a>
                            </li>
                            <li><a href="/zy/jixiantiaozhandierji/" title="极限挑战第二季"><span
                                    class="text-muted pull-right hidden-md">完结</span><span class="badge">7</span>极限挑战第二季</a>
                            </li>
                            <li><a href="/zy/zhongguoxinshuochang/" title="中国新说唱"><span
                                    class="text-muted pull-right hidden-md">更新至：201..</span><span class="badge">8</span>中国新说唱</a>
                            </li>
                            <li><a href="/zy/mingxingdazhentandisiji/" title="明星大侦探第四季"><span
                                    class="text-muted pull-right hidden-md">2018110..</span><span class="badge">9</span>明星大侦探第四..</a>
                            </li>
                            <li><a href="/zy/kengwangjiadaodi2ji/" title="坑王驾到第2季"><span
                                    class="text-muted pull-right hidden-md">更新至：201..</span><span
                                    class="badge">10</span>坑王驾到第2季</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-2 col-xs-1  hidden-md">
                    <div class="stui-pannel_hd">
                        <div class="stui-pannel__head clearfix"><a class="more text-muted pull-right"
                                                                   href="/dm/index.html">更多 <i
                                class="icon iconfont icon-more"></i></a>
                            <h3 class="title"><img src="icon/icon_12.png"/>动漫热播榜</h3></div>
                    </div>
                    <div class="stui-pannel_bd">
                        <ul class="stui-vodlist__rank col-pd clearfix">
                            <li><a class="stui-vodlist__thumb active lazyload" href="/dm/haizeiwang/" title="海贼王"
                                   data-original="/pic/uploadimg/2013-10/8.jpg"><span
                                    class="play active hidden-xs"></span><span class="pic-tag pic-tag-h">Top1</span></a>
                            </li>
                            <li><a href="/dm/haizeiwang/" title="海贼王"><span class="text-muted pull-right hidden-md">更新至861集</span><span
                                    class="badge badge-first">1</span>海贼王</a></li>
                            <li><a href="/dm/modaozushi/" title="魔道祖师"><span class="text-muted pull-right hidden-md">更新到15集</span><span
                                    class="badge badge-second">2</span>魔道祖师</a></li>
                            <li><a href="/dm/tianjiangnvzi__nvh/" title="天降女子!～女孩子从2楼…掉了下来!?～"><span
                                    class="text-muted pull-right hidden-md">更新至09集</span><span
                                    class="badge badge-third">3</span>天降女子!～女..</a></li>
                            <li><a href="/dm/xingchenbian/" title="星辰变"><span class="text-muted pull-right hidden-md">连载7</span><span
                                    class="badge">4</span>星辰变</a></li>
                            <li><a href="/dm/yaoshenjizhiyingyaopian/" title="妖神记之影妖篇"><span
                                    class="text-muted pull-right hidden-md">更新到17集</span><span class="badge">5</span>妖神记之影妖篇</a>
                            </li>
                            <li><a href="/dm/douluodaludi1ji/" title="斗罗大陆 第1季"><span
                                    class="text-muted pull-right hidden-md">更新到26集</span><span class="badge">6</span>斗罗大陆
                                第1..</a></li>
                            <li><a href="/dm/wugengjidierji/" title="武庚纪第二季"><span
                                    class="text-muted pull-right hidden-md">42集全</span><span class="badge">7</span>武庚纪第二季</a>
                            </li>
                            <li><a href="/dm/jinjidejurendisanji/" title="进击的巨人第三季"><span
                                    class="text-muted pull-right hidden-md">更新到12集</span><span class="badge">8</span>进击的巨人第三..</a>
                            </li>
                            <li><a href="/dm/dongjingshishiguidisiji/" title="东京食尸鬼第四季"><span
                                    class="text-muted pull-right hidden-md">连载6</span><span class="badge">9</span>东京食尸鬼第四..</a>
                            </li>
                            <li><a href="/dm/qingrenzhendehewolianai/" title="请认真的和我恋爱"><span
                                    class="text-muted pull-right hidden-md">完结</span><span class="badge">10</span>请认真的和我恋..</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="stui-pannel stui-pannel-bg hidden-sm hidden-xs clearfix">
            <div class="stui-pannel-box">
                <div class="stui-pannel_hd">
                    <div class="stui-pannel__head clearfix"><h3 class="title"><img src="icon/icon_26.png"/>友情链接
                    </h3></div>
                </div>
                <div class="stui-pannel_bd clearfix">
                    <div class="col-xs-1">
                        <ul class="stui-link__text clearfix">
                            <li><a class="text-muted" href="https://www.ppyss.com" title="泡泡影视" target="_blank">泡泡影视</a>
                            </li>
                            <li><a class="text-muted" href="https://www.18ys.com" title="电影大全" target="_blank">电影大全</a>
                            </li>
                            <li><a class="text-muted" href="https://www.mmys.net" title="手机在线视频"
                                   target="_blank">手机在线视频</a></li>
                            <li><a class="text-muted" href="https://www.599dy.com" title="九九电影网"
                                   target="_blank">九九电影网</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- 友情链接 --></div>
</div>
<div class="container">
    <div class="row">
        <div class="stui-foot clearfix">
            <div class="col-pd text-center hidden-xs">免责申明: 特视网是一个完全免费的,可以在线观看<a
                    href="https://www.teshiw.com">最近上映电影</a>的网站。本站提供在线观看的电视剧都采集整理于网上的<a href="https://www.teshiw.com">免费好看电影</a>资源站，本网站只提供web页面服务，并不提供影片资源存储，也不参与录制、上传。若本站收录的节目无意侵犯了贵司版权，请给网页底部邮箱地址来信，我们会及时处理和回复，谢谢!
            </div>
            <p class="text-center hidden-xs">Copyright &copy; 2014-2018 <a href="/">特视网</a>联系邮件: teshiw@hotmail.com
                <script type="text/javascript" src="/ajs/tj.js"></script>
            </p>
            </a></p></div>
    </div>
</div>
<ul class="stui-extra clearfix">
    <li><a class="backtop" href="javascript:scroll(0,0)" style="display: none;"><i class="icon iconfont icon-less"></i></a>
    </li>
    <li class="visible-xs"><a class="open-share" href="javascript:;"><i class="icon iconfont icon-share"></i></a></li>
    <!--li class="hidden-xs"><span><i class="icon iconfont icon-qrcode"></i></span><div class="sideslip"><div class="col-pd"><p><img src="img/ewm2.png"/></p><p class="text-center font-12">扫码用手机访问</p></div></div></li-->
</ul>
<div class="hide"></div>
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
</body>
</html>