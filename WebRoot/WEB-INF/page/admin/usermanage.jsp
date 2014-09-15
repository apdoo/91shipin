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
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/themes/metro/easyui.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/themes/icon.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/themes/metro/demo.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>

      <script type="text/javascript">
          $(function() {
              $('#tt').datagrid({
                  url:'${pageContext.request.contextPath}/admin/getUsers',
                  singleSelect:true,//是否单选
                  loadMsg:'数据加载中,请稍后......',
                  frozenColumns:[[
                      {field:'ck',checkbox:true}
                  ]],//单选按钮
                  fit: true,//自动大小
                  rownumbers:true,//行号
                  toolbar:[
                      {text:'添加',iconCls:'icon-edit',handler:add}
                  ],
                  pagination:true//分页控件 

              });
              var p = $('#tt').datagrid('getPager');
              $(p).pagination({
                  pageSize: 10,//每页显示的记录条数，默认为10
                  pageList: [10,20,50],//可以设置每页记录条数的列表
                  beforePageText: '第',//页数文本框前显示的汉字
                  afterPageText: '页    共 {pages} 页',
                  displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录'
                  /*onBeforeRefresh:function(){
                   $(this).pagination('loading');
                   alert('before refresh');
                   $(this).pagination('loaded');
                   }*/
              });
          });
          function add(){

          }
      </script>
  </head>
  
  <body>
  <table id="tt">
      <thead>
      <tr>
          <th field="username" width="100">用户名</th>
          <th field="email" width="100">邮箱</th>
          <th field="signupTime" width="100">注册时间</th>
          <th field="points" width="100">积分</th>
          <th field="type" width="100">类型</th>
          <th field="loginIp" width="100">登录ip</th>
          <th field="loginTime" width="100">最后登录时间</th>
          <th field="temp" width="100">temp</th>
      </tr>
      </thead>
  </table>
  </body>
</html>
