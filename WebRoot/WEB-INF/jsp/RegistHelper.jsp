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
    
    <title>My JSP 'RegistHelper.jsp' starting page</title>
    
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
	<link rel="stylesheet" type="text/css" href="css/GK_Helper_login.css">
	<link rel="stylesheet" type="text/css" href="css/GK_Helper_RegistHelper.css">
	
	<script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/GK_Helper_RegistHelper.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>
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

  </head>
  
  <body class="style-3">
  	<div class="row">
		<div class="col-md-4 col-md-push-8">
		    <form action="" id="form" method="post"  enctype="multipart/form-data" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
				<h2>加入猎人</h2>
				
				<div class="form-group">
					<label for="name" class="sr-only">电话</label>
					<input type="text" class="form-control" name="phone" placeholder="电话" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="grade" class="sr-only">年级</label>
					<input type="text" class="form-control" name="grade" placeholder="年级" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="ID" class="sr-only">身份证号：</label>
					<input type="text" class="form-control" name="ID" placeholder="身份证号" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="realName" class="sr-only">真实姓名；</label>
					<input type="text" class="form-control" name="realName" placeholder="真实姓名" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="studentID" class="sr-only">学生证号；</label>
					<input type="text" class="form-control" name="studentID" placeholder="学生证号" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="ID" class="sr-only">学生证</label>
					<div class="form-control" style="height:100px;position: relative;">
						<div class="evidence_div">
						   <input id="filename"  type="file" name="file" multiple="multiple" class="evidence_div_input">
						   <img id="avatarPreview" src="" title="请上传学生证图片" class="evidence_div_pic">
						</div>
					</div>
					
				</div>
				<div class="form-group">
					<label for="dormitory" class="sr-only">现住宿舍；</label>
					<input type="text" class="form-control" name="dormitory" placeholder="现住宿舍" autocomplete="off">
				</div>
				<div class="form-group">
					<input type="button" onclick="upload()" value="提交" class="btn btn-primary">
					<input type="button" onclick="back()" value="取消" class="btn btn-primary">
				</div>
				
				
				
		<!--     	电话：<input type="text" name="phone" /><br>
		    	年级：<input type="text" name="grade" /><br>
		    	身份证号：<input type="text" name="ID" /><br>
		    	学生证号：<input type="text" name="studentID" /><br>
		    	<div class="evidence">
			   		学生证：
				   		 <input id="avatar" type="text" value="" name="evidence1" style="display:none;">
				   		 <div class="evidence_div">
					    	<input id="filename"  type="file" name="file" multiple="multiple" class="evidence_div_input">
					    	<img id="avatarPreview" src="" title="点击更换图片" class="evidence_div_pic">
						</div>
				</div>
		    	现住宿舍：<input type="text" name="dormitory" /><br>
		    	真实姓名：<input type="text" name="realName" /><br> 
		    	<input type="button" onclick="upload()" value="提交"/>
			    <input type="button" value="取消" onclick="back()" />-->
		    </form>
		</div>
	</div>
  </body>
</html>
