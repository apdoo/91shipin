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
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
  </head>
  
  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 my home!!!${userinfo.username}
                <%-- <p style=" text-align: center;">
                     aaa<br/>
                     <video id="videoID" width="320" height="240" controls="controls">
                         <source src="http://localhost:9999/tt.mp4" type="video/mp4" >示例视频1</source>
                         您的浏览器不支持video标签
                     </video>
                 </p>--%>

                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
