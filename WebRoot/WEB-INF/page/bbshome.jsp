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
      <link rel="stylesheet" type="text/css"
            href="${pageContext.request.contextPath}/resources/css/bbs.css">

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

      <script type="text/javascript">
          $(function() {
              //当前页数
              var current="${pager.currentPage}";
              //总页数
              var pageCount="${pager.pageCount}";
              //处理object数组
              var list=${list};
              var root="${pageContext.request.contextPath}";
              var path="/bbs/home?wpage=";
              pagecreat(root,path,current,pageCount,list);
              //生成视频列表
              bbshomelist(root,list);

          });
      </script>
  </head>
  
  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 <h3 align="center" style="color: rgb(248, 143, 5)">即将上线，敬请期待！</h3>
                 <div id="box">
                     <ul class="list" id="bbslist">
                     </ul>
                   </div>
                 <div class="navigation page-navigation" style="margin: auto;"
                      id="pagenumber"></div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
