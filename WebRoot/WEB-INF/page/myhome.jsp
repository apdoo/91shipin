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
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript">
          $(function() {
                var type="${userinfo.type}";
                var temp="${userinfo.temp}"
                var ttype=typeTransform(parseInt(type));
                $("#type").append(ttype);
              if("123".indexOf(type) >= 0 )
              {
                  $("#usertype").append("<li>会员到期时间：<em class=\"xg1\"  style=\"color: #FF0000\">"+temp+"</em> </li>");
              }
          });
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
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 <div class="bm bw0">
                     <div class="bm_c">
                         <div class="bm_c u_profile">

                             <div class="pbm mbm bbda cl">
                                 <h2 class="mbn">
                                     用户：${userinfo.username}
                                 </h2>
                             </div>
                             <div class="pbm mbm bbda cl">
                                 <h2 class="mbn">活跃概况</h2>
                                 <ul id="usertype">
                                     <li>用户类型：<em class="xg1" id="type" style="color: #FF0000"></em> </li>
                                 </ul>
                                 <ul id="pbbs" class="pf_l">
                                     <li><em>注册时间：</em>${userinfo.signupTime}</li>
                                     <li><em>最后访问：</em>${userinfo.loginTime}</li>
                                     <li><em>上次访问IP：</em>${userinfo.loginIp}</li>
                                 </ul>
                             </div>
                             <div id="psts" class="cl">
                                 <h2 class="mbn">统计信息</h2>
                                 <ul class="pf_l">
                                     <li><em>积分:</em>${userinfo.points}</li>
                                 </ul>
                             </div>
                         </div><!--[diy=diycontentbottom]--><div id="diycontentbottom" class="area"></div><!--[/diy]--></div>
                 </div>
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
