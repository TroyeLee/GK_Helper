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
    
    <title>My JSP 'orderInfo.jsp' starting page</title>
  	<!-- For-Mobile-Apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="E Shop Product Details Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Android Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

<!-- Web-Fonts -->
	<link href='//fonts.googleapis.com/css?family=Raleway:400,500,600,700,300' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<!-- //Web-Fonts -->

<!-- Custom-Theme-Files -->
	<link rel="stylesheet" href="css/orderInfo/style.css" type="text/css" media="all" />
	
	

  </head>
  <script type="text/javascript">
  	function back(){
  		location.href="h_user/personal";
  	}
  </script>
  
  <body>
  <div class="content">
  	<h1>${sessionScope.order_session.orderType}</h1>
  	<div class="container">
  		<c:if test="${sessionScope.order_session.type_info!=null }">
			<h2>${sessionScope.order_session.type_info}</h2>
		</c:if>
		<div class="product">
		<c:if test="${sessionScope.order_session.evidence1!=null }">
			<div class="product-image">
				<img src="${sessionScope.order_session.evidence1}" alt="图片">
			</div>
		</c:if>
			<div class="product-info">
				<p><span>联系人：</span>${sessionScope.order_session.user_name}</p>
				<p><span>联系电话：</span>${sessionScope.order_session.users_phone}</p>
				<p><span>赏金：</span>${sessionScope.order_session.money}</p>
				<p><span>取货地址：</span>${sessionScope.order_session.takeAddress}</p>
				<p><span>送达地址：</span>${sessionScope.order_session.putAddress}</p>
				<p><span>重量：</span>${sessionScope.order_session.weight}</p>
				<p><span>规定时间：</span>${sessionScope.order_session.orderTime}</p>
				<p><span>建立时间：</span>${sessionScope.order_session.settingTime}</p>
			</div>
			<div class="clear"></div>
		</div>
		
		<div class="accordion">
			<section class="ac-container">
				<div>
					<input id="ac-1" name="accordion-1" type="checkbox" />
					<label for="ac-1">备注</label>
					<article class="ac-small">
						<p>${sessionScope.order_session.message}</p>
					</article>
				</div>
<%-- 				<c:if test="${sessionScope.order_session.helperID!=null}">
					<div>
					<input id="ac-4" name="accordion-1" type="checkbox" />
					<label for="ac-4">Shipping Info</label>
					<article class="ac-medium">
						<h3>Shipping</h3>
						<ul class="ship">
							<li class="day">4-10 Business Days</li>
							<li class="home">Free Home Delivery</li>
							<li class="cod">Cash On Delivery Available*</li>
						</ul>
					</article>
				</div>
				</c:if> --%>
				
			</section>
		</div>
		<button onclick="back()">
		返回
	</button>
	</div>
	
			
		
<%--     orderID:${sessionScope.order_session.orderID}
    <c:if test="${sessionScope.order_session.evidence1!=null }">
    	evidence1:${sessionScope.order_session.evidence1}
    	<img alt="图片" src="" width="100" height="100">
    </c:if> --%>
    </div>
  </body>
</html>
