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
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
  </head>
  
  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 <div id="contentpanel">

                     <div id="lp_padd">

                         <span class="lp_newvidit1">Video Title</span>

                         <img src="${pageContext.request.contextPath}/resources/img/lp_invidplyr.jpg" width="593" height="389" alt="" class="lp_invidplyr">
					
					<span class="lp_inrplyrpad">
						<span class="lp_plyrxt">Time :4.22</span>
						<span class="lp_plyrxt">Views :67</span>
						<span class="lp_plyrxt">Comments :1</span>
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
