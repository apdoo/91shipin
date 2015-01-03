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


          });
      </script>
  </head>
  
  <body>
      <div id="main_block">
             <div id="innerblock">
                 <!--网站头-->
                 <jsp:include page="../header.jsp"></jsp:include>
                 <!--内容-->
                 <%--<div class="home_cat_list" id="home_cat_list">--%>
                     <%--<div class="list left">--%>
                         <%--<h3 class="title"><a href="http://www.xiaopangniu.net/category/piju" class="more">更多...</a><a href="http://www.xiaopangniu.net/category/piju">手工皮具</a></h3>--%>
                         <%--<ul>--%>
                             <%--<li><span class="date">2013-06-04</span><a href="http://www.xiaopangniu.net/2013/06/04/2913.html" title="裁皮刀的新衣" rel="bookmark">裁皮刀的新衣</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-05-14</span><a href="http://www.xiaopangniu.net/2013/05/14/2360.html" title="植鞣皮长款钱夹&amp;原色笔套" rel="bookmark">植鞣皮长款钱夹&amp;原色笔套</a></li>--%>
                             <%--<li><span class="date">2013-05-08</span><a href="http://www.xiaopangniu.net/2013/05/08/2305.html" title="redmoon钱包修改版" rel="bookmark">redmoon钱包修改版</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-05-06</span><a href="http://www.xiaopangniu.net/2013/05/06/2262.html" title="原色做旧 经典款redmoon" rel="bookmark">原色做旧 经典款redmoon</a></li>--%>
                             <%--<li><span class="date">2013-04-13</span><a href="http://www.xiaopangniu.net/2013/04/13/2229.html" title="ipad mini 包/保护套 原色植鞣皮" rel="bookmark">ipad mini 包/保护套 原色植鞣皮</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-29</span><a href="http://www.xiaopangniu.net/2013/03/29/2157.html" title="彩虹线iPhone4/4s手机套" rel="bookmark">彩虹线iPhone4/4s手机套</a></li>--%>
                             <%--<li><span class="date">2013-03-16</span><a href="http://www.xiaopangniu.net/2013/03/16/1943.html" title="人生的第二个短钱夹" rel="bookmark">人生的第二个短钱夹</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-15</span><a href="http://www.xiaopangniu.net/2013/03/15/1922.html" title="原色植鞣随身手绘本" rel="bookmark">原色植鞣随身手绘本</a></li>--%>
                         <%--</ul>--%>
                     <%--</div>--%>
                     <%--<div class="list left list_right">--%>
                         <%--<h3 class="title"><a href="http://www.xiaopangniu.net/category/jiaocheng" class="more">更多...</a><a href="http://www.xiaopangniu.net/category/jiaocheng">教程</a></h3>--%>
                         <%--<ul>--%>
                             <%--<li><span class="date">2013-05-08</span><a href="http://www.xiaopangniu.net/2013/05/08/2321.html" title="新手入门必备工具指导" rel="bookmark">新手入门必备工具指导</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-05-06</span><a href="http://www.xiaopangniu.net/2013/05/06/2274.html" title="长款钱包圆角切割和卡位安装" rel="bookmark">长款钱包圆角切割和卡位安装</a></li>--%>
                             <%--<li><span class="date">2013-03-24</span><a href="http://www.xiaopangniu.net/2013/03/24/2176.html" title="植鞣皮短钱夹日记 day4 3/24" rel="bookmark">植鞣皮短钱夹日记 day4 3/24</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-23</span><a href="http://www.xiaopangniu.net/2013/03/23/2109.html" title="植鞣皮短钱夹日记 day3 3/23" rel="bookmark">植鞣皮短钱夹日记 day3 3/23</a></li>--%>
                             <%--<li><span class="date">2013-03-23</span><a href="http://www.xiaopangniu.net/2013/03/23/2065.html" title="植鞣皮短钱夹日记 day2 3/22" rel="bookmark">植鞣皮短钱夹日记 day2 3/22</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-22</span><a href="http://www.xiaopangniu.net/2013/03/22/1991.html" title="手缝皮革工具介绍" rel="bookmark">手缝皮革工具介绍</a></li>--%>
                             <%--<li><span class="date">2013-03-21</span><a href="http://www.xiaopangniu.net/2013/03/21/1962.html" title="植鞣皮短钱夹日记 day1  3/21" rel="bookmark">植鞣皮短钱夹日记 day1  3/21</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-09</span><a href="http://www.xiaopangniu.net/2013/03/09/1832.html" title="酸奶瓶和玻璃球做皮铃铛过程" rel="bookmark">酸奶瓶和玻璃球做皮铃铛过程</a></li>--%>
                         <%--</ul>--%>
                     <%--</div>--%>
                     <%--<div class="list left">--%>
                         <%--<h3 class="title"><a href="http://www.xiaopangniu.net/category/tuzhi" class="more">更多...</a><a href="http://www.xiaopangniu.net/category/tuzhi">图纸</a></h3>--%>
                         <%--<ul>--%>
                             <%--<li><span class="date">2013-05-10</span><a href="http://www.xiaopangniu.net/2013/05/10/2347.html" title="redmoon短财模版" rel="bookmark">redmoon短财模版</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-04-23</span><a href="http://www.xiaopangniu.net/2013/04/23/2251.html" title="Red moon 角花1:1图纸 A4直接打印" rel="bookmark">Red moon 角花1:1图纸 A4直接打印</a></li>--%>
                             <%--<li><span class="date">2013-03-24</span><a href="http://www.xiaopangniu.net/2013/03/24/2096.html" title="植鞣皮钥匙包设计图2" rel="bookmark">植鞣皮钥匙包设计图2</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-16</span><a href="http://www.xiaopangniu.net/2013/03/16/1932.html" title="短款竖款钱包设计图纸" rel="bookmark">短款竖款钱包设计图纸</a></li>--%>
                             <%--<li><span class="date">2013-03-09</span><a href="http://www.xiaopangniu.net/2013/03/09/1861.html" title="笔套&amp;刀套设计模版" rel="bookmark">笔套&amp;刀套设计模版</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-03-09</span><a href="http://www.xiaopangniu.net/2013/03/09/1822.html" title="钥匙包设计图纸" rel="bookmark">钥匙包设计图纸</a></li>--%>
                             <%--<li><span class="date">2013-01-02</span><a href="http://www.xiaopangniu.net/2013/01/02/1510.html" title="简风钱夹设计图模版" rel="bookmark">简风钱夹设计图模版</a></li>--%>
                             <%--<li class="odd"><span class="date">2012-11-29</span><a href="http://www.xiaopangniu.net/2012/11/29/1034.html" title="长款钱包设计图模版" rel="bookmark">长款钱包设计图模版</a></li>--%>
                         <%--</ul>--%>
                     <%--</div>--%>
                     <%--<div class="list left list_right">--%>
                         <%--<h3 class="title"><a href="http://www.xiaopangniu.net/category/ziliao" class="more">更多...</a><a href="http://www.xiaopangniu.net/category/ziliao">资料</a></h3>--%>
                         <%--<ul>--%>
                             <%--<li><span class="date">2013-02-21</span><a href="http://www.xiaopangniu.net/2013/02/21/2219.html" title="《皮包设计DIY1》下载" rel="bookmark">《皮包设计DIY1》下载</a></li>--%>
                             <%--<li class="odd"><span class="date">2013-02-20</span><a href="http://www.xiaopangniu.net/2013/02/20/1638.html" title="《革细工入门全彩页》下载" rel="bookmark">《革细工入门全彩页》下载</a></li>--%>
                             <%--<li><span class="date">2012-12-29</span><a href="http://www.xiaopangniu.net/2012/12/29/1455.html" title="《自己动手作创意皮雕》下载" rel="bookmark">《自己动手作创意皮雕》下载</a></li>--%>
                             <%--<li class="odd"><span class="date">2012-12-19</span><a href="http://www.xiaopangniu.net/2012/12/19/1365.html" title="《手缝皮革包》下载" rel="bookmark">《手缝皮革包》下载</a></li>--%>
                             <%--<li><span class="date">2012-12-19</span><a href="http://www.xiaopangniu.net/2012/12/19/1356.html" title="《男人皮革小物制作》下载" rel="bookmark">《男人皮革小物制作》下载</a></li>--%>
                             <%--<li class="odd"><span class="date">2012-12-17</span><a href="http://www.xiaopangniu.net/2012/12/17/1314.html" title="《皮革技法入门》下载" rel="bookmark">《皮革技法入门》下载</a></li>--%>
                             <%--<li><span class="date">2012-11-14</span><a href="http://www.xiaopangniu.net/2012/11/14/501.html" title="《动物皮雕技法》下载" rel="bookmark">《动物皮雕技法》下载</a></li>--%>
                             <%--<li class="odd"><span class="date">2012-11-12</span><a href="http://www.xiaopangniu.net/2012/11/12/238.html" title="《极简风手缝皮革》全彩页下载" rel="bookmark">《极简风手缝皮革》全彩页下载</a></li>--%>
                         <%--</ul>--%>
                     <%--</div>--%>
                     <%--<div class="clear"></div>--%>
                 <%--</div>--%>
                 <!--网站尾部-->
                 <jsp:include page="../bottom.jsp"></jsp:include>


             </div>
      </div>
  </body>
</html>
