<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
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

    
    

    <script src="<%=path %>/js/jquery-1.9.0.min.js"></script>
<script src="<%=path %>/js/alertAndverify.js"></script>
<script src="<%=path %>/js/jquery.SuperSlide.2.1.1.js"></script>
<script src="<%=path %>/js/layer.js"></script><link rel="stylesheet" href="<%=path %>/css/layer.css" id="layuicss-skinlayercss">
<script src="<%=path %>/js/main.js"></script>
<script type="text/javascript">
$(function () {
	    	if('${user.loginName }' != "" ){
	    		$("a").remove("#b");
	    		var html = "<a href=' "+'<%=path %>/personal1.jsp'+" '>"+'${user.loginName }'+"</a>";
	    		document.getElementById('a').innerHTML = html;
	    	}
	    });
</script>
</head>
<body style="zoom: 1;">






<div class="header">
    <div class="index-headtop">
        <div class="index-headtopmain clearfix width1190">
            <div class="index-headtoptitle fl">谢谢你长得那么好看还来光顾小5家</div>
            <ul class="index-headtoprnav fr">
                        <a href="<%=path %>/login.jsp" >
                            <li id="a">登录</li>
                        </a>
                        <a href="<%=path%>/regist.jsp">
                            <li id="b">注册</li>
                        </a>

                <a href="http://www.5kcake.com/Page/31">
                    <li class="padleft">关于我们</li>
                </a>
                <a target="_blank" href="#">
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
                    <a href="<%=path %>/product/list">
                    <span class="index-headnavmainulspan margintop18">产品目录</span>
                    <span class="index-headnavmainulspan1 margintop8">Products</span>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="<%=path%>/product/hotlist">
                    <span class="index-headnavmainulspan margintop18">热销产品</span><span class="index-headnavmainulspan1 margintop8">Hot-selling</span>
                    </a>
                </li>

                <li class="index-navli">
                    <span class="nav-shugang"></span>
                    <a href="<%=path%>/product/newProduct">
                        <span class="index-headnavmainulspan margintop18">最新产品</span><span class="index-headnavmainulspan1 margintop8">Latest activities</span>
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
                    <a href="<%=path%>/personal1.jsp">
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
<div class="main" style="padding-bottom: 90px;">
    <div class="bread">
        <a class="bread-a home" href="<%=path%>/index.jsp">首页</a>&gt;
        <a class="bread-a" href="<%=path%>/cart.jsp">购物车</a>
    </div>
    <div class="shopcarbox width1190">
    
        <div class="allchioce bixuanpro">
            <ol class="clearfix">
                <li class="width240 nocenter clearfix"><input type="checkbox" class="selectall">全选</li>
                <li class="width200">商品信息</li>
                
                <li class="width154">单价</li>
                <li class="width145">数量</li>
                <li class="width154">小计</li>
                <li class="width80">操作</li>
            </ol>
            <c:set var="zongji" value="0"/>
            
            <c:forEach items="${cart }" var="cart">
            <ul>
            <c:set var="zongji" value="${zongji+cart.value.product.price*c.value.count}"/>
	 						<li class="allchioceli clearfix">
                                <div class="width240 nocenter neir clearfix">
                                   <input type="checkbox" class="checkdp" data-cartids="" data-optids="${p.id }">

									
                                    <img src="${cart.value.product.imgs }" alt="">
                                </div>
                              
                                <div class="width200 neir xinxi">${cart.value.product.name }</div>
                                
                                <div class="width154 neir linehight126 danjia" style="color: #666;">
                                    ¥<span style="color: #666;" class="danjia-xx">${cart.value.product.price }</span>
                                </div>
                                
                                <div class="width145 neir numout">
                                    <div class="cheap-num">
                                        <div style="margin-top: 36px; margin-left: 38px;" class="num-box">
                                            <span class="but-cut fl">-</span>
                                            <input class="but-num width40" value="1" type="text" disabled="">
                                            <span class="but-add  fl">+</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="width154 neir linehight126 peice-danjian" style="color: #c0a85f;">
                                    ¥<span class="peice-danjianxx">${cart.value.product.price*cart.value.count }</span>
                                </div>
                                <div class="width80 neir linehight126 shanchu"><a href="<%=path %>/cart/removeProduct?id=${cart.value.product.id}">删除</a></div>
                             
                            </li>
                           

             
            </ul>
            </c:forEach>
           
        </div>

        <div class="allchioce zixuanpro">
            <p>自选产品</p>
            <ul class="">
                            
                            <li class="allchioceli clearfix" id="optmodel">
                                <div class="width240 nocenter neir clearfix">
                                    <input type="checkbox" class="checkdp" data-optids="bdfc7168-e413-48e8-8242-ab334e4ab2a2" data-cartids="" data-number="">
                                    <img src="<%=path %>/imgs/04fdaddf-7ac0-46b0-a0b6-d3ba3fdd69a6.png_700x500.jpeg">
                                </div>
                                <div class="width200 neir xinxi">标配外自选餐具</div>
                                 
                                <div class="width154 neir linehight126 danjia" style="color: #666;">
                                    ¥<span style="color: #666;" class="danjia-xx">0.50</span>
                                </div>
                                <div class="width145 neir numout">
                                    <div class="cheap-num">
                                        <div style="margin-top: 36px; margin-left: 38px;" class="num-box">
                                            <span class="but-cut fl">-</span>
                                            <input class="but-num width40" value="1" type="text" disabled="">
                                            <span class="but-add  fl">+</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="width154 neir linehight126 peice-danjian" style="color: #c0a85f;">
                                    ¥<span class="peice-danjianxx">0.50</span>
                                </div>
                                
                            </li>

            


            </ul>
        </div>
    </div>

</div>

<div class="shopCar-pricebox width1190">
    <div class="fl shopCar-priceboxl">
        <input type="checkbox" class="shopCar-allchionce selectall1">全选
         
    </div>
    <div class="fr shopCar-priceboxr">
        <div class="clearfix">
            <div class="zongji fl">商品总计：<span class="shopCar-price">${zongji}</span></div>
            <button class="fr jiesuan"><a href="<%=path%>/Address.jsp">生成订单</a></button>
        </div>
        <a class="fr qushop" href="<%=path %>/product/list" style="display: block"><span>继续购物&gt;&gt;</span></a>
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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261743502'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261743502%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1261743502"><a href="http://www.cnzz.com/stat/website.php?web_id=1261743502" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./购物车_files/pic.gif"></a></span><script src="./购物车_files/z_stat.php" type="text/javascript"></script><script src="./购物车_files/core.php" charset="utf-8" type="text/javascript"></script>

    
    <script src="<%=path %>/js/web.cartslist.js"></script>

    <script type="text/javascript">
        //我的购物车列表
        var url_myCarts = "/WebCartsList";
        //删除购物车
        var url_delCart = "/DeleteCart";
        //清空失效商品
        var url_clearCart = "/WebClearCart";
        //确认订单
        var url_confirmOrder="/ConfirmOrderList";
    </script>


</body></html>