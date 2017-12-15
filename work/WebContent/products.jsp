<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
function clickTip()
{
    window.alert("删除该用户成功");
}
</script>
<script type="text/javascript">
function checkForm(){
	var search_ = /^[0-9]*$/;
	var search = document.getElementById("search");
	if(search.value.match(search_)==null){
		alert("ID均为数字，请输入数字！");
		return false;
	}else{
		return true;
	}
	
}
</script>
</head>
<body style="zoom: 1;">
<div class="header">
    
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
      
    </div>
</div>
<!-- PAGE CONTENT BEGINS -->
<div class="banner">
<div class="banner" style="background: url(<%=path%>/imgs/banner.jpg) no-repeat center; background-size: cover;">
<form action="<%=path %>/admin/searchProduct.action" onsubmit="return checkForm();">
	<input style="font-size:25;" type="text" name="searchProduct" placeholder="请输入查询商品的ID" id="search"/>
	<input style="font-size:25;" type="submit" value="搜索"/>
</form>
<table  border="1" cellspacing="0" cellpadding="0" id="main" style="font-size:25;">
					<tr><th>产品ID</th>
					<th>产品名称</th>
					<th>产品类型</th>
					<th>产品描述</th>
					<th>产品价格</th>
					<th>产品展示</th>
					
					<th colspan="2">操作</th></tr>
					
				
                      <c:forEach items="${productList}" var="pro">
						<tr align="center">
							<td width="150">${pro.id}</td>
							<td width="150">${pro.name}</td>
							<td width="150">${pro.productType}</td>
							<td width="150">${pro.description}</td>
							<td width="150">￥：${pro.price}</td>
							<td width="150"><img src="${pro.imgs}" height="75" width="75"/></td>
							
							<td width="100">
							<a href="<%=path %>/admin/deleteProduct?id=${pro.id}"><input style="font-size:25;" type="button" value="删除该商品"/></a>
						</td>
						 
						</tr>
					</c:forEach>
					<c:forEach items="${productList}" var="pro">
                     <c:if test="${pro.id eq searchProduct}">
						<tr align="center">
						<td width="150">${pro.id}</td>
							<td width="150">${pro.name}</td>
							<td width="150">${pro.productType}</td>
							<td width="150">${pro.description}</td>
							<td width="150">￥：${pro.price}</td>
							<td width="150"><img src="${pro.imgs}" height="75" width="75"/></td>
						<td width="100">
							<a href="<%=path %>/admin/deleteProduct?id=${pro.id}"><input style="font-size:25;" type="button" value="删除该商品"/></a>
						</td>
					</tr>
					</c:if>
					</c:forEach>
                  
                  
					
</table>
                 
</div>
 <!-- PAGE CONTENT ENDS -->




    <div class="footer">
       
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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261743502'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261743502%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1261743502"><a href="http://www.cnzz.com/stat/website.php?web_id=1261743502" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="<%=path %>/imgs/pic.gif"></a></span><script src="./登陆_files/z_stat.php" type="text/javascript"></script><script src="./登陆_files/core.php" charset="utf-8" type="text/javascript"></script>

    
    <script src="<%=path %>/js/web.login.js"></script>

    <script type="text/javascript">
        var url_LoginWithSms="/BntAdmin/Member/LoginWithSms";
        var url_Personal="/WebPersonal";
    </script>

</body>
</html>