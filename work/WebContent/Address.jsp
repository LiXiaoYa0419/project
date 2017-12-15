<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0407)http://www.5kcake.com/ConfirmOrderList?myCartsId=[{%22id%22:%22d3384417-3eca-4c52-bb1e-26ac86b133ab%22,%22quantity%22:%223%22},{%22id%22:%22317a26ac-35ef-492f-9b92-5cfc0b2b65be%22,%22quantity%22:%221%22}]&optIds=[{%22id%22:%2281d6f3a5-7e9b-4c83-b1f9-3afa12447ba0%22,%22quantity%22:%221%22,%22number%22:%22%22},{%22id%22:%22bdfc7168-e413-48e8-8242-ab334e4ab2a2%22,%22quantity%22:%221%22,%22number%22:%22%22}] -->
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

    
 <link href="<%=path %>/css/jquery.datetimepicker.css" rel="stylesheet">


    <script src="<%=path %>/js/jquery-1.9.0.min.js"></script>
<script src="<%=path %>/js/alertAndverify.js"></script>
<script src="<%=path %>/js/jquery.SuperSlide.2.1.1.js"></script>
<script src="<%=path %>/js/layer.js"></script><link rel="stylesheet" href="<%=path %>/css/layer.css" id="layuicss-skinlayercss">
<script src="<%=path %>/js/main.js"></script>
<script type="text/javascript">
$(function () {
	    	if('${user.loginName }' != "" ){
	    		$("a").remove("#b");
	    		var html = "<a href=' "+'<%=path %>/<%=path %>/personal1.jsp'+" '>"+'${user.loginName }'+"</a>";
	    		document.getElementById('a').innerHTML = html;
	    	}
	    });
</script>

