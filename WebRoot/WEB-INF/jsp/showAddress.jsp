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
    
    <title>My JSP 'showAddress.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/card/hipster_cards.css" rel="stylesheet"/> 
        
    <!--     Fonts and icons     -->
    <link href="css/card/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />  
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display|Raleway:700,100,400|Roboto:400,700|Playfair+Display+SC:400,700' rel='stylesheet' type='text/css'>
    <!-- <link rel="stylesheet" href="css/GK_Helper_button.css"> -->
    <!-- button -->
		<link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/button/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/button/style1.css" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .card{
            margin-bottom: 70px;
        }
        .msg{
			display:none;
		}
    </style>

  </head>
    <script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  	<script type="text/javascript" src="js/GK_Helper_address.js"></script>
  
  <body id="body">
  <div class="wrapper">       
    <div class="container">          
        <div class="masonry-container" id="tbody">
        	<c:if test="${sessionScope.address_session!=null }">
			    <c:forEach items="${sessionScope.address_session }" var="address">
		  			<div class="card-box col-md-4 col-sm-6">
		                <div class="card" data-background="color" data-color="black">                            
		                    <div class="header">
		                        <img src="images/home-1.jpg"/>
		                       
		                        <div class="social-line" data-buttons="2">
		                            <button class="btn btn-social" onclick="updateAddress(${address.addressID})">
		                                <i class="fa fa-facebook-square"></i> 修改地址
		                            </button>
		                            <button class="btn btn-social" onclick="deleteAddress(${address.addressID})">
		                                <i class="fa fa-twitter"></i> 删除地址
		                            </button>
		                        </div>
		                    </div>
		                    
		                    <div class="content">
		                        <h6 class="category">${address.phone}</h6>
		                        <h4 class="title">${address.userName}</h4>
		                        <p class="description">${address.addressInfo}</p>
		                    </div>                                           
		                </div> <!-- end card -->      
		            </div>      		
				</c:forEach>
			</c:if>
			<c:if test="${sessionScope.address_session==null }">
				<script type="text/javascript">
			  		this.getAddress();
			  	</script>
			</c:if>
		</div>	
	</div>
</div>
  
  	<div id="message" class="msg">
  		<p>您还没有设置地址</p>
  		<input type="button" onclick="addAddress()" value="添加地址">
  	</div>
  	
<%--   	<table id="table" class="addressTable" border=1>
    	<tr>
    		<td>地址ID</td>
    		<td>联系人</td>
    		<td>联系电话</td>
    		<td>地址</td>
    	</tr>
    	<tbody id="tbody">
		  	<c:if test="${sessionScope.address_session!=null }">
			    	<c:forEach items="${sessionScope.address_session }" var="address">
		    		<tr>
			    		<td>${ address.addressID}</td>
						<td>${address.userName}</td>
						<td>${address.phone}</td>
						<td>${address.addressInfo}</td>
						<td>
							<input type='button' onclick="updateAddress(${address.addressID})" value='修改地址'/>
							<input type='button' onclick="deleteAddress(${address.addressID})" value='删除地址'/>
						</td>
					</tr>
		    	</c:forEach>
		  	</c:if>
	  	  	<c:if test="${sessionScope.address_session==null }">
			  	<script type="text/javascript">
			  		this.getAddress();
			  	</script>
		    </c:if>
	    </tbody>
	</table>
	<input type="button" onclick="addAddress()" value="添加地址" />
	
	<input type="button" onclick="back()" value="返回" /> --%>
	 <div class="container">
	<section>
		<div id="container_buttons">
			<p>
				<button onclick="addAddress()" class="a_demo_one">
					添加地址
				</button>
				<button onclick="back()" class="a_demo_one">
					返回
				</button>
			</p>
		</div>
	</section>
</div>
<!-- 	<a href="address/test">test</a>
	<form action="address/test">
		<input type="submit" value="submit test" />
	</form>
	<input type="button" onclick="test()" value="button test" /> -->
	
	<script src="js/card/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/card/hipster-cards.js"></script>
	
	<!--  Just for demo	 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/3.3.1/masonry.pkgd.min.js"></script>
  </body>
</html>
