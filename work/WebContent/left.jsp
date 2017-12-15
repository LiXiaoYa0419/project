<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>左侧导航menu</title>
<link href="<%=path %>/css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="<%=path %>/imgs/1.jpeg" width="44" height="44" /></div>
    <span>用户：${loginUser.adminName}<br>超级管理员</span>
</div>
	
    <div style="float: left" id="my_menu" class="sdmenu">
    <div>
        <span>系统首页</span>
        <a href="<%=path %>/main.jsp" target="mainFrame" onFocus="this.blur()">系统首页</a>
      </div>
      <div>
        <span>用户管理</span>
        <a href="<%=path %>/admin/showAllUsers" target="mainFrame" onFocus="this.blur()">用户列表</a>
      </div>
      <div>
        <span>订单管理</span>
        <a href="<%=path %>/admin/showAllOrders" target="mainFrame" onFocus="this.blur()">订单列表</a>
      </div>
      <div>
        <span>商品管理</span>
        <a href="<%=path %>/admin/showAllProducts" target="mainFrame" onFocus="this.blur()">商品列表</a>
        <a href="<%=path %>/addProduct.jsp" target="mainFrame" onFocus="this.blur()">商品添加</a>
        <a href="<%=path %>/changeproduct.jsp" target="mainFrame" onFocus="this.blur()">商品修改</a>
      </div>
      
    </div>
</body>
</html>