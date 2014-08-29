<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>91shipin</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="91shipin">
<meta http-equiv="description" content="91shipin">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
        var username=getCookieValue("username");
        var password=getCookieValue("password") ;
        console.info(username+password);

        <%--$.ajax({--%>
            <%--type : "POST",--%>
            <%--url : "${pageContext.request.contextPath}/sign/verification",--%>
            <%--data : {--%>
                <%--username : username,--%>
                <%--password : password--%>
            <%--},--%>
            <%--dataType:"json",--%>
            <%--success : function(data) {--%>
            <%--},--%>
            <%--//请求出错的处理--%>
            <%--error:function(){--%>
                <%--alert("请求出错");--%>
            <%--}--%>
        <%--});--%>

	});
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
        <a href="${pageContext.request.contextPath}/videoslist">视频列表</a>
        <a href="#">公告栏</a>
        <a href="#">News</a>
    </div>

    <div class="tp_smlgrnbg">
					<span class="tp_sign"><a href="${pageContext.request.contextPath}/user/signup" class="tp_txt">注册</a>
					<span class="tp_divi">|</span>
					<a href="#" class="tp_txt">登录</a>
					<span class="tp_divi">|</span>
					<a href="#" class="tp_txt">帮助</a></span>
    </div>

    <div class="tp_barbg">
        <input name="#" type="text" class="tp_barip">
        <select name="#" class="tp_drp"><option>视频</option></select>
        <a href="#" class="tp_search"><img src="${pageContext.request.contextPath}/resources/img/tp_search.jpg" width="52" height="24" alt=""></a>
        <span class="tp_welcum">欢迎 <b>${userinfo.username}</b></span>

    </div>

</div>