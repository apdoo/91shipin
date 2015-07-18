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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <link rel="stylesheet" type="text/css"
            href="${pageContext.request.contextPath}/resources/css/style.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/video.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/video.js"></script>
      <script type="text/javascript">
          $(function() {
               var title="${video.title}";
               var views="${video.views}";
               var favourite="${video.favourite}";
               var infotime="${video.infotime}";
               $(".caption").html(title);
               $("#infotime").html(infotime);
               $("#views").html("观看次数:"+views);
                //http://techslides.com/demos/sample-videos/small.mp4
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
                        <!--视频播放-->
                         <div class="videoContainer">
                             <video id="myVideo" controls="" preload="auto"  width="593" height="389" >
                                 <source  src="${video.videoId}"  type="video/mp4">
                                 <p>您的浏览器不支持html5，请更换</p>
                             </video>
                             <div class="caption"></div>
                             <div class="control">
                                 <div class="topControl">
                                     <div class="progress">
                                         <span class="bufferBar"></span>
                                         <span class="timeBar"></span>
                                     </div>
                                     <div class="time">
                                         <span class="current"></span> /
                                         <span class="duration"></span>
                                     </div>
                                 </div>
                                 <div class="btmControl">
                                     <div class="btnPlay btn" title="Play/Pause video"></div>
                                     <div class="btnStop btn" title="Stop video"></div>
                                     <div class="spdText btn">速度: </div>
                                     <div class="btnx1 btn text selected" title="Normal speed">x1</div>
                                     <div class="btnx3 btn text" title="Fast forward x3">x3</div>
                                     <div class="btnFS btn" title="Switch to full screen"></div>
                                     <div class="btnLight lighton btn" title="Turn on/off light"></div>
                                     <div class="volume" title="Set volume">
                                         <span class="volumeBar"></span>
                                     </div>
                                     <div class="sound sound2 btn" title="Mute/Unmute sound"></div>
                                 </div>
                             </div>
                             <div class="loading"></div>
                         </div>
					<span class="lp_inrplyrpad">
						<span class="lp_plyrxt" id="infotime"></span>
						<span class="lp_plyrxt" id="views"></span>
					</span>
                     </div>
                     <div id="rp_padd">
                     </div>
                 </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
