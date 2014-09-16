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
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
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
                 <img style="padding-left: 230px" src="${pageContext.request.contextPath}/resources/img/hanjie.jpg"  />
                 <h2 style="color: #aa1317" align="center">游客您好，今天的访问次数已经到达</h2>
                 <h3 style="color: rgb(248, 143, 5)" align="center">试试注册成为91视频网的会员吧 <a href="${pageContext.request.contextPath}/user/signup" target="_blank">点击进行注册</a></h3>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
