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
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
   <script type="text/javascript">
       $(function() {
           root="${pageContext.request.contextPath}";
           //获得cookie信息后发送到服务端验证
           $.ajax({
               type : "POST",
               url : root+"/video/recently",
               data : {
               },
               dataType:"json",
               success : function(data) {
                   var content="";
                   $.each(data, function(key, val) {
//                       var head=" <span class=\"lp_vidpara\">";
//                       var img="<img src=\""+val.preImgSrc+"\"width=\"134\" height=\"83\" alt=\"\" class=\"lp_newvid1\">";
//                       var img2="<img src=\""+root+"/resources/img/lp_newvidarro.jpg\" width=\"4\" height=\"6\" alt=\"\" class=\"lp_newvidarro\">";
//                       var info="<span class=\"lp_newdixt\"><a href=\""+root+"/video/videoplay?vid="+val.videoId+"\"style=\"color:#BEBEBE;\" title=\""+val.title+"\">"+val.title.substr(0,5)+".."+"</a>" ;
//                       var bottom="<br/>"+val.infotime+"<br/>更新时间:"+val.updatetime+"</span></span>";
//                       content=content+  head+img+img2+info+bottom;
                       var head="<img src=\""+val.preImgSrc+"\" width=\"152\" height=\"92\"  class=\"lp_featimg1\">";
                       var cp="<span class=\"cp_featpara\"><span style=\"float:left; width:250px; display:inline;\"><span class=\"cp_featname\"><b>"+val.title+" </b><br>自拍</span></span></span>";
                       var line="<img src=\""+root+"/resources/img/lp_featline.jpg\" width=\"634\" height=\"1\"   class=\"lp_featline\">";
                       content=content+head+cp+line;
                   });
                   $("#videolist").html(content);
               },
               //请求出错的处理
               error:function(){
               }
           });
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
							<span class="cp_watcxt">Mauris convallis arcu sit amet leo.</span>
							<a href="#" class="lp_watmore"><img src="${pageContext.request.contextPath}/resources/img/lp_watmore.jpg" width="35" height="28" alt=""></a>

						</span>

						<span class="cp_smlpad">
							<img src="${pageContext.request.contextPath}/resources/img/lp_uplad.jpg" width="81" height="81" alt="" class="lp_uplad">

							<img src="${pageContext.request.contextPath}/resources/img/cp_watchit1.jpg" width="106" height="16" alt="" class="cp_watchit">
							<span class="cp_watcxt">Mauris convallis arcu sit amet leo.</span>
							<a href="#" class="lp_watmore"><img src="${pageContext.request.contextPath}/resources/img/lp_watmore.jpg" width="35" height="28" alt=""></a>

						</span>

						<span class="cp_smlpad">
							<img src="${pageContext.request.contextPath}/resources/img/lp_share.jpg" width="81" height="81" alt="" class="lp_uplad">

							<img src="${pageContext.request.contextPath}/resources/img/cp_watchit2.jpg" width="93" height="16" alt="" class="cp_watchit">
							<span class="cp_watcxt">Mauris convallis arcu sit amet leo.</span>
							<a href="#" class="lp_watmore"><img src="${pageContext.request.contextPath}/resources/img/lp_watmore.jpg" width="35" height="28" alt=""></a>

						</span>

                     </div>

                     <div class="lp_featpad">
                         <div class="lp_featnav">
                             <a href="#">*最新 视频*</a>
                             <a href="#">*观看 最多*</a>
                             <a href="#">*讨论 最多*</a>
                             <a href="#">*收藏 最多*</a>
                             <a href="#">*获赞 最多*</a>
                             <a href="#">*随机的一组*</a>
                         </div>
                         <div id="videolist"></div>
                         <img src="${pageContext.request.contextPath}/resources/img/lp_featline.jpg" width="634" height="1" alt="" class="lp_featline">

                         <img src="${pageContext.request.contextPath}/resources/img/lp_featimg3.jpg" width="152" height="92" alt="" class="lp_featimg1">

						<span class="cp_featpara">
									<span style="float:left; width:250px; display:inline;"><span class="cp_featname"><b>Vivamus eu ipsum non diam dapibus egestas. </b><br>Best Music</span>

									<span class="cp_featxt">In felis. In felis mi, ullamcorper at, cursus in, gravida vitae, purus. Praesent massa eros, euismod sed, sodales eu, tincidunt posuere</span><br>
									</span>
									<span class="cp_featview">5.5<br>Added :07.01.2009<br>From : Best Music<br>Views : 841<br>Comments:6<br>
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/lp_featstar.jpg" width="78" height="13" alt=""></a></span>
						</span>
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
                     <img src="${pageContext.request.contextPath}/resources/img/rp_upbgtop.jpg" width="282" height="10" alt="" class="rp_upbgtop">
                     <div class="rp_uppad">
                         <img src="${pageContext.request.contextPath}/resources/img/rp_upbgtit.jpg" width="127" height="11" alt="" class="rp_upbgtit"><br>

                         <input name="#" type="text" class="rp_upip">
                         <a href="#" class="rp_upclick"><img src="${pageContext.request.contextPath}/resources/img/rp_upclick.jpg" width="60" height="23" alt=""></a>

                         <a href="#" class="rp_mrclkxts">More Videos From <b>Funny Videos</b></a>

                     </div>

                     <img src="${pageContext.request.contextPath}/resources/img/rp_top.jpg" width="282" height="10" alt="" class="rp_upbgtop">
                     <div class="rp_loginpad" style="padding-bottom:0px; border-bottom:none;">
                         <span class="rp_titxt">VIDEO CATEGORIES</span>
                     </div>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Funny Clips</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Advertising</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Sports</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Kids</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Scary Clips</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">News</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Motorcycles</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Planes</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Birds</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Beautiful Women</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Pretty Women</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Cool TV</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>

					<span style="float:left;"><img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
					<a href="#" class="rp_catxt">Testing Channel</a>
					<img src="${pageContext.request.contextPath}/resources/img/rp_catline.jpg" width="262" height="1" alt="" class="rp_catline"></span>


                     <img src="${pageContext.request.contextPath}/resources/img/rp_upbgtop.jpg" width="282" height="10" alt="" class="rp_upbgtop">
                     <div class="rp_uppad">
                         <span class="rp_titxt">VIDEO OF THE WEEK</span>

                         <img src="${pageContext.request.contextPath}/resources/img/rp_weekimg.jpg" width="87" height="54" alt="" class="rp_weekimg">

                         <img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro1">
                         <a href="#" class="rp_vidxt">Testing Channel<br><font style="color:#666666; text-decoration:none;">From : non tortor</font></a>

                     </div>

                     <img src="${pageContext.request.contextPath}/resources/img/rp_upbgtop.jpg" width="282" height="10" alt="" class="rp_upbgtop">
                     <div class="rp_uppad">
                         <span class="rp_titxt" style="color:#A0B92E;">WHATS NEW</span>

                         <img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro1">
                         <a href="#" class="rp_vidxt" style="width:248px; color:#848484;"><b>Nullam gravida, lacus ut auctor ultricies;</b> nibh <br>sem elementum odio, ac sagittis turpis magna .</a>
                         <img src="${pageContext.request.contextPath}/resources/img/rp_catarro.jpg" width="5" height="5" alt="" class="rp_catarro">
                         <a href="#" class="rp_vidxt" style="width:248px; color:#848484; margin-top:8px;"><b>Nullam gravida, lacus ut auctor ultricies;</b> nibh <br>sem elementum odio, ac sagittis turpis magna .</a>



                     </div>


                 </div>

                 </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
