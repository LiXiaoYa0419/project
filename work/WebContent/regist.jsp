<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="content-language" content="zh-CN">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="杭州博采网络科技股份有限公司-高端网站建设-http:/www.bocweb.cn">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <link rel="shortcut icon" href="http://www.5kcake.com/favicon.ico">
    <title>5客蛋糕官网丨这一刻，只因分享</title>
    <link href="<%=path %>/css/public.css" rel="stylesheet">
	<link href="<%=path %>/css/main.css" rel="stylesheet">
	<link href="<%=path %>/css/reg.css" rel="stylesheet">
	<script src="<%=path %>/js/jquery-1.9.0.min.js"></script>
	<script src="<%=path %>/js/alertAndverify.js"></script>
	<script src="<%=path %>/js/jquery.SuperSlide.2.1.1.js"></script>
	<script src="<%=path %>/js/layer.js"></script><link rel="stylesheet" href="<%=path %>/css/layer.css" id="layuicss-skinlayercss">
	<script src="<%=path %>/js/main.js"></script>
  	<script type="text/javascript"> 
  	function checkUser() {
        var loginName = $('#loginName').val();
        alert(loginName);
        $.ajax({
            type : "post",
            url : "<%=path%>/register/checkUser",
			data : "loginName="+loginName,
            success : function(date) {
            	//alert("11");
            	if (date == 1) {
     	            document.getElementById("checkUN").innerHTML = "<b style='color: red'>用户名已存在</b>";
     	        } else if (date == 2) {
     	            document.getElementById("checkUN").innerHTML = "<b style='color:red'>用户名不能为空</b>";
     	        } else if(date == 3){
     	        	document.getElementById("checkUN").innerHTML = "<b style='color:red'>该用户名可以使用</b>";
     	        }
            }
        });
	}
    $(document).ready(function() {
        $("#loginName").blur(function() {
            checkUser();
        });
    })
  
	function checkForm(){
    
    //判断密码
    var password_ = /^[0-9A-Za-z]{6,}$/;
   
    //判断邮箱
    var email_ = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;    
    
    //获得input对象
    
    var password = document.getElementById("password");
    
    var email = document.getElementById("email");
   
    
     if(password == null || password.value == ""){
        alert("密码不能为空");
         return false;
     }else if(password.value.match(password_) == null){
        alert("请输入6位以上的数字或者字母");
        return false;
     } else if(email.value.match(email_) == null){
        alert("请输入正确的邮箱格式");
        return false;
    }
     return true;
}
 
    </script>
