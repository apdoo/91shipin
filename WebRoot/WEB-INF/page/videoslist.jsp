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
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
      <script type="text/javascript">
          $(function() {
              pagecreat("/video/videoslist?wpage=");
          });
          //分页方法
          //分页和内容生成
          function pagecreat(path){
              //当前页数
              var current=${pager.currentPage};
              //总页数
              var pageCount=${pager.pageCount};
              //处理object数组
              var list=${list};
              var content="";
              //循环处理数组
              $.each(list, function(key, val) {
                  var head=" <span class=\"lp_vidpara\">";
                  var img="<img src=\""+val.preImgSrc+"\"width=\"134\" height=\"83\" alt=\"\" class=\"lp_newvid1\">";
                  var img2="<img src=\"${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg\" width=\"4\" height=\"6\" alt=\"\" class=\"lp_newvidarro\">";
                  var info="<span class=\"lp_newdixt\"><a href=\""+"${pageContext.request.contextPath}/video/videoplay"+"\"style=\"color:#BEBEBE;\" title=\""+val.title+"\">"+val.title.substr(0,5)+".."+"</a>" ;
                  var bottom="<br/>"+val.infotime+"<br/>更新时间:"+val.updatetime+"</span></span>";
                  content=content+  head+img+img2+info+bottom;
                  $("#v_list").html(content);
              });
              //生成上一页箭头
              $("#pagenumber").append("<a>«上一页</a>");
              //处理长度 生成页数
              if(pageCount>9){
                  //当页数大于9页的时候。创建首页
                  if(current!=1){
                      $("#pagenumber").append("<a class='page-numbers'  >"+1+"</a><span>...</span>");
                  }
                  $("#pagenumber").append("<a class='current'  >"+current+"</a><span class='divider'>/</span>");
                  for(var i=0;i<3;i++){
                      //循环当前页后三页
                      if(current<(pageCount-2)){
                          $("#pagenumber").append("<a class='page-numbers'  >"+(current+1+i)+"</a><span class='divider'>/</span>");
                      }
                  }
                  //末页
                  if(current!=pageCount){
                      $("#pagenumber").append("<span>...</span><a class='page-numbers'  >"+pageCount+"</a>");
                  }

              }else{
                  //小于9页的时候 直接生成
                  for(var i=0;i<pageCount;i++){
                      //判断当前页则修改为current样式
                      if((i+1)==current){
                          $("#pagenumber").append("<a class='current'  >"+(i+1)+"</a><span class='divider'>/</span>");

                      }else{
                          $("#pagenumber").append("<a class='page-numbers' >"+(i+1)+"</a><span class='divider'>/</span>");
                      }
                  }
              }
              //生成上=下一页箭头
              $("#pagenumber").append("<a >下一页»</a>");
              //选择pagernumber下所有的子元素<a> 遍历添加href
              $("#pagenumber").children("a").each(function(){
                  var j=$(this).html();
                  if(j=="«上一页"){
                      if(current==1){
                          $(this).attr("href","${pageContext.request.contextPath}/video/videoslist?wpage="+1);
                      }else{
                          $(this).attr("href","${pageContext.request.contextPath}/video/videoslist?wpage="+(current-1));
                      }

                  }else if(j=="下一页»"){
                      if(current==pageCount){
                          $(this).attr("href","${pageContext.request.contextPath}"+path+pageCount);
                      }else{
                          $(this).attr("href","${pageContext.request.contextPath}"+path+(current+1));
                      }

                  }else{
                      $(this).attr("href","${pageContext.request.contextPath}"+path+j);
                  }
              });

          }
      </script>
  </head>
  
  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 <div class="v_list" id="v_list">
                        <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="${pageContext.request.contextPath}/videoplay" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                      <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="${pageContext.request.contextPath}/videoplay" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                 </div>
                 <div class="navigation page-navigation" style="margin: auto;"
                      id="pagenumber"></div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
