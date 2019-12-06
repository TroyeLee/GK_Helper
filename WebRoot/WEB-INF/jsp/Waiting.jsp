<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Waiting.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->
<!-- button -->
		<link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/button/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/button/style1.css" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- Custom-Theme-Files -->
	<link rel="stylesheet" href="css/Waiting/style.css" type="text/css" media="all" />
<!-- //Custom-Theme-Files -->

<!-- Remove-Item-JavaScript -->
	<script type="text/javascript" src="js/Waiting/jquery-1.11.1.min.js"></script>
	<script type="text/javascript"  src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/GK_Helper_waiting.js"></script>

  </head>
  
  <body>
  	<h1>待接单</h1>

	<!-- Content-Starts-Here -->
	<div class="container">
		<div class="items" id="item">
			<!-- Item1-Starts-Here -->
			 <%-- <div class="item1">
				<div class="close1">
					<!-- Remove-Item --><div class="alert-close1"> </div><!-- //Remove-Item -->
					<c:if test="${sessionScope.order_session.evidence1!=null }">
						<div class="image1">
							<img src="${sessionScope.order_session.evidence1}" alt="item1">
						</div>
					</c:if>
					
					<div class="title1">
						<p>${order_session.orderType }+${order_session.type_info }</p>
					</div>
					<div class="title1">
						<p>取货地址：${order_session.orderType }+${order_session.type_info }</p>
					</div>
					<div class="title1">
						<p>收货地址：${order_session.orderType }+${order_session.type_info }</p>
					</div>
					<div class="price1">
						
						<p>赏金： ${order_session.money} </p>
					</div>
					<div class="clear"></div>
				</div>
			</div>  --%>
			
		</div>
	</div>
   <div class="container">
	<section>
		<div id="container_buttons">
			<p>
				<button onclick="back()" class="a_demo_one">
					返回
				</button>
			</p>
		</div>
	</section>
</div>
</body>
</html>