</head>
<body style="zoom: 1;">
	<div class="header">
    <div class="index-headtop">
        <div class="index-headtopmain clearfix width1190">
            <div class="index-headtoptitle fl">谢谢你长得那么好看还来光顾小5家</div>
            <ul class="index-headtoprnav fr">
                <a href="<%=path%>/login.jsp""><li>登录</li></a>
                <a href="<%=path%>/regist.jsp"> <li>注册</li></a>
				<a href="http://www.5kcake.com/Page/31">
					<li class="padleft">关于我们</li>
                </a>
                <a target="_blank" href="<%=path%>/cart.jsp">
                    <li style="margin-right: 0;">我的购物车</li>
                </a>
            </ul>
        </div>
    </div>
    <div class="index-headmid">
        <div class="index-headmidmain clearfix width1190">
            <div class="index-headmidl fl">
                <div class="index-headlogo fl" style="background: url(<%=path%>/imgs/logo1.png) no-repeat center"></div>
                <div class="index-headlogofont fl">
                    <span class="index-headlogofont1">这一刻，只因分享</span>
                    <span class="index-headlogofont2">At this moment, For sharing</span>
                </div>
            </div>
            <div class="index-headmidr fr">
                <span class="index-headmidrfont1">大成都范围内免费配送</span>
                <div class="index-headmidrfont2">4006-234-005</div>
            </div>
        </div>
    </div>
    <div class="index-headnav">
        <div class="index-headnavmain clearfix width1190">
            <ul class="index-headnavmainul clearfix">
                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="<%=path %>/index.jsp">
                        <span class="index-headnavmainulspan margintop18">首页</span><span class="index-headnavmainulspan1 margintop8">Home</span>
                    </a>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="<%=path %>/list.jsp">
                    <span class="index-headnavmainulspan margintop18">产品目录</span>
                    <span class="index-headnavmainulspan1 margintop8">Products</span>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="http://www.5kcake.com/HotGoods">
                    <span class="index-headnavmainulspan margintop18">热销推荐</span><span class="index-headnavmainulspan1 margintop8">Hot-selling</span>
                    </a>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="http://www.5kcake.com/Page/51">
                        <span class="index-headnavmainulspan margintop18">最新活动</span><span class="index-headnavmainulspan1 margintop8">Latest activities</span>
                    </a>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="http://www.5kcake.com/goodsList">
                        <span class="index-headnavmainulspan margintop18">鲜花专区</span><span class="index-headnavmainulspan1 margintop8">Flowers</span>
                    </a>
                </li>

                <li class="index-navli active">
                    <span class="nav-shugang"></span>
                    <a href="http://www.5kcake.com/WebPersonal">
                        <span class="index-headnavmainulspan margintop18">会员中心</span><span class="index-headnavmainulspan1 margintop8">Member Center</span>
                    </a>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span><a href="http://www.5kcake.com/Page/41">
                        <span class="index-headnavmainulspan margintop18">团购服务</span><span class="index-headnavmainulspan1 margintop8">bulk purchasing</span>
                    </a>
                </li>

            </ul>
        </div>
    </div>
</div>
<!-- PAGE CONTENT BEGINS -->
<div class="banner" style="background: url(<%=path%>/imgs/banner.jpg) no-repeat center; background-size: cover;">

    <div class="reg_box">
        <div class="register_box">
            <div class="reg_title bg_pink clearfix">
                <h3 class="font_s16 fl color_666">新用户注册</h3>
                <a class="denglu font_s12 color_orange fr" href="<%=path %>/login.jsp">已有账号？登录</a>
              
            </div>
            <div class="input_list" width=20px>
               <form action="<%=path %>/register/add" onsubmit="return checkForm();">
             	          用户名:<input type="text" id="loginName" name="loginName"/><span id="checkUN"></span><br><br>
               		密码:&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password" ><br><br>
               		邮箱:&nbsp;&nbsp;&nbsp;<input type="text"  name="email"  id='email' onclick="return judge();"/><br><br><br>
               		&nbsp;&nbsp;<input type="submit" value="注册" />
               		
               </form>
            </div>


        </div>
    </div>

</div>
<div class="add_address" style="display:none" id="loginsuc">
    <div class="zezao"></div>
    <div class="address_box1 font_s14">
        <div class="address_title">
            <h3 class="font_s18 color_orange1">注册成功</h3>
        </div>
        <div class="reg_info">
            <p>您已成功注册5客蛋糕网，您的会员卡号为：</p>
            <h3 class="color_red">123456789</h3>
            <p class="color_666">请尽快至个人中心完善资料以便我们能更好地为您服务，完善资料还有会员积分相赠，可用于礼品兑换。</p>
        </div>
        <div class="clearfix reg_btn_two">
            <div class="reg_one color_fff fl bg_orange"><a href="<%=path %>/index.jsp" class="color_fff">随便逛逛</a></div>
            <div class="fr person"><a class="color_444" href="<%=path%>/register/login">个人中心</a></div>
        </div>
    </div>

</div>

