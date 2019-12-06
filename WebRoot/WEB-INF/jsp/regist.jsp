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
    
    <title>My JSP 'regist.jsp' starting page</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

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
	<script src="js/modernizr-2.6.2.min.js"></script>

  </head>
    <script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>

  	
  	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/GK_Helper_login.js"></script>
	<script src="js/GK_Helper_regist.js"></script>
  
  <body class="style-2">
	<div class="row">
		<div class="col-md-4">
					

					<!-- Start Sign In Form -->
  
			<form action="" method="POST" id="form1" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
				<h2>注册</h2>
				<div class="form-group" id="msg" style="display:none;">
					<div class="alert alert-success" role="alert">该电话已经被注册了呢</div>
				</div>
				<div class="form-group">
					<label for="weChatName" class="sr-only">昵称</label>
					<input type="text" class="form-control" name="weChatName" maxlength="25" placeholder="昵称" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="realName" class="sr-only">真实姓名</label>
					<input type="text" class="form-control" name="realName" maxlength="25" placeholder="真实姓名" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="phone" class="sr-only">电话</label>
					<input type="text" class="form-control" name="phone" maxlength="11" placeholder="电话号码" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="password" class="sr-only">Password</label>
					<input type="password" class="form-control" name="h_password" id="h_password" maxlength="25" placeholder="密码" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="re-password" class="sr-only">确认密码</label>
					<input type="password" class="form-control" name="h_password2"  id="h_password2" maxlength="25" placeholder="确认密码" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="remember">
					性别
						<input type="radio" name="gender" value="男"/>男
						<input type="radio" name="gender" value="女"/>女<br/>
					</label>
				</div>
				<div class="form-group">
					<p>您已经注册了？ <a href="h_user/login">登陆</a></p>
				</div>
				<div class="form-group">
					<input type="button" value="注册" onclick="confirmData()" class="btn btn-primary">
				</div>
<!-- 				电&nbsp;&nbsp;&nbsp;话:
				<input type="text" name="phone" maxlength="11"><br/> 
 				密&nbsp;&nbsp;&nbsp;码:
				<input type="password" name="h_password" id="h_password" maxlength="25"/><br/>
				确认&nbsp;密码:
				<input type="password" name="h_password2"  id="h_password2" maxlength="25"/><br/> 
 				昵&nbsp;&nbsp;&nbsp;称:
				<input type="text" name="weChatName" maxlength="25"/><br/> 
				真实&nbsp;姓名:
				<input type="text" name="realName" maxlength="25"/><br/> 
				性&nbsp;&nbsp;&nbsp;别:
				<input type="radio" name="gender" value="男"/>男
				<input type="radio" name="gender" value="女"/>女<br/>
				<input type="button"  value="注册" onclick="confirmData()"/>
				<input type="button"  value="登陆" onclick="login()"/> -->
			</form>
	
		</div>
	</div>
  </body>
</html>
