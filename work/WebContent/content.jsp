<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<script type="text/javascript">
function addProduct()
{
    window.alert("添加成功");
}
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
                <a target="_blank" href="<%=path%>/product/addProductToCart?id=${p.id}">
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
    <a class="bread-a home" href="<%=path %>/index.jsp/">首页</a>&gt;
	<a class="bread-a" href="<%=path %>/list.jsp">商品</a>
</div>
<div class="cheap-info-box1 clear">
<input type="hidden" id="GoodId" value="06406420-f1f8-4e9f-a442-904fce1f79ee">
<div class="cheap-info-box1-l">
    <div style="" class="cheap-info-img">
        <div class="ol-box">
            <span class="prev"></span>
            <div class="img-show clearfix">
                <ul style="width: 664px; margin-left: 0px;">
                                <li data-id="1" class="active">
                                    <img data-img="${p.imgs }" data-big="${p.imgs }" src="${p.imgs }" alt="">
                                </li>
                                <li data-id="1">
                                    <img data-img="${p.img1 }" data-big="${p.img1 }" src="${p.img1 }" alt="">
                                </li>
                                <li data-id="1">
                                    <img data-img="${p.img2 }" data-big="${p.img2 }" src="${p.img2 }" alt="">
                                </li>
                                <li data-id="1">
                                    <img data-img="${p.img3 }"data-big="${p.img3 }"src="${p.img3 }" alt="">
                                </li>

                </ul>
            </div>
            <span class="next"></span>
            <div class="img-show-box jqzoom img-big">
                <img id="probig" jqimg="http://www.5kcake.com/StorageFiles/2017/10/23/561892e7-55db-4cee-a2b9-af3112e9c634.jpg" src="${p.imgs }" width="430" height="430" alt="" style="opacity: 1;">
            </div>
        </div>
    </div>
    <div style="" class="cheap-info-doll">
     
        <div class="cheap-info-tit">${p.name }</div>
        <div class="cheap-info-code">商品编码:${p.id }</div>
        <div class="cheap-info-info">
            
        </div>
        <div style="" class="cheap-info-boxinfo">
            <div>
                <div class="pricebox" style="margin-top: 12px;">现价：<span class="nowprice">￥${p.discountprice }</span></div>
                <div class="pricebox">原价：<span class="beforeprice">￥${p.price }</span></div>
            </div>

        </div>
        <div class="cheap-js-doll cheap-js-doll1">
            <div class="cheap-js-doll-l">
                <p style="color: #999;">运费</p>
            </div>
            <div class="cheap-js-doll-r">

                <p style="line-height: 50px; color: #333;">快递：<span>不包邮</span></p>

            </div>
         </a>
        </div>
        <div class="cheap-js-doll cheap-js-doll1">
            <div class="cheap-js-doll-l">
                <p style="color: #999;">分类</p>
            </div>
            
            <div  style="width:180px;height:30px;">
           	<c:forEach items="${ps }" var="ps">
                <ul class="classificationul clearfix">
                                    <li class="attri active" data-unit="个" data-stock="9999" data-nowprice="${ps.price }" data-singleid="${ps.productid }" data-attribute="${ps.size }" data-original="${ps.price }">
										${ps.size }磅 <br>
                                           <span class="fenlchioce"></span>
                                    </li>
               </ul>
             
            </c:forEach>
            </div>
            
        </div>
       
        <div class="end-submit">
            <span class="g-car"><a class="jjg" href="<%=path%>/product/content?id=${p.id}"">立即购买</a></span>
            <span class="g-submit"><a class="jjh" target="_top" href="<%=path %>/cart/addProductToCart?id=${p.id }" onClick="addProduct()">加入购物车</a></span>
            
        </div>

    </div>
</div>
<div class="cheap-info-box1-r  cheap-js-box1-r1">
    <h2>加价购</h2>
	<div class="shanglogobox clearfix">
        <a href="<%=path%>/product/content?id=${p.id}">
                        <div class="shanglogo" style="background-image: url(http://www.5kcake.com/StorageFiles/2017/2/17/4c689ace-d0a1-43ed-b210-0720e1e79b85.png_82x56.jpeg);"></div>
                        <div class="shanglogo" style="background-image: url(http://www.5kcake.com/StorageFiles/2017/2/17/cce80db1-417e-4cf8-b086-e2fbb71bfa6b.png_82x56.jpeg);"></div>
                        <div class="shanglogo" style="background-image: url(http://www.5kcake.com/StorageFiles/2017/2/17/04d5d46c-6d5b-437d-bb20-156558b626be.png_82x56.jpeg);"></div>
                        <div class="shanglogo" style="background-image: url(http://www.5kcake.com/StorageFiles/2017/2/17/f86ab815-3927-42dd-b0b3-4cbb64bd54a4.png_82x56.jpeg);"></div>
		</a>

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


    
    
<script src="<%=path %>/js/magnifier.js"></script>
<script src="<%=path %>/js/imgshow.js"></script>
<script src="<%=path %>/js/pageGroup.js"></script>
<script src="<%=path %>/js/alertAndverify.js"></script>

    <script src="<%=path %>/js/web.gooddetails.js"></script>

    <script type="text/javascript">
        var url_addMycart = "/WebAddCart";
        var url_buyNow = "/ConfirmOrderList";
    </script>
    <script type="text/javascript">
        $(function () {

            // 收藏
            $(".sc").click(function () {
                var obj = $(this);
                var goodsid = obj.data("goodsid");
                $.ajax({
                    url: "/WebCollectionAdd",
                    type: "post",
                    data: { goodsid: goodsid, d: Date.now() },
                    success: function (data) {
                        if (data.code == "200") {
                            obj.find("span").html(Number(obj.find("span").html()) + 1);
                            $(".s-alert-sccess.s-collect-alert").show();
                            $('.shangp-fenx a.sc').addClass('shoucang');
                            $(".yiny").show();
                        } else {
                            $(".yiny").show();
                            $(".cc-box").show();
                        }

                    },
                    error: function () { }
                });
            });
        });

        $(".s-alert-sccess.s-collect-alert .close").click(function () {
            $(".s-alert-sccess.s-collect-alert").hide();
            $(".yiny").hide();
        });
        $(".cc-box .close").click(function () {
            $('.cc-box').hide();
            $(".yiny").hide();
        });

    </script>



	<div style="display:none;" class="jqPreload0">
	<a href="<%=path%>/product/content?id=${p.id}"></a>
		<img src="${p.imgs }"></div>
	<div class="layui-layer-move"></div>
</body>
</html>