<!-- PAGE CONTENT ENDS -->




    <div class="footer">
        <div class="width1190">
            <ul class="footer-topbox clearfix">
                <li class="">
                    <div class="footer-logo1 fl"></div>
                    <div class="fl footer-font">
                        <span class="footer-font1">零库存新鲜烘焙</span>
                    
                    </div>

                </li>
                <li class="">
                    <div class="footer-logo2 fl"></div>
                    <div class="fl">
                        <span class="footer-font1">5小时配送上门</span>
                     
                    </div>
                </li>
                <li class="">
                    <div class="footer-logo3 fl"></div>
                    <div class="fl">
                        <span class="footer-font1">进口食材极致口感</span>
                   
                    </div>
                </li>
                <li class=" footer-topboxlast">
                    <div class="footer-logo4 fl"></div>
                    <div class="fl">
                        <span class="footer-font1">大成都范围内免费配送</span>
                     
                    </div>
                </li>
            </ul>
        </div>
        <div class="footer-midbox">
            <div class="footer-midmain width1190 clearfix">
                <div class="footer-dinggoubox fl">
                    <div class="clearfix">
                        <div class="footer-logo5 fl"></div>
                        <div class="footer-tele fl">
                            <span class="footer-telefont1">提前5小时订购</span>
                            <span class="footer-telefont2">大成都范围内免费配送</span>
                        </div>
                        <span class="footer-telephone">4006-234-005</span>
                    </div>
                    <div class="footer-zhizhaobox">
                        <span class="footer-zhizhao">全年无休8:30-22:00</span>
                        <span class="footer-zhizhao">营业执照注册号：9151010469091620XE</span>
                        <span class="footer-zhizhao">增值电信业务经营许可证：浙B2-20110000</span>
                        <span class="footer-zhizhao">浙公网安备 33010600000000号</span>
                        <span class="footer-zhizhao">Copyright ©2016 成都市猫眼食品有限责任公司</span>
                    </div>
                </div>
                <div class="footer-bottomnav fl">
                    <dl class="fl">
                        <dt>品牌故事</dt>
                        <a href="http://www.5kcake.com/Page/01">
                            <dd>公司简介</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/02">
                            <dd>公司风采</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/03">
                            <dd>5客大事件</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/04">
                            <dd>联系我们</dd>
                        </a>
                    </dl>
                    <dl class="fl">
                        <dt>帮助中心</dt>
                        <a href="http://www.5kcake.com/Page/11">
                            <dd>配送服务</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/12">
                            <dd>购物指南</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/13">
                            <dd>会员权益</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/14">
                            <dd>订单支付</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/15">
                            <dd>投诉与建议</dd>
                        </a>
                    </dl>
                    <dl class="fl">
                        <dt>售后服务</dt>
                        <a href="http://www.5kcake.com/Page/21">
                            <dd>售后咨询</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/22">
                            <dd>退货政策</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/23">
                            <dd>退货办理</dd>
                        </a>
                    </dl>
                    <dl class="fl">
                        <dt>关于我们</dt>
                        <a href="http://www.5kcake.com/Page/31">
                            <dd>公司介绍</dd>
                        </a>
                        <a href="http://www.5kcake.com/Page/32">
                            <dd>招聘信息</dd>
                        </a>
                     
                    </dl>
                </div>
                <div class="footer-erweima fr">
                    <div class="erweimabox fl">
                        <img class="erweimaimg" src="<%=path %>/imgs/weibo.png" alt="">
                        <span class="erweimabox-font">新浪微博</span>
                    </div>
                    <div class="erweimabox fl">
                        <img class="erweimaimg" src="<%=path %>/imgs/weixin.jpg" alt="">
                        <span class="erweimabox-font">微信平台</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottombox">
            <div class="footer-bottombox clearfix width1190">
                <dl class="fl">
                </dl>
                <div class="fr jianshe"></div>
            </div>
        </div>
    </div>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261743502'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261743502%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1261743502"><a href="http://www.cnzz.com/stat/website.php?web_id=1261743502" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="<%=path %>/imgs/pic.gif"></a></span><script src="./注册_files/z_stat.php" type="text/javascript"></script><script src="./注册_files/core.php" charset="utf-8" type="text/javascript"></script>

    
<script src="./注册_files/web.register.js"></script>

<script type="text/javascript">
    //图形验证码验证
    var url_imageVerify = "/ImageVerify";
    var url_personal='/WebPersonal';
</script>
   


<div class="layui-layer-move"></div>
</body>
</html>