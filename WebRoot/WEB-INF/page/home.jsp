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
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/cookie.js"></script>
   <script type="text/javascript">
       $(function() {


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

                     <div class="lp_newvidpad">
                         <span class="lp_newvidit">New Videos</span>
                         <img src="${pageContext.request.contextPath}/resources/img/lp_newline.jpg" width="661" height="2" alt="" class="lp_newline">

                         <a href="#"><img src="${pageContext.request.contextPath}/resources/img/lp_arro.jpg" width="13" height="20" alt="" class="lp_arro">	</a>

						<span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a><br>From: non tortor.</span>
						</span>

						<span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid2.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a><br>From: non tortor.</span>
						</span>

						<span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid3.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a><br>From: non tortor.</span>
						</span>

						<span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid4.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a><br>From: non tortor.</span>
						</span>

                         <a href="#"><img src="${pageContext.request.contextPath}/resources/img/lp_arro1.jpg" width="13" height="20" alt="" class="lp_arro">	</a>

                     </div>

                     <div class="lp_featpad">
                         <div class="lp_featnav">
                             <a href="#">Featured</a>
                             <a href="#">Most Viewed</a>
                             <a href="#">Most Discussed</a>
                             <a href="#">Top Favourites</a>
                             <a href="#">Top Rated</a>
                             <a href="#">Random</a>

                         </div>

                         <img src="${pageContext.request.contextPath}/resources/img/lp_featimg1.jpg" width="152" height="92" alt="" class="lp_featimg1">

						<span class="cp_featpara">
									<span style="float:left; width:250px; display:inline;"><span class="cp_featname"><b>Vivamus eu ipsum non diam dapibus egestas. </b><br>Best Music</span>

									<span class="cp_featxt">In felis. In felis mi, ullamcorper at, cursus in, gravida vitae, purus. Praesent massa eros, euismod sed, sodales eu, tincidunt posuere</span><br>
									</span>
									<span class="cp_featview">5.5<br>Added :07.01.2009<br>From : Best Music<br>Views : 841<br>Comments:6<br>
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/lp_featstar.jpg" width="78" height="13" alt=""></a></span>
						</span>

                         <img src="${pageContext.request.contextPath}/resources/img/lp_featline.jpg" width="634" height="1" alt="" class="lp_featline">

                         <img src="${pageContext.request.contextPath}/resources/img/lp_featimg2.jpg" width="152" height="92" alt="" class="lp_featimg1">

						<span class="cp_featpara">
									<span style="float:left; width:250px; display:inline;"><span class="cp_featname"><b>Vivamus eu ipsum non diam dapibus egestas. </b><br>Best Music</span>

									<span class="cp_featxt">In felis. In felis mi, ullamcorper at, cursus in, gravida vitae, purus. Praesent massa eros, euismod sed, sodales eu, tincidunt posuere</span><br>
									</span>
									<span class="cp_featview">5.5<br>Added :07.01.2009<br>From : Best Music<br>Views : 841<br>Comments:6<br>
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/lp_featstar.jpg" width="78" height="13" alt=""></a></span>
						</span>

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

                 <div id="rp_padd">

                     <img src="${pageContext.request.contextPath}/resources/img/rp_top.jpg" width="282" height="10" alt="" style="float:left;">
                     <div class="rp_loginpad">
                         <span class="rp_titxt">MEMBERS LOGIN</span>
                         <span class="rp_membrusr">User name:</span>
                         <input name="#" type="text" <%--class="rp_usrip"--%> >
                         <span class="rp_membrpwd">Password:</span>
                         <input name="#" type="password" <%--class="rp_pwdrip"--%>>
                         <a href="#" class="rp_login"><img src="${pageContext.request.contextPath}/resources/img/rp_login.jpg" width="39" height="17" alt=""></a>
                        <%-- <span class="rp_notmem"><a href="#" style="font:11px Arial, Helvetica, sans-serif; color:#FFFFFF;">Forgot your password</a></span>--%>
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
