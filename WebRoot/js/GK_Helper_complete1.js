/**
 * 
 */
getOrders();

function getOrders(){
//	alert("success0");
		$.ajax({
  			url:"orders/findComplete1",
  			type:"GET",
  			dataType:"json",
  			success:function(data){
//  			alert("success1");
  			console.log(data);
  				
  				if(data != null){
//  				alert("success2");
  					setOrders(data);
  				}
//  				else{
//				alert("没有找到id为："+id+"的用户！");}
  			}
  		})
	}
	function setOrders(orders){
		var item=document.getElementById("item");
		item.innerHTML="";
		for(var i=0;i<orders.length;i++){
			var html="<div class='item1' >" +
			"<div class='close1' onclick='showOrderInfo("+orders[i].orderID+")'>" +
			"<!-- Remove-Item --><div class='alert-close1'> </div><!-- //Remove-Item -->" ;
			if(orders[i].evidence1!=null)
				html+="<div class='image1'>" +
				"<img src='"+orders[i].evidence1+"' alt='item1'>" +
				"</div>" ;
			else
				html+="<div class='image1'>" +
				"<img src='images/profile-thum.png' alt='item1'>" +
				"</div>" ;
			if(orders[i].orderType=="帮拿"||orders[i].orderType=="帮送"||orders[i].orderType=="帮买")
			html+="<div class='title1'>" +
					"<p>"+orders[i].orderType +" "+orders[i].type_info+"</p>" +
					"</div>" +
					"<div class='title1'>" +
					"<p>取货地址："+orders[i].takeAddress+"</p>" +
					"</div>" +
					"<div class='title1'>"+
					"<p>收货地址："+orders[i].putAddress+"</p>"+
					"</div>"+
					"<div class='price1'>"+
					"<p>赏金： "+orders[i].money+"元 </p>"+
					"</div>"+
					"<div class='clear'></div>"+
					"</div><input type='button' value='确认完成' onclick='completeOrder("+orders[i].orderID+")' />"+
					"</div>";
			
			else if(orders[i].orderType=="帮排"){
				html+="<div class='title1'>" +
				"<p>"+orders[i].orderType +" "+orders[i].type_info+"</p>" +
				"</div>" +
				"<div class='title1'>" +
				"<p>排队地址："+orders[i].takeAddress+"</p>" +
				"</div>" +
				"<div class='price1'>"+
				"<p>赏金： "+orders[i].money+"元 </p>"+
				"</div>"+
				"<div class='clear'></div>"+
				"</div>/><input type='button' value='确认完成' onclick='completeOrder("+orders[i].orderID+")' />"+
				"</div>";
			}
			item.innerHTML+=html;
		}
	}
	
	function completeOrder(orderID){
		$.ajax({
  			url:"orders/completeOrder/"+orderID,
  			type:"GET",
  			dataType:"json",
  			success:function(data){
//  			alert("success1");
  			console.log(data);
  				
  				if(data >0){
//  				alert("success2");
  					getOrder()
  				}
  				else{
  					alert("未知原因，请求失败");
				}
  			}
  		})
	}
	function back(){
		location.href="h_user/personal"
	}