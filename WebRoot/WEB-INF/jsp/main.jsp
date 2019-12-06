<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    	<meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/templatemo-style.css">
        <link rel="stylesheet" type="text/css" href="css/GK_Helper_main.css">
        
    </head>
  	<script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/GK_Helper_main.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>

  <body>
	<div id="loader-wrapper">
		<div id="loader"></div>
   </div>
        <div class="content-bg"></div>
        <div class="bg-overlay"></div>
         <!-- SITE TOP -->
        <div class="site-top">
            <div class="site-header clearfix">
                <div class="container">
                    <a href="#" class="site-brand pull-left"><strong>GK_Help</strong> 校园赏金猎人</a>
<!--                     <div class="social-icons pull-right">
                        <ul>
                            <li><div class="choose_" id="take" onclick="changefid(this)">帮拿</div></li>
                            <li><div class="choose_" id="send" onclick="changefid(this)">帮送</div></li>
                            <li><div class="choose_" id="buy" onclick="changefid(this)">帮买</div></li>
                            <li><div class="choose_" id="queue" onclick="changefid(this)">帮排</div></li>
                            <li><input type="button" class="publish" value="发布悬赏任务" onclick="publish()"></li>
                        </ul>
                    </div> -->
                </div>
            </div> <!-- .site-header -->
            <div class="site-banner">
                <div class="container">
	                <div class="row">
	                    <div class="col-md-offset-2 col-md-8 text-center">
	                       <div class="choose">
							  	<div class="choose_" id="take" onclick="changefid(this)">帮拿</div>
							  	<div class="choose_" id="send" onclick="changefid(this)">帮送</div>
							  	<div class="choose_" id="buy" onclick="changefid(this)">帮买</div>
							  	<div class="choose_" id="queue" onclick="changefid(this)">帮排</div>
								<input type="button" class="publish" value="发布悬赏任务" onclick="publish()">
	  						</div>
	                    </div>
	                </div>
	                <div class="row">
                        <div class="col-md-offset-2 col-md-8 text-center">
                            <h2>所有任务如下</h2>
	                    </div>
                    </div>
                </div>
            </div>
            
        </div> <!-- .site-top -->
        
<!--   <div class="choose">
  	<div class="choose_" id="take" onclick="changefid(this)">帮拿</div>
  	<div class="choose_" id="send" onclick="changefid(this)">帮送</div>
  	<div class="choose_" id="buy" onclick="changefid(this)">帮买</div>
  	<div class="choose_" id="queue" onclick="changefid(this)">帮排</div>
	<input type="button" value="发布悬赏任务" onclick="publish()">
  </div> -->

		<div class="main-posts">
			<div class="container">
<%-- 				<c:if test="${sessionScope.hasOrder==null }">
					<div class="row">
	                   <div class="col-md-offset-2 col-md-8 text-center">
	                      <h2>暂无任务可接</h2>
		               </div>
	                </div>
				</c:if> --%>

				<div class="row">
				  <div class="blog-masonry masonry-true" id="missionCard">
                        
					</div>
                </div>
            </div>
          </div>
   
   <!-- FOOTER -->
        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="social-icons">
                             <a href="h_user/personal">个人中心</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <script src="js/jquery.min.js"></script>
        <script src="js/min/plugins.min.js"></script>
        <script src="js/min/main.min.js"></script>

        <!-- Preloader -->
        <script type="text/javascript">
            //<![CDATA[
            $(window).load(function() { // makes sure the whole site is loaded
                $('#loader').fadeOut(); // will first fade out the loading animation
                    $('#loader-wrapper').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
                $('body').delay(350).css({'overflow-y':'visible'});
            })
            //]]>
        </script>
   </body>
   
           
</html>
