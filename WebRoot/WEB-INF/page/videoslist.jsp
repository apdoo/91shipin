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
  </head>
  
  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="header.jsp"></jsp:include>
                 <!--内容-->
                 <div class="v_list">
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
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                         <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                         <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                         <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                         <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                         <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                        <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                       <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                       <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                       <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>
                       <span class="lp_vidpara">
							<img src="${pageContext.request.contextPath}/resources/img/lp_newvid1.jpg" width="134" height="83" alt="" class="lp_newvid1">

							<img src="${pageContext.request.contextPath}/resources/img/lp_newvidarro.jpg" width="4" height="6" alt="" class="lp_newvidarro">
							<span class="lp_newdixt"><a href="#" style="color:#BEBEBE;">Nulla viverra neque</a>
                                <br>时长:22
                                <br>更新时间:2014-08-21
                            </span>
					</span>



                 </div>
                 <jsp:include page="bottom.jsp"></jsp:include>
                 <!--网站尾部-->

             </div>
      </div>
  </body>
</html>