<script type="text/javascript">
function checkForm(){
    //判断登陆名
    var name_ = /^[a-zA-Z_0-9]{3,10}$/;
     
    //判断电话号码
    var phone_ = /\d{11}/;
    
    
    //获得input对象
    var name = document.getElementById("name");
    var phone = document.getElementById("phone");
    
     if(name == null || name.value == ""){
        alert("用户名不能为空");
         return false;
     }else if(username.value.match(userName_)==null){
        alert("您输入的用户名与规定类型不匹配");
        return false;
     }else if(phone == null || phone.vlaue == ""){
        alert("电话号码不能为空");
        return false;
     }else if(phone.value.match(phone_) == null){
        alert("您输入的电话号码无效");
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
                        <a href="<%=path %>/login.jsp" >
                            <li id="a">登录</li>
                        </a>
                        <a href="<%=path%>/regist.jsp">
                            <li id="b">注册</li>
                        </a>

                <a href="http://www.5kcake.com/Page/31">
                    <li class="padleft">关于我们</li>
                </a>
                <a target="_blank" href="<%=path%>/cart/addProductToCart?id=${p.id}">
                    <li style="margin-right: 0;">我的购物车</li>
                </a>
            </ul>
        </div>
    </div>
    <div class="index-headmid">
        <div class="index-headmidmain clearfix width1190">
            <div class="index-headmidl fl">
                <div class="index-headlogo fl" style="background: url(/Resources/img1/logo1.png) no-repeat center"></div>
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
<div class="banner" style="background: url(<%=path%>/imgs/banner.jpg) no-repeat center; background-size: cover;">

    <div class="reg_box">
        <div class="register_box">
            <div class="reg_title bg_pink clearfix">
                <h1 align="center">收获地址</h1>
            </div>
            <div class="input_list" width=100px align="center" onsubmit="return checkForm();">
               <form action="<%=path %>/as/add">
             	          用户真实姓名:<input type="text" name="name" id="name" value="${ass.name}"/><br><br>
               		用户手机号:&nbsp;&nbsp;&nbsp;<input type="text"  name="phone"  id="phone" value="${ass.phone }"/><br><br>
               		收货地址：&nbsp;&nbsp;&nbsp;<input type="text" name="address" value="${ass.address}"><br>
               		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="保存更改"/>
               		
               </form>
               
            </div>


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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261743502'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261743502%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1261743502"><a href="http://www.cnzz.com/stat/website.php?web_id=1261743502" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./订单_files/pic.gif"></a></span><script src="./订单_files/z_stat.php" type="text/javascript"></script><script src="./订单_files/core.php" charset="utf-8" type="text/javascript"></script>

    
    <script src="<%=path %>/js/magnifier.js"></script>
<script src="<%=path %>/js/imgshow.js"></script>
<script src="<%=path %>/js/pageGroup.js"></script>
<script src="<%=path %>/js/alertAndverify.js"></script>

    <script src="<%=path %>/js/web.confirm.order.js"></script>

<script src="<%=path %>/js/jquery.datetimepicker.full.js"></script>
; 
    <script type="text/javascript">
        var url_myCouponList = "/MyCouponsList";
        //表单提交（订单提交)后跳到付款方式
        var url_payType = "/Pay";
    </script>


<div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_mounthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span>December</span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"><div class="xdsoft_option " data-value="0">January</div><div class="xdsoft_option " data-value="1">February</div><div class="xdsoft_option " data-value="2">March</div><div class="xdsoft_option " data-value="3">April</div><div class="xdsoft_option " data-value="4">May</div><div class="xdsoft_option " data-value="5">June</div><div class="xdsoft_option " data-value="6">July</div><div class="xdsoft_option " data-value="7">August</div><div class="xdsoft_option " data-value="8">September</div><div class="xdsoft_option " data-value="9">October</div><div class="xdsoft_option " data-value="10">November</div><div class="xdsoft_option xdsoft_current" data-value="11">December</div></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span>2017</span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"><div class="xdsoft_option " data-value="1950">1950</div><div class="xdsoft_option " data-value="1951">1951</div><div class="xdsoft_option " data-value="1952">1952</div><div class="xdsoft_option " data-value="1953">1953</div><div class="xdsoft_option " data-value="1954">1954</div><div class="xdsoft_option " data-value="1955">1955</div><div class="xdsoft_option " data-value="1956">1956</div><div class="xdsoft_option " data-value="1957">1957</div><div class="xdsoft_option " data-value="1958">1958</div><div class="xdsoft_option " data-value="1959">1959</div><div class="xdsoft_option " data-value="1960">1960</div><div class="xdsoft_option " data-value="1961">1961</div><div class="xdsoft_option " data-value="1962">1962</div><div class="xdsoft_option " data-value="1963">1963</div><div class="xdsoft_option " data-value="1964">1964</div><div class="xdsoft_option " data-value="1965">1965</div><div class="xdsoft_option " data-value="1966">1966</div><div class="xdsoft_option " data-value="1967">1967</div><div class="xdsoft_option " data-value="1968">1968</div><div class="xdsoft_option " data-value="1969">1969</div><div class="xdsoft_option " data-value="1970">1970</div><div class="xdsoft_option " data-value="1971">1971</div><div class="xdsoft_option " data-value="1972">1972</div><div class="xdsoft_option " data-value="1973">1973</div><div class="xdsoft_option " data-value="1974">1974</div><div class="xdsoft_option " data-value="1975">1975</div><div class="xdsoft_option " data-value="1976">1976</div><div class="xdsoft_option " data-value="1977">1977</div><div class="xdsoft_option " data-value="1978">1978</div><div class="xdsoft_option " data-value="1979">1979</div><div class="xdsoft_option " data-value="1980">1980</div><div class="xdsoft_option " data-value="1981">1981</div><div class="xdsoft_option " data-value="1982">1982</div><div class="xdsoft_option " data-value="1983">1983</div><div class="xdsoft_option " data-value="1984">1984</div><div class="xdsoft_option " data-value="1985">1985</div><div class="xdsoft_option " data-value="1986">1986</div><div class="xdsoft_option " data-value="1987">1987</div><div class="xdsoft_option " data-value="1988">1988</div><div class="xdsoft_option " data-value="1989">1989</div><div class="xdsoft_option " data-value="1990">1990</div><div class="xdsoft_option " data-value="1991">1991</div><div class="xdsoft_option " data-value="1992">1992</div><div class="xdsoft_option " data-value="1993">1993</div><div class="xdsoft_option " data-value="1994">1994</div><div class="xdsoft_option " data-value="1995">1995</div><div class="xdsoft_option " data-value="1996">1996</div><div class="xdsoft_option " data-value="1997">1997</div><div class="xdsoft_option " data-value="1998">1998</div><div class="xdsoft_option " data-value="1999">1999</div><div class="xdsoft_option " data-value="2000">2000</div><div class="xdsoft_option " data-value="2001">2001</div><div class="xdsoft_option " data-value="2002">2002</div><div class="xdsoft_option " data-value="2003">2003</div><div class="xdsoft_option " data-value="2004">2004</div><div class="xdsoft_option " data-value="2005">2005</div><div class="xdsoft_option " data-value="2006">2006</div><div class="xdsoft_option " data-value="2007">2007</div><div class="xdsoft_option " data-value="2008">2008</div><div class="xdsoft_option " data-value="2009">2009</div><div class="xdsoft_option " data-value="2010">2010</div><div class="xdsoft_option " data-value="2011">2011</div><div class="xdsoft_option " data-value="2012">2012</div><div class="xdsoft_option " data-value="2013">2013</div><div class="xdsoft_option " data-value="2014">2014</div><div class="xdsoft_option " data-value="2015">2015</div><div class="xdsoft_option " data-value="2016">2016</div><div class="xdsoft_option xdsoft_current" data-value="2017">2017</div><div class="xdsoft_option " data-value="2018">2018</div><div class="xdsoft_option " data-value="2019">2019</div><div class="xdsoft_option " data-value="2020">2020</div><div class="xdsoft_option " data-value="2021">2021</div><div class="xdsoft_option " data-value="2022">2022</div><div class="xdsoft_option " data-value="2023">2023</div><div class="xdsoft_option " data-value="2024">2024</div><div class="xdsoft_option " data-value="2025">2025</div><div class="xdsoft_option " data-value="2026">2026</div><div class="xdsoft_option " data-value="2027">2027</div><div class="xdsoft_option " data-value="2028">2028</div><div class="xdsoft_option " data-value="2029">2029</div><div class="xdsoft_option " data-value="2030">2030</div><div class="xdsoft_option " data-value="2031">2031</div><div class="xdsoft_option " data-value="2032">2032</div><div class="xdsoft_option " data-value="2033">2033</div><div class="xdsoft_option " data-value="2034">2034</div><div class="xdsoft_option " data-value="2035">2035</div><div class="xdsoft_option " data-value="2036">2036</div><div class="xdsoft_option " data-value="2037">2037</div><div class="xdsoft_option " data-value="2038">2038</div><div class="xdsoft_option " data-value="2039">2039</div><div class="xdsoft_option " data-value="2040">2040</div><div class="xdsoft_option " data-value="2041">2041</div><div class="xdsoft_option " data-value="2042">2042</div><div class="xdsoft_option " data-value="2043">2043</div><div class="xdsoft_option " data-value="2044">2044</div><div class="xdsoft_option " data-value="2045">2045</div><div class="xdsoft_option " data-value="2046">2046</div><div class="xdsoft_option " data-value="2047">2047</div><div class="xdsoft_option " data-value="2048">2048</div><div class="xdsoft_option " data-value="2049">2049</div><div class="xdsoft_option " data-value="2050">2050</div></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"><table><thead><tr><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th><th>Sun</th></tr></thead><tbody><tr><td data-date="27" data-month="10" data-year="2017" class="xdsoft_date xdsoft_day_of_week1 xdsoft_date xdsoft_disabled xdsoft_other_month" title=""><div>27</div></td><td data-date="28" data-month="10" data-year="2017" class="xdsoft_date xdsoft_day_of_week2 xdsoft_date xdsoft_disabled xdsoft_other_month" title=""><div>28</div></td><td data-date="29" data-month="10" data-year="2017" class="xdsoft_date xdsoft_day_of_week3 xdsoft_date xdsoft_disabled xdsoft_other_month" title=""><div>29</div></td><td data-date="30" data-month="10" data-year="2017" class="xdsoft_date xdsoft_day_of_week4 xdsoft_date xdsoft_disabled xdsoft_other_month" title=""><div>30</div></td><td data-date="1" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week5 xdsoft_date xdsoft_disabled" title=""><div>1</div></td><td data-date="2" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_disabled xdsoft_weekend" title=""><div>2</div></td><td data-date="3" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_disabled xdsoft_weekend" title=""><div>3</div></td></tr><tr><td data-date="4" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week1 xdsoft_date xdsoft_disabled" title=""><div>4</div></td><td data-date="5" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week2 xdsoft_date xdsoft_disabled" title=""><div>5</div></td><td data-date="6" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week3 xdsoft_date xdsoft_current xdsoft_today" title=""><div>6</div></td><td data-date="7" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week4 xdsoft_date" title=""><div>7</div></td><td data-date="8" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week5 xdsoft_date" title=""><div>8</div></td><td data-date="9" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend" title=""><div>9</div></td><td data-date="10" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend" title=""><div>10</div></td></tr><tr><td data-date="11" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week1 xdsoft_date" title=""><div>11</div></td><td data-date="12" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week2 xdsoft_date" title=""><div>12</div></td><td data-date="13" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week3 xdsoft_date" title=""><div>13</div></td><td data-date="14" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week4 xdsoft_date" title=""><div>14</div></td><td data-date="15" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week5 xdsoft_date" title=""><div>15</div></td><td data-date="16" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend" title=""><div>16</div></td><td data-date="17" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend" title=""><div>17</div></td></tr><tr><td data-date="18" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week1 xdsoft_date" title=""><div>18</div></td><td data-date="19" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week2 xdsoft_date" title=""><div>19</div></td><td data-date="20" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week3 xdsoft_date" title=""><div>20</div></td><td data-date="21" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week4 xdsoft_date" title=""><div>21</div></td><td data-date="22" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week5 xdsoft_date" title=""><div>22</div></td><td data-date="23" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend" title=""><div>23</div></td><td data-date="24" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend" title=""><div>24</div></td></tr><tr><td data-date="25" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week1 xdsoft_date" title=""><div>25</div></td><td data-date="26" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week2 xdsoft_date" title=""><div>26</div></td><td data-date="27" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week3 xdsoft_date" title=""><div>27</div></td><td data-date="28" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week4 xdsoft_date" title=""><div>28</div></td><td data-date="29" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week5 xdsoft_date" title=""><div>29</div></td><td data-date="30" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend" title=""><div>30</div></td><td data-date="31" data-month="11" data-year="2017" class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend" title=""><div>31</div></td></tr></tbody></table></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker active"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"><div class="xdsoft_time " data-hour="0" data-minute="0">00:00</div><div class="xdsoft_time " data-hour="1" data-minute="0">01:00</div><div class="xdsoft_time " data-hour="2" data-minute="0">02:00</div><div class="xdsoft_time " data-hour="3" data-minute="0">03:00</div><div class="xdsoft_time " data-hour="4" data-minute="0">04:00</div><div class="xdsoft_time " data-hour="5" data-minute="0">05:00</div><div class="xdsoft_time " data-hour="6" data-minute="0">06:00</div><div class="xdsoft_time " data-hour="7" data-minute="0">07:00</div><div class="xdsoft_time " data-hour="8" data-minute="0">08:00</div><div class="xdsoft_time " data-hour="9" data-minute="0">09:00</div><div class="xdsoft_time " data-hour="10" data-minute="0">10:00</div><div class="xdsoft_time xdsoft_current" data-hour="11" data-minute="0">11:00</div><div class="xdsoft_time " data-hour="12" data-minute="0">12:00</div><div class="xdsoft_time " data-hour="13" data-minute="0">13:00</div><div class="xdsoft_time " data-hour="14" data-minute="0">14:00</div><div class="xdsoft_time " data-hour="15" data-minute="0">15:00</div><div class="xdsoft_time " data-hour="16" data-minute="0">16:00</div><div class="xdsoft_time " data-hour="17" data-minute="0">17:00</div><div class="xdsoft_time " data-hour="18" data-minute="0">18:00</div><div class="xdsoft_time " data-hour="19" data-minute="0">19:00</div><div class="xdsoft_time " data-hour="20" data-minute="0">20:00</div><div class="xdsoft_time " data-hour="21" data-minute="0">21:00</div><div class="xdsoft_time " data-hour="22" data-minute="0">22:00</div><div class="xdsoft_time " data-hour="23" data-minute="0">23:00</div></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div></body></html>