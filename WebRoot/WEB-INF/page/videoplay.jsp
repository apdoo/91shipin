<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <link rel="stylesheet" type="text/css"
            href="${pageContext.request.contextPath}/resources/css/style.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/video.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
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
                         <div class="videoContainer">
                             <video id="myVideo" controls="" preload="auto"  width="593" height="389">
                                 <source  src="${root}${video.videoId}" type="video/mp4">
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
						<span class="lp_plyrxt" id="comment">评论 :1</span>
						<span class="lp_plyrxt" style="width:200px;">Rate it :<a href="#"><img src="${pageContext.request.contextPath}/resources/img/lp_featstar.jpg" width="78" height="13" alt=""></a></span>
						<a href="#" class="lp_plyrlnks">Add to Favourites</a>
						<a href="#" class="lp_plyrlnks">Write Comments</a>
						<a href="#" class="lp_plyrlnks">Download Video</a>
						<a href="#" class="lp_plyrlnks">Share</a>
						<a href="#" class="lp_inryho"><img src="${pageContext.request.contextPath}/resources/img/lp_inryho.jpg" width="138" height="18" alt=""></a>
					</span>


                         <div class="lp_newvidpad" style="margin-top:10px;">
                             <span class="lp_newvidit">Comments(2)</span>
                             <img src="${pageContext.request.contextPath}/resources/img/lp_newline.jpg" width="661" height="2" alt="" class="lp_newline">

                             <img src="${pageContext.request.contextPath}/resources/img/lp_inrfoto.jpg" width="68" height="81" alt="" class="lp_featimg1">
								
						<span class="cp_featparas">
									<span class="cp_ftparinr1">
										<span class="cp_featname"><b>Posted by: Name(13.01.09) 21:37</b><br>From :non tortor</span>
										
										<span class="cp_featxt" style="width:500px;">Mauris congue tellus eget nisi. Cras blandit urna id ante. Aliquam tincidunt laoreet nisl? Proin adipiscing nibh ut dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac ante. Fusce facilisis ullamcorper lorem.</span><br>
									</span>
									
						</span><br>


                             <img src="${pageContext.request.contextPath}/resources/img/lp_inrfoto.jpg" width="68" height="81" alt="" class="lp_featimg1">
					
						<span class="cp_featparas">
									<span class="cp_ftparinr1">
										<span class="cp_featname"><b>Posted by: Name(13.01.09) 21:37</b><br>From :non tortor</span>
										
										<span class="cp_featxt" style="width:500px;">Mauris congue tellus eget nisi. Cras blandit urna id ante. Aliquam tincidunt laoreet nisl? Proin adipiscing nibh ut dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ac ante. Fusce facilisis ullamcorper lorem.</span><br>
									</span>
									
						</span>

                         </div>



                     </div>

                     <div id="rp_padd">



                         <img src="${pageContext.request.contextPath}/resources/img/rp_top.jpg" width="282" height="10" alt="" class="rp_upbgtop">
                         <div class="rp_loginpad" style="padding-bottom:0px; border-bottom:none;">
                             <span class="rp_titxt">OTHER VIDEOS</span>
                         </div>

                         <img src="${pageContext.request.contextPath}/resources/img/rp_inrimg1.jpg" width="80" height="64" alt="" class="rp_inrimg1">
                         <span class="rp_inrimgxt"><span style="font:bold 11px/20px Arial, Helvetica, sans-serif;">Donec pharetra molestie tellus.</span><br>Vivamus facilisis diam. Mauris id <br>quam in accumsan. </span>
                         <img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline1"><br>

                         <img src="${pageContext.request.contextPath}/resources/img/rp_inrimg2.jpg" width="80" height="64" alt="" class="rp_inrimg1">
                         <span class="rp_inrimgxt"><span style="font:bold 11px/20px Arial, Helvetica, sans-serif;">Donec pharetra molestie tellus.</span><br>Vivamus facilisis diam. Mauris id <br>quam in accumsan. </span>
                         <img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline1"><br>

                         <img src="${pageContext.request.contextPath}/resources/img/rp_inrimg3.jpg" width="80" height="64" alt="" class="rp_inrimg1">
                         <span class="rp_inrimgxt"><span style="font:bold 11px/20px Arial, Helvetica, sans-serif;">Donec pharetra molestie tellus.</span><br>Vivamus facilisis diam. Mauris id <br>quam in accumsan. </span>
                         <img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline1"><br>

                         <img src="${pageContext.request.contextPath}/resources/img/rp_inrimg4.jpg" width="80" height="64" alt="" class="rp_inrimg1">
                         <span class="rp_inrimgxt"><span style="font:bold 11px/20px Arial, Helvetica, sans-serif;">Donec pharetra molestie tellus.</span><br>Vivamus facilisis diam. Mauris id <br>quam in accumsan. </span>
                         <img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline1"><br>


                         <img src="${pageContext.request.contextPath}/resources/img/rp_upbgtop.jpg" width="282" height="10" alt="" class="rp_upbgtop">
                         <div class="rp_uppad">

                             <img src="${pageContext.request.contextPath}/resources/img/lp_inrfoto.jpg" width="68" height="81" alt="" class="lp_inrfoto">
                             <span class="rp_inrimgxt" style="margin-top:47px; width:120px;"><span style="font:bold 11px/20px Arial, Helvetica, sans-serif;">Name (13.01.09)</span><br>From : non tortot<br></span>

                             <span class="rp_inrimgxt" style="margin-left:20px;"><span style="font:11px/20px Arial, Helvetica, sans-serif;">Donec pharetra molestie tellus.</span><br>Vivamus facilisis diam. Mauris id</span>

                         </div>
                     </div>
                 </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
