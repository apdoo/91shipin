<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>91视频网</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="91视频网">
    <meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/button.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cookie.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript">
	$(function() {
        var root="${pageContext.request.contextPath}";
        checkLogin(root);
	});
    //登出
    function loginout(){
        //清除cookie
        deleteCookie("username","/");
        deleteCookie("password","/");
    }
</script>
<style type="text/css">
	#logo{scrollbar-arrow-color:buttontext}
</style>
</head>
<!-- 头部 -->
<div id="top_panel">
     <a href="index.html" class="logo"><img src="${pageContext.request.contextPath}/resources/img/logo.jpg" width="255" height="36" alt=""></a><br>
    <div class="tp_navbg">
        <a href="${pageContext.request.contextPath}/home">首页</a>
        <%--<a href="#">Upload</a>--%>
        <a href="${pageContext.request.contextPath}/video/videoslist">旧版视频列表</a>
        <a href="${pageContext.request.contextPath}/public/home">公告栏</a>
        <a href="${pageContext.request.contextPath}/public/home">新版视频入口</a>
        <a href="${pageContext.request.contextPath}/bbs/home">论坛</a>
        <p style="color: #E0FF00">会员1群:150543383</p>
    </div>
    <div class="tp_smlgrnbg">
					<span class="tp_sign"><a href="${pageContext.request.contextPath}/user/signup" class="tp_txt">注册</a>
                    <span class="tp_divi">|</span>
					<a href="${pageContext.request.contextPath}/user/loginout" class="tp_txt" id="loginout" onclick="loginout()">登出</a>
					<span class="tp_divi">|</span>
					<a href="#" class="tp_txt">帮助</a></span>
    </div>

    <div class="tp_barbg">
        <%--<input name="#" type="text" class="tp_barip">--%>
        <%--<select name="#" class="tp_drp"><option>视频</option></select>--%>
        <%--<a href="#" class="tp_search"><img src="${pageContext.request.contextPath}/resources/img/tp_search.jpg" width="52" height="24" alt=""></a>--%>
        <%----%>
            <!--修改了样式tp_welcum-->
        <span class="tp_welcum">欢迎 <a href="${pageContext.request.contextPath}/user/myhome"> <b id="my">${userinfo.username}</b></a></span>

    </div>

</div>