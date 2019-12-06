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
    
    <title>My JSP 'publish.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/GK_Helper_publish.css">
	<script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"  src="${pageContext.request.contextPath }/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/GK_Helper_publish.js"></script>

  </head>
  
  <body>
  <p class="name">
  	请选择地址
		<select id="address_select" onchange="addressChange()" >
		
			<option value=""></option>
			<c:if test="${sessionScope.address_session==null }">
			  	<script type="text/javascript" >
			  		getAddress();
			  	</script>
			</c:if>
			<c:if test="${sessionScope.address_session!=null }">
				<c:forEach items="${sessionScope.address_session }" var="address">
					<option value="${address.addressID }">${address.userName }&nbsp;&nbsp;${address.phone }&nbsp;${address.addressInfo }</option>
				</c:forEach>
			</c:if>
		</select>
	</p>
  	<c:if test="${fid==0 }">
	    <form action="orders/addOrder" id="form" method="post" onsubmit="return upload()" enctype="multipart/form-data" >
	    <p class="name">
	    	悬赏类型：<input type="text" name="orderType" value="帮拿" class="orderType" readonly="readonly"/><br/>
	    </p>
	    <p class="name">
	    	帮拿类型：
				<input type="radio" name="type_info" value="取快递"/>取快递
				<input type="radio" name="type_info" value="取其他"/>取其他
				<br/>
		</p>
		<p class="name">
	   		 取货地址：<input type="text" maxlength="200" name="takeAddress"/> <br>
	   	</p>
	   		 <div class="evidence">
	   		 取货凭证：
<!-- 		   		 <input id="avatar" type="text" value="" name="evidence1" style="display:none;"> -->
		   		 <div class="evidence_div">
			    	<input id="avatarSlect" type="file" name="file" multiple="multiple" class="evidence_div_input">
			    	<img id="avatarPreview" src="" title="点击更换图片" class="evidence_div_pic">
				</div>
			</div>
			<br> 

	    <p class="name">
	    	收货地址：<input type="text" name="putAddress" id="putAddress" /><br>
	    </p>
	    <p class="name">
	    	收货电话：<input type="text" name="users_phone" id="phone" /><br>
	    </p>
	    <p class="name">
	    	重量：<input type="text" name="weight" maxlength="100">公斤<br>
	    </p>
	    <p class="name">
	    	规定时间：<input type="text" name="orderTime" maxlength="60">小时<br>
	    </p>
	    <p class="name">
	    	收货人：<input type="text" name="user_name" id="userName" /><br>
	    </p>
	    <p class="name">
	    	赏金：<input type="text" name="money" />元<br>
	    </p>
	    <p class="name">
	    	备注：<input type="text" name="message" /><br>
	   	</p>
	    	<input type="submit" value="发布悬赏"/>
	    	<input type="button" value="取消" onclick="back()" />
	    </form>
	    
	</c:if>
	<c:if test="${fid==1 }">
		<form action="orders/addOrder2" id="form" method="post" onsubmit="return upload()" enctype="multipart/form-data" >
			<p class="name">
				悬赏类型：<input type="text" name="orderType" value="帮送" class="orderType" readonly="readonly"/><br/>
			</p>
	   			 取货地址：<input type="text" maxlength="200" name="takeAddress"/> <br>
	    	<p class="name">
	    		送达地址：<input type="text" name="putAddress" id="putAddress" /><br>
	    	</p>
	    		联系电话：<input type="text" name="users_phone" id="phone" /><br>
	    	<p class="name">
	    		重量：<input type="text" name="weight" maxlength="100">公斤<br>
	    	</p>
	    	<p class="name">
	    		规定时间：<input type="text" name="orderTime" maxlength="60">小时<br>
	    	</p>
	    	<p class="name">
	    		收货人：<input type="text" name="user_name" id="userName" /><br>
	    	</p>
	    	<p class="name">
	    		赏金：<input type="text" name="money" />元<br>
	    	</p>
	    	<p class="name">
	    		备注：<input type="text" name="message" /><br>
	    	</p>
	    	
	    	<input type="submit" value="发布悬赏"/>
	    	<input type="button" value="取消" onclick="back()" />
		</form>
	</c:if>
	<c:if test="${fid==2 }">
		<form action="orders/addOrder2" id="form" method="post" onsubmit="return upload()" enctype="multipart/form-data" >
		<p class="name">
				悬赏类型：<input type="text" name="orderType" value="帮买" class="orderType" readonly="readonly"/><br/>
	   		</p>
	   		<p class="name"> 
	   			 购买地址：<input type="text" maxlength="200" name="takeAddress"/> <br>
	   		</p>
	   		<p class="name">
	    		收货地址：<input type="text" name="putAddress" id="putAddress" /><br>
	    	</p>
	    	<p class="name">
	    		收货电话：<input type="text" name="users_phone" id="phone" /><br>
	    	</p>
	    	<p class="name">
	    		重量：<input type="text" name="weight" maxlength="100">公斤<br>
	    	</p>
	    	<p class="name">
	    		规定时间：<input type="text" name="orderTime" maxlength="60">小时<br>
	    	</p>
	    	<p class="name">
	    		收货人：<input type="text" name="user_name" id="userName" /><br>
	    	</p>
	    	<p class="name">
	    		赏金：<input type="text" name="money" />元<br>
	    	</p>
	    	<p class="name">
	    		备注：<input type="text" name="message" /><br>
	    	</p>
	    	<input type="submit" value="发布悬赏"/>
	    	<input type="button" value="取消" onclick="back()" />
		</form>
	</c:if>
	
	<c:if test="${fid==3 }">
		<form action="orders/addOrder2" id="form" method="post" onsubmit="return upload()" enctype="multipart/form-data">
			<p class="name">
				悬赏类型：<input type="text" name="orderType" value="帮排" class="orderType" readonly="readonly"/><br/>
			</p>
			<p class="name">
				排队类型：
				<input type="radio" name="type_info" value="图书馆占座"/>图书馆占座
				<input type="radio" name="type_info" value="医院排队"/>医院排队
				<input type="radio" name="type_info" value="缴费排队"/>缴费排队
				<input type="radio" name="type_info" value="办事排队"/>办事排队
				<br/>
			</p>
			<p class="name">
	   			排队地址：<input type="text" maxlength="200" name="takeAddress"/><br>
			</p>
			<p class="name">
	    		联系电话：<input type="text" name="users_phone" id="phone" /><br>
	    	</p>
	    	<p class="name">
	    		排队时间：<input type="text" name="orderTime" maxlength="60">小时<br>
	    	</p>
	    	<p class="name">
	    		收货人：<input type="text" name="user_name" id="userName" /><br>
	    	</p>
	    	<p class="name">
	    		赏金：<input type="text" name="money" />元<br>
	    	</p>
	    	<p class="name">
	    		备注：<input type="text" name="message" /><br>
	    	</p>
	    	<input type="submit" value="发布悬赏"/>
	    	<input type="button" value="取消" onclick="back()" />
		</form>
	</c:if>
	<c:if test="${flag==1 }">
		<script type="text/javascript">
			uploadSecceed();
		</script>
	</c:if>
	<c:if test="${flag==0 }">
		<script type="text/javascript">
			uploadFailed();
		</script>
	</c:if>
    
  </body>
</html>
