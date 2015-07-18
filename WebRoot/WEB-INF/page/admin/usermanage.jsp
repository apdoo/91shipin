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
              //弹层默认关闭
              $('#w').window('close');

              $('#tt').datagrid({
                  url:'${pageContext.request.contextPath}/admin/getUsers',
                  singleSelect:true,//是否单选
                  loadMsg:'数据加载中,请稍后......',
                  frozenColumns:[[
                      {field:'id',checkbox:true}
                  ]],//单选按钮
                  fit: true,//自动大小
                  rownumbers:true,//行号
                  toolbar:[
                      {text:'添加',iconCls:'icon-add',handler:add},
                      {text:'编辑',iconCls:'icon-edit',handler:update}
                  ],
                  pagination:true//分页控件?

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
          //
          function cancel(){
              $('#w').window('close');
          }
          //确认修改
          function submit(){
              $.ajax({
                  type : "POST",
                  url : "${pageContext.request.contextPath}/admin/updateUser",
                  dataType:"json",
                  data :$("#userform").serialize(),
                  success : function(data) {
                      $('#w').window('close');
                      $('#tt').datagrid('reload');
                  },
                  error:function(){
                  }
              });


          }
          //更新方法
          function update(){
            //获得选中checkbox的值
              var id="";
              $("input:checked").each(function(){
                 id=$(this).val();
              });
              if(id==""){
                  alert("选择一个用户进行更改");
                  return false;
              }
              $.ajax({
                  type : "POST",
                  url : "${pageContext.request.contextPath}/admin/getUserInfo",
                  dataType:"json",
                  data : {
                      id : id
                  },
                  success : function(data) {
                      $('#userform').form('load',data);
                      $("#type").empty();
                      for(var i=-1;i<=5;i++){
                          if(i==data.type){
                              $("#type").append("<option selected=\"selected\" value=\""+i+"\">"+typeTransform(i)+"</option>");
                          }else{
                              $("#type").append("<option  value=\""+i+"\">"+typeTransform(i)+"</option>");
                          }
                      }
                      $('#w').window('open');
                  },
                  error:function(){
                  }
              });

          }
          //0，普通会员，1包月会员，2包季度会员，3包年会员，4永久会员，5管理员 ，-1被封禁会员
          function optionTransfer(value,rec,index){
             return  typeTransform(rec.type);
          }
          function typeTransform(type){
              switch (type)
              {
                  case 0:return "普通会员";
                  case 1:return "包月会员";
                  case 2:return "包季度会员";
                  case 3:return "包年会员";
                  case 4:return "永久会员";
                  case 5:return "管理员";
                  case -1:return "被封禁会员";
                  default : return "";
              }
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
          <th data-options="field:'points',width:100,align:'center',sortable:true">积分</th>
          <th data-options="field:'opt',width:80,align:'center',formatter:optionTransfer,sortable:true">类型</th>
          <th field="loginIp" width="100">登录ip</th>
          <th field="loginTime" width="100">最后登录时间</th>
          <th field="temp" width="100">会员到期时间</th>
      </tr>
      </thead>
  </table>
  <!--弹层-->
  <div id="w" class="easyui-window" data-options="title:'会员修改',iconCls:'icon-save'" style="width:500px;height:300px;padding:5px;">
      <div class="easyui-layout" data-options="fit:true">
          <div data-options="region:'center',border:false" style="padding:10px;background:#fff;border:1px solid #ccc;">
              <form id="userform" >
                  <table align="center">
                         <input type="hidden" value="" id="id" name="id"  >
                      <tr>
                          <td>用户名：</td>
                          <td><input type="text" value="" id="username" name="username" disabled="disabled"></td>
                      </tr>
                      <tr>
                          <td>积分：</td>
                          <td><input type="text" value="" id="points" name="points"></td>
                      </tr>
                      <tr>
                          <td>会员类型：</td>
                          <td><select name="type" id="type">
                          </select></td>
                      </tr>
                  </table>
              </form>

          </div>
          <div data-options="region:'south',border:false" style="text-align:right;padding:5px 0;">
              <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="submit()">确定</a>
              <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="cancel()">取消</a>
          </div>
      </div>
  </div>
  </body>
</html>
