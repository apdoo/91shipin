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
      <link rel="stylesheet" type="text/css"
            href="${pageContext.request.contextPath}/resources/css/bbs.css">

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
                 <div id="box">
                     <ul class="list">
                         <li><span>作者:天魅 [2008-8-6 10:10]   </span><a href="article.asp?id=106">Particle illusion 3.01影视效果制作软件</a></li>
                         <li><span>2008-7-5 </span><a href="article.asp?id=91">Ulead COOL 3D 3.5 (不懂3D照做3D的软件)</a></li>
                         <li><span>2008-7-4 </span><a title="作者:天魅 日期:2008-07-09" href="article.asp?id=34">Sothink SWF Decompiler   SWF破解工具</a></li>
                         <li><span>2008-7-3 </span><a title="作者:天魅 日期:2008-07-03" href="article.asp?id=25">SWFKit   FLASH打包器(电子杂志打包首选)</a></li>
                         <li><span>2008-8-6 </span><a href="article.asp?id=106">Particle illusion 3.01影视效果制作软件</a></li>
                         <li><span>2008-7-5 </span><a href="article.asp?id=91">Ulead COOL 3D 3.5 (不懂3D照做3D的软件)</a></li>
                         <li><span>2008-7-4 </span><a title="作者:天魅 日期:2008-07-09" href="article.asp?id=34">Sothink SWF Decompiler   SWF破解工具</a></li>
                         <li><span>2008-7-3 </span><a title="作者:天魅 日期:2008-07-03" href="article.asp?id=25">SWFKit   FLASH打包器(电子杂志打包首选)</a></li>
                         <li><span>2008-8-6 </span><a href="article.asp?id=106">Particle illusion 3.01影视效果制作软件</a></li>
                         <li><span>2008-7-5 </span><a href="article.asp?id=91">Ulead COOL 3D 3.5 (不懂3D照做3D的软件)</a></li>
                         <li><span>2008-7-4 </span><a title="作者:天魅 日期:2008-07-09" href="article.asp?id=34">Sothink SWF Decompiler   SWF破解工具</a></li>
                         <li><span>2008-7-3 </span><a title="作者:天魅 日期:2008-07-03" href="article.asp?id=25">SWFKit   FLASH打包器(电子杂志打包首选)</a></li>

                     </ul>
                   </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
