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
  </head>
  <body >
  <table width="600" align="center"><tbody><tr><td>
      <img src="${pageContext.request.contextPath}/resources/img/disclaimer_top.jpg">
      <br>
      <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/resources/img/disclaimer_yes_cn.jpg" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.baidu.com"><img src="${pageContext.request.contextPath}/resources/img/disclaimer_no_cn.jpg" border="0"></a>

      <br><br>

      You need to be at least 18 years to access this website. Please confirm below that you are at least 18 years or use the "Cancel" button to leave.
      <br><br>
      <a href="${pageContext.request.contextPath}/home">Yes, I am at least 18 years old.</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.baidu.com">Cancel</a>

  </td></tr>
  </tbody></table>
  </body>
</html>
