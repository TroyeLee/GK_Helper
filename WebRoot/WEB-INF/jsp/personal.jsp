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
    
    <title>My JSP 'personal.jsp' starting page</title>
    
	<link href="css/personal/style.css" rel='stylesheet' type='text/css'/>
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Easy Profile Widget Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script src="js/personal/jquery-1.11.1.min.js"></script> 
		<script src="js/personal/Chart.js"></script>
<!-- button -->
		<link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/button/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/button/style1.css" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  </head>
  
  	<script type="text/javascript"  src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"  src="js/GK_helper_personal.js"></script>
	
  
  <body>
	<h1>个人中心</h1>
	<div class="main-agile">
	<div class="profile-agileits">
		<div class="profile-top-w3l">
		</div>
		<div class="profile-bottom-w3">
			<div class="profile-bottom-w3-part1">
				<div class="profile-bottom-w3-part1-left">
					<div class="image">
						<img src="${sessionScope.h_user_session.head }" alt=" " />
					</div>
				</div>
				<div class="profile-bottom-w3-part1-right">
					<h2>${sessionScope.h_user_session.weChatName }</h2>
					<h3>${sessionScope.h_user_session.userType }</h3>
				</div>
				<div class="clear"></div>
			</div>
		<!-- 	<input type="button" value="管理地址" onclick="showAddress()" />	 -->
			<button onclick="showAddress()" class="a_demo_one">管理地址</button>
			<div class="profile-bottom-w3-part2">
				<div class="profile-bottom-w3-part2-left">
					<button onclick="gotoNotAccept1()" class="a_demo_one">接任务</button><br>
					<button onclick="gotoAccepted1()" class="a_demo_one">已接任务</button><br>
					<button onclick="gotoComplete1()" class="a_demo_one">已完成任务</button><br>
					<button onclick="gotoSelf1()" class="a_demo_one">所有任务</button><br>
<!-- 					<input type="button" value="接任务" onclick="gotoNotAccept1()" /><br>
	   				<input type="button" value="已接任务" onclick="gotoAccepted1()" /><br>
	   				<input type="button" value="已完成任务" onclick="gotoComplete1()" /><br>
	  				<input type="button" value="所有任务" onclick="gotoSelf1()" /><br> -->
				</div>
				<div class="profile-bottom-w3-part2-middle">
					<button onclick="gotoNotAccept2()" class="a_demo_one">待接单</button><br>
					<button onclick="gotoAccepted2()" class="a_demo_one">已接单</button><br>
					<button onclick="gotoComplete2()" class="a_demo_one">已完成</button><br>
					<button onclick="gotoSelf2()" class="a_demo_one">所有订单</button><br>
<!-- 					<input type="button" value="待接单" onclick="gotoNotAccept2()" /><br>
	   				<input type="button" value="已接单" onclick="gotoAccepted2()" /><br>
	  				<input type="button" value="已完成" onclick="gotoComplete2()" /><br>
	  				<input type="button" value="所有订单" onclick="gotoSelf2()" /><br> -->
				</div>
				<div class="profile-bottom-w3-part2-right">
					<button onclick="logout()" class="a_demo_one">退出登陆</button><br>
					<button onclick="regisitHelper()" class="a_demo_one">加入猎人</button>
<!-- 					<input type="button" value="退出登陆" onclick="logout()" /><br>
					<input type="button" value="加入猎人" onclick="regisitHelper()" /><br> -->
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</div>
  
<%--    <table> 
   	<tr>
   		<td>用户名：${sessionScope.h_user_session.weChatName }</td>
   	</tr>
   	<tr>
   		<td>性别：${sessionScope.h_user_session.gender }</td>
   	</tr>
   	<tr>
   		<td>手机号码:${sessionScope.h_user_session.phone }</td>
   	</tr>
   	<tr>
   		<td>用户类型：${sessionScope.h_user_session.userType }</td>
   	</tr>
   </table>
   
   
	<div id="mession">
		<input type="button" value="接任务" onclick="gotoNotAccept1()" />
	   	<input type="button" value="已接任务" onclick="gotoAccepted1()" />
	   	<input type="button" value="已完成任务" onclick="gotoComplete1()" />
	  	<input type="button" value="所有任务" onclick="gotoSelf1()" />
	</div>
	<div id="order">
	   <input type="button" value="待接单" onclick="gotoNotAccept2()" />
	   <input type="button" value="已接单" onclick="gotoAccepted2()" />
	   <input type="button" value="已完成" onclick="gotoComplete2()" />
	   <input type="button" value="所有订单" onclick="gotoSelf2()" />
	</div>
   <input type="button" value="退出登陆" onclick="logout()" />
   <input type="button" value="加入猎人" onclick="regisitHelper()" /> --%>
   
   
  </body>
</html>
