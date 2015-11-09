<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

      <title>${video.title}</title>
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
      <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/video.js"></script>--%>
      <script type="text/javascript">
          $(function() {

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
                         ${video.title}
                         <div class="videoContainer">
                             <%--<video id="myVideo" controls="" preload="auto"  width="593" height="389" >--%>
                                 <%--<source  src="${video.videoId}"  type="video/mp4">--%>
                                 <%--<p>您的浏览器不支持html5，请更换</p>--%>
                             <%--</video>--%>
                             <div id='myplayer'></div>
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
                 <script src="${pageContext.request.contextPath}/js/jwplayer/jwplayer.js"></script>
                 <script type="text/javascript">
                     jwplayer('myplayer').setup({
                         file:"${video.vedioUrl}" ,
                         width: '630',
                         height: '500',
                         image:"${video.preImgSrc}",//视频预览图片
                         //controlbar: "over",//控制条位置
                         controlbar: "none",
                         screencolor :"#fff"//播放器颜色
                     });
                     var views="${video.views}";
                     var favourite="${video.favourite}";
                     var infotime="${video.infotime}";
                     $("#infotime").html(infotime);
                     $("#views").html("观看次数:"+views);

                 </script>
                 <!--网站尾部-->
             </div>
      </div>
  </body>
</html>
