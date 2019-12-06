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
    
    <title>My JSP 'login.jsp' starting page</title>
    
	  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/GK_Helper_login.css">
	

  </head>
 	 <script src="js/modernizr-2.6.2.min.js"></script>
      <script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
      <script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/GK_Helper_login.js"></script>
<!--   <script>
  	function check(){
  		var phone=$("#phone").val();
  		var h_password=$("#h_password").val();
  		if(phone==""||h_password==""){
  			$("#msg").text("账号或密码不能为空！");
  			return false;
  		}
  		return true;
  	}
  	function gotoRegist(){
  		location.href="${pageContext.request.contextPath }/h_user/gotoRegist";
  	}
  </script> -->
  
  <body class="style-2">
  
 	<span id="msg"> ${msg}</span>
  	<div class="row">
		<div class="col-md-4">
					
					<!-- Start Sign In Form -->
	<form action="${pageContext.request.contextPath }/h_user/checkHuser" method="POST" onsubmit="return check()" class="fh5co-form animate-box" data-animate-effect="fadeInLeft" >
		<h2>登陆</h2>
		<div class="form-group">
			<label for="username" class="sr-only">账号:</label>
			<input type="text" class="form-control" name="phone" id="phone" placeholder="注册电话" autocomplete="off">
		</div>
		
		<div class="form-group">
			<label for="password" class="sr-only">Password</label>
			<input type="password" class="form-control" name="h_password" id="h_password" placeholder="密码" autocomplete="off">
		</div>
<!-- 		账号:<input type="text" name="phone" id="phone"><br/> 

		密&nbsp;&nbsp;&nbsp;码:
		<input type="password" name="h_password" id="h_password" /><br/>
		<input type="submit" value="登录" />
		<input type="button" value="注册" onclick="gotoRegist()">-->
		<div class="form-group">
			<label for="remember"><input type="checkbox" id="remember"> 记住我</label>
		</div>
		<div class="form-group">
			<p>还没有注册？<a href="h_user/gotoRegist">注册</a> </p>
		</div>
		<div class="form-group">
			<input type="submit" value="登录" class="btn btn-primary">
		</div>
	</form>
	</div>
	</div>
	<%-- <a href="${pageContext.request.contextPath }/h_user/gotoRegist">注册</a> --%>
  </body>
</html>
