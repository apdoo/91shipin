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
      <script type="text/javascript">

          $(function() {

          });
      </script>
  </head>
  
  <body>
  <div id="aa" class="easyui-accordion" style="position: absolute; top: 27px; left: 0px; right: 0px; bottom: 0px;">

      <div title="后台管理" iconcls="icon-save" style="overflow: auto; padding: 10px;">
          <ul >
              <li>
                  <span><a target="mainFrame" href="${pageContext.request.contextPath}/admin/usermanage">用户管理</a></span>
              </li>
              <%--<li>--%>
                  <%--<span><a target="mainFrame" href="${pageContext.request.contextPath}/admin/bbsmanage">论坛管理</a></span>--%>
              <%--</li>--%>
          </ul>
      </div>

  </div>
  </body>
</html>
