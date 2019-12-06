/**
 * 
 */

this.getOrders();
	$(document).ready(function () {
		setInterval("getOrders()",50000);
	});
	
	function getOrders(){
//	alert("success0");
		$.ajax({
  			url:"orders/findOrders",
  			type:"GET",
  			dataType:"json",
  			success:function(data){
//  			alert("success1");
//  			console.log(data);
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
		var missionCard=document.getElementById("missionCard");
		missionCard.innerHTML="";
		for(var i=0;i<orders.length;i++){
			var html="<div class='post-masonry col-md-4 col-sm-6'>"+
            "<div class='post-thumb'>"+
                "<div class='content'>"+
                	"<p>任务类型："+orders[i].type_info+"<br><br></p>"+
                	"<p>取货地址："+orders[i].takeAddress+"<br><br></p>"+
                	"<p>送达地址："+orders[i].putAddress+"<br><br></p>"+
                	"<p>规定时间："+orders[i].orderTime+"<br><br></p>"+
                	"<p>赏金："+orders[i].money+"<br><br></p>"+
                	
                "</div>"+
                "<div class='title-over'>"+
                    "<h4>"+orders[i].orderType+"</h4>"+
                "</div>"+
                "<div class='post-hover text-center'>"+
                    "<div class='inside'>"+
                        "<i class='fa fa-plus'></i>"+
                        "<span class='date'>建立时间："+orders[i].settingTime+"</span>"+
                        "<div class='a' onclick='grapOrder("+orders[i].orderID+")' ><h4>接取任务！</h4></div>"+
                    "</div>"+
                "</div>"+
            "</div>"+
        "</div> ";
            missionCard.innerHTML+=html;
			
		}
	}
	
	
	var fid=0;
	function changefid(that){
		switch(that.id){
			case "take":this.fid=0;break;
			case "send":this.fid=1;break;
			case "buy":this.fid=2;break;
			case "queue":this.fid=3;break;
		}
		$(".choose_").css({"background-color": "rgba(0,0,0,0)"});
		$("#"+that.id).css({"background-color": "gray"});
	}
	
	function grapOrder(orderID){
		var that = this;
		if(confirm("您确定要抢吗？")){
			
			$.ajax({
	  			url:"orders/grapOrder/"+orderID,
	  			type:"GET",
	  			dataType:"json",
	  			success:function(data){
	  				console.log(data);
	  				switch(data){
	  				case 0:
	  					that.NotAHelper();
	  					break;
	  				case 1:
	  					that.HasBeanGraped();
	  					break;
	  				case 2:
	  					that.SelfsOrder();
	  					break;
	  				case 3:
	  					that.GrapFailed();
	  					break;
	  				case 4:
	  					that.GrapSucceed(orderID);
	  					break;
	  				}
	  			}
	  		})
		}
	}
	function NotAHelper(){
		if(confirm("您还不是赏金猎人，是否成为赏金猎人？")){
			location.href="h_helper/regist";
		}
		else{
			alert("那就没办法了。。");
		}
	}
	function HasBeanGraped(){
		alert("很遗憾，这个订单已经被抢了呢。。");
		
	}
	function GrapSucceed(orderID){
		
		alert("抢单成功！");
		showOrderInfo(orderID);
	}
	function GrapFailed(){
		alert("未知原因，抢单失败！");
	}
	function SelfsOrder(){
		alert("你自己的单都抢，你疯了吧？");
	}
	
	function publish(){
		location.href="orders/publish?fid="+fid;
	}
	function showOrderInfo(orderID){
		$.ajax({
  			url:"orders/getOrderInfo/"+orderID,
  			type:"GET",
  			dataType:"json",
  			success:function(data){
  				if(data >0){
  					location.href="orders/showOrderInfo";
  				}
  				else
  					alert("啊，未知错误！我也不知道怎么回事");
  			}
  		})
	}