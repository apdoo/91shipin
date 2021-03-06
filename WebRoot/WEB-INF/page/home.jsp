<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

      <title>91视频网</title>
      <meta http-equiv="pragma" content="no-cache">
      <meta http-equiv="cache-control" content="no-cache">
      <meta http-equiv="expires" content="0">
      <meta http-equiv="keywords" content="91视频网">
      <meta http-equiv="description" content="This is my page">
      <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

      <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
      <!--
      <link rel="stylesheet" type="text/css" href="styles.css">
      -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
   <script type="text/javascript">
       var root="${pageContext.request.contextPath}";//根路径
       var recently=root+"/video/recently"; //最新视频
       var views=root+"/video/views";
       var fav=root+"/video/fav";
       var rate=root+"/video/rate";
       var rand=root+"/video/rand";
       $(function() {
           //获取最新视频
           $("#recently").click(function(){
               $.ajax({
                   type : "POST",
                   url : recently,
                   dataType:"json",
                   success : function(data) {
                       homeVideoList(data,root);
                   },
                   error:function(){
                   }
               });
           });
           //
           $("#views").click(function(){
               $.ajax({
                   type : "POST",
                   url : views,
                   dataType:"json",
                   success : function(data) {
                       homeVideoList(data,root);
                   },
                   error:function(){
                   }
               });
           });
           $("#fav").click(function(){
               $.ajax({
                   type : "POST",
                   url : fav,
                   dataType:"json",
                   success : function(data) {
                       homeVideoList(data,root);
                   },
                   error:function(){
                   }
               });
           });
           $("#rate").click(function(){
               $.ajax({
                   type : "POST",
                   url : rate,
                   dataType:"json",
                   success : function(data) {
                       homeVideoList(data,root);
                   },
                   error:function(){
                   }
               });
           });
           $("#rand").click(function(){
               $.ajax({
                   type : "POST",
                   url : rand,
                   dataType:"json",
                   success : function(data) {
                       homeVideoList(data,root);
                   },
                   error:function(){
                   }
               });
           });
           //默认进行自动点击
           $("#recently").click();
       });

   </script>
  </head>

  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 <div id="contentpanel">

                 <div id="lp_padd">

                     <div class="lp_shadebg">

						<span class="cp_smlpad">
							<img src="${pageContext.request.contextPath}/resources/img/lp_watch.jpg" width="81" height="81" alt="" class="lp_watch">

							<img src="${pageContext.request.contextPath}/resources/img/cp_watchit.jpg" width="93" height="15" alt="" class="cp_watchit">
							<span class="cp_watcxt">定期更新各种自拍视频，让您看个痛快！</span>
							<a href="${pageContext.request.contextPath}/video/videoslist" class="lp_watmore"><img src="${pageContext.request.contextPath}/resources/img/lp_watmore.jpg" width="35" height="28" alt=""></a>

						</span>

						<span class="cp_smlpad">
							<img src="${pageContext.request.contextPath}/resources/img/lp_uplad.jpg" width="81" height="81" alt="" class="lp_uplad">

							<img src="${pageContext.request.contextPath}/resources/img/cp_watchit1.jpg" width="106" height="16" alt="" class="cp_watchit">
							<span class="cp_watcxt">自拍视频上传，正在开发中..</span>
							<a href="javascript:void(0)" class="lp_watmore"><img src="${pageContext.request.contextPath}/resources/img/lp_watmore.jpg" width="35" height="28" alt=""></a>

						</span>

						<span class="cp_smlpad">
							<img src="${pageContext.request.contextPath}/resources/img/lp_share.jpg" width="81" height="81" alt="" class="lp_uplad">

							<img src="${pageContext.request.contextPath}/resources/img/cp_watchit2.jpg" width="93" height="16" alt="" class="cp_watchit">
							<span class="cp_watcxt">自拍视频分享，正在开发中..</span>
							<a href="javascript:void(0)" class="lp_watmore"><img src="${pageContext.request.contextPath}/resources/img/lp_watmore.jpg" width="35" height="28" alt=""></a>

						</span>

                     </div>

                     <div class="lp_featpad">
                         <div class="lp_featnav">
                             <a href="javascript:void(0)" id="recently">*最新 视频*</a>
                             <a href="javascript:void(0)" id="views">*观看 最多*</a>
                             <a href="javascript:void(0)">*讨论 最多*</a>
                             <a href="javascript:void(0)" id="fav">*收藏 最多*</a>
                             <a href="javascript:void(0)" id="rate">*获赞 最多*</a>
                             <a href="javascript:void(0)" id="rand">*随机的一组*</a>
                         </div>
                         <div id="homevideolist"></div>
                     </div>
                 </div>

                 <div id="rp_padd" >
                     <div class="rp_loginpad" id="rp_loginpad" >
                     <form name="login_form" id="login_form" method="post" action="${pageContext.request.contextPath}/user/login">
                     <img src="${pageContext.request.contextPath}/resources/img/rp_top.jpg" width="282" height="10" alt="" style="float:left;">

                         <span class="rp_titxt">会员登录</span>
                         <span class="rp_membrusr">用户名:</span>
                         <input  name="username" type="text" id="login_username"<%--class="rp_usrip"--%> >
                         <span class="rp_membrpwd">密码:</span>
                         <input name="password" type="password" id="login_password"  <%--class="rp_pwdrip"--%>>
                         <span class="rp_membrusr"> 记住密码:<input id="saveCookie" type="checkbox" value="" /></span>
                         <input type="button" id="login" class="button green" value="登 录" >      <%-- <span class="rp_notmem"><a href="#" style="font:11px Arial, Helvetica, sans-serif; color:#FFFFFF;">Forgot your password</a></span>--%>
                    </form>
                         <div id="login_tips"></div>
                     </div>



                 </div>
                 </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
