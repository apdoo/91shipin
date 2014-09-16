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
                 <h2 style="color: #aa1317">如果您在浏览本网站的时候，发现页面错乱或者视频提示不支持html5控件的时候，请更换高版本浏览器(推荐谷歌浏览器)！</h2>
                 <h3 style="color: rgb(248, 143, 5)">关于91视频网的一些介绍</h3>
                 <p style="color: #E0FF00">91视频网刚成立不久，现在注册成为91视频网站会员即可自动成为包月会员，包月会员观看视频影片不受限制，尽情享受91视频网带来的刺激！</p>
                 <h3 style="color: rgb(248, 143, 5)">91视频网会员制度介绍</h3>
                 <p style="color: #E0FF00">网站主要分为注册会员，付费会员(包括：包月会员、包季度会员、包年会员、永久会员几个级别)</p>
                 <p style="color: #E0FF00">注册会员权利：每天可以免费观看10部影片</p>
                 <p style="color: #E0FF00">付费会员权利：</p>
                 <p style="color: #E0FF00">1、观看影片次数不受限制</p>
                 <p style="color: #E0FF00">2、加入专属会员QQ群</p>
                 <p style="color: #E0FF00">3、提供客户端版本下载器，下载视频到本地播放</p>
                 <h3 style="color: rgb(248, 143, 5)">关于网站功能方面</h3>
                 <p style="color: #E0FF00">网站刚上线不久，很多功能有待实现，在不久以后论坛和会员上传自拍功能也将实现，敬请期待！</p>
                 <h3 style="color: rgb(248, 143, 5)">联系我们</h3>
                 <p style="color: #E0FF00">QQ:2103025059</p>
                 <h3 style="color: rgb(248, 143, 5)">付款方式</h3>
                 <p style="color: #E0FF00">①支付宝交易
                     (接受大陸或國外匯款)
                     收款人銀行︰支付宝
                     收款人名稱︰陈世容
                     支付宝帐號：13262526014
                     【支付宝商品名称请务必填写 数据资料】</p>
                 <p style="color: #E0FF00">②中國工商銀行

                     (接受大陸國內匯款)

                     收款人銀行︰

                     中国工商银行湖南长沙窑岭分理处

                     收款人名稱︰ 任李

                     收款人卡號：  6222021901016083337 </p>
                 <p style="color: #E0FF00">③QQ财付通交易

                     (接受大陸或國外匯款)

                     收款人姓名︰李瑞焕

                     收款人卡号︰ 1012656260 </p>
                 <p style="color: #E0FF00">④PayPal
                     (接受大陸或國外匯款)
                     收款人账号： ttbbs2013@gmail.com</p>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
