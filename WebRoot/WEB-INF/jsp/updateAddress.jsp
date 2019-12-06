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
    
    <title>My JSP 'updateAddress.jsp' starting page</title>
    
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
</head>
		<script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  	    <script type="text/javascript">
  	    	function confirmData(){
  	    		if(confirm("是否确定提交？")){
  	    			return true;
  	    		}
  	    		else return false;
  	    	}
  	    	function faild(){
  	    		alert("啊！由于不知名的原因出错啦！我也不知道怎么肥事");
  	    	}
  	    	function back(){
  	    		window.location.href="address/gotoAddress";
  	    	}
  	    </script>
  <body>
  	<div class="container">
  		<div class="row">
			<div class="col-md-4 col-md-offset-4">
			    <form action="address/updateAddress" onsubmit="return confirmData()" method="get"  class="fh5co-form animate-box" data-animate-effect="fadeIn"> 
			    	<h2>更新地址</h2> 
				    	<c:if test="${msg=='出错啦！' }">
					    	<script type="text/javascript">
					    		faild();
					    	</script>
				    	</c:if>  
			    	<div class="form-group">
						<label for="name" class="sr-only">联系人：</label>
						<input type="text" class="form-control" name="userName" maxlength="8" value="${address.userName }"  placeholder="Name" autocomplete="off">
					</div>	
					<div class="form-group">
						<label for="phone" class="sr-only">电话:</label>
						<input type="text" class="form-control" name="phone" maxlength="11" value="${address.phone }" placeholder="phone" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="addressInfo" class="sr-only">地址:</label>
						<input type="text" class="form-control" name="addressInfo" maxlength="50" value="${address.addressInfo }" placeholder="地址" autocomplete="off">
					</div>
<%-- 					
			    	联系人：<input type="text" name="userName" maxlength="8" value="${address.userName }" /><br/>
			    	电话:<input type="text" name="phone" maxlength="11" value="${address.phone }" /><br/>
			    	地址:<input type="text" name="addressInfo" maxlength="50" value="${address.addressInfo }" /><br/> 
			    	<input type="submit" value="提交修稿" />
			    	<input type="button" onclick="back()" value="返回" />--%>
			    	
			    	<div class="form-group">
						<input type="submit" value="提交修稿" class="btn btn-primary">
						<input type="button" onclick="back()" value="返回" class="btn btn-primary">
					</div>
			    </form>
			</div>
		</div>
	</div>
		<!-- Modernizr JS -->
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
  </body>
</html>
