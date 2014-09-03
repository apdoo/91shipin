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
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <script type="text/javascript">
          $(function() {
              //点击验证码换
              $("#vimg").click(function() {
                  $("#vimg").attr("src","${pageContext.request.contextPath}/validation/one");
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
                 <div class="signup_left">

                     <h2>我已经是会员了</h2>
                     如果您已经是注册会员了，请在此直接登录
                     <div class="signup_container" id="login_container" >
                         <form name="login_form" id="login_form" method="post" action="${pageContext.request.contextPath}/user/login">
                             <label for="login_username" class="label">用户名 : </label>
                             <div class="input_container">
                                 <input name="username" type="text" id="login_username" size="16">
                             </div>
                             <div class="clearfix"></div>
                             <label for="login_password" class="label">密码 : </label>
                             <div class="input_container">
                                 <input name="password" type="password" id="login_password" size="16">
                             </div>
                             <div class="clearfix"></div>
                              <!--此行作用来对齐button按钮-->
                             <label for="" class="label">&nbsp;</label>
                             <div class="gform_footer top_label">
                                 <input type="button" id="login" class="button green" value="登 录"
                                        tabindex="5">
                                     <input id="saveCookie" type="checkbox" value="" />记住密码</p>
                             </div>
                             <div class="clear"></div>
                             <%--<div align="center"><a href="http://video-share.ro/forgot.php">Forgot Password</a> | <a href="http://video-share.ro/forgot.php">Forgot Username</a></div>--%>
                         </form>
                         <div id="login_tips"></div>
                     </div>

                     <p>成为会员以后:</p>

                     <ul><li>您每天可以免费观看<strong>20</strong>部视频 </li><li><strong>Share favorites</strong> with friends and family</li>
                         <li><strong>Connect with other users</strong> who share your interests</li><li><strong>Upload your videos</strong> to a worldwide audience
                         </li></ul>

                 </div>
                 <div class="signup_right">

                 <h2>游客注册</h2>
                 轻松注册为91视频网会员，观看更多视频
                 <div class="signup_container" id="signup_container">

                 <form name="login_form" id="signup_form" method="post" action="${pageContext.request.contextPath}/user/toSignup">

                     <label for="newusername" class="label">用户名:</label>
                     <div class="input_container">
                         <input type="text" name="username" id="newusername">
                         <div class="hint">用户名以字母开头，可以包含数字、下划线，长度不小于5位</div>
                     </div>

                     <div class="clearfix"></div>
                     <label for="email" class="label">email:</label>
                     <div class="input_container">
                         <input type="text" name="email" id="email">
                     </div>
                     <div class="clearfix"></div>
                     <label for="newpassword" class="label">密码:</label>
                     <div class="input_container">
                         <input type="password" name="password" id="newpassword">
                         <div class="hint">密码可以包含字母，数字，区分大小写，长度不小于6位</div>
                     </div>
                     <div class="clearfix"></div>
                     <label for="cpassword" class="label">确认密码:</label>
                     <div class="input_container">
                         <input type="password" name="cpassword" id="cpassword">
                     </div>
                     <div class="clearfix"></div>
                     <label class="label" for="verification_code">验证码:</label>
                     <input type="text" id="verification_code" name="vcode">
                     <div class="clearfix"></div>
                     <label class="label">&nbsp;</label>
                     <div class="input_container">
                         <img id="vimg"  src="${pageContext.request.contextPath}/validation/one" />
                     </div>
                     <div class="clearfix"></div>
                     <div class="clear"></div>
                     <label for="" class="label">&nbsp;</label>
                     <div class="gform_footer top_label">
                         <input type="button" id="reg" class="button green" value="注 册"
                                tabindex="5">
                         <input id="saveCookieSign" type="checkbox" value="" />记住密码</p>
                     </div>
                     <div class="clearfix"></div>
                     <div id="signup_tips"></div>
                 </form>
                 </div>
                 </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->
            </div>
  </div>


  </body>
</html>
