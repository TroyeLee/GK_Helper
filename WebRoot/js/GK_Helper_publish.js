/**
 * 
 */


		function getAddress(){
			$.ajax({
  			url:"address/getAddress",
  			type:"GET",
  			dataType:"json",
  			success:function(data){
  				console.log(data);
  				var address_select=document.getElementById("address_select");
  			for(i in data)
  				address_select.innerHTML+="<option value='"+data[i].addressID+"'>"+
  													data[i].userName+"&nbsp;&nbsp;"+
  													data[i].phone+"&nbsp;"+
  													data[i].addressInfo+
  												"</option>";
  			}
  		})
		}
		function addressChange(){
			var as=$("#address_select option:selected");
			$.ajax({
  			url:"address/setCurrentAddress/"+as.val(),
  			type:"GET",
  			dataType:"json",
  			success:function(data){
  				setAddress(data);
  			}
  		})
		}
		function setAddress(address){
			$("#userName").attr("value",address.userName);
			$("#phone").attr("value",address.phone);
			$("#putAddress").attr("value",address.addressInfo);
/* 			
			userName.value=address.userName;
			phone.value=address.phone;
			putAddress.value=address.addressInfo; */
		}
		
		function uploadFailed(){
			alert("啊！不知道干嘛了，上传不了！要不，你再填一遍？");
		}
		
		function uploadSecceed(){
			alert("发布成功！");
			window.location.href="h_user/gotoMain";
		}
		function upload(){
			var form={};
	  		var form1=$("#form").serializeArray();
	  		var flag=0;
	  		$.each(form1, function() {
		                 form [this.name] = this.value;
		                 if(this.value=="")flag=1;
		            });
 		            console.log(form1); 
		    if(flag==1){
		    	alert("内容不能存在有空呦！");
		    	return false;
		    }
		    else{
 		    	console.log(form); 
		    	if(confirm("是否确定发布悬赏？")){
					return true;
				}
		    	else return false;
		    }
		}
		function submitOrder(order){
			var that=this;
	  		$.ajax({
	  			url:"orders/addOrder",
	  			data:order,
	  			type:"GET",
	  			dataType:"json",
	  			success:function(data){
	/* 	  			console.log(data); */
		  			var flag=data;
		  			if(flag>0){
		  				that.uploadSecceed();
		  			}
		  			else {
		  				that.uploadFailed();
	  				}
	  			}
	  		})
		}
		
		function back(){
			if(confirm("你确定？不发布了？")){
				window.location.href="h_user/gotoMain";
			}
		}
		
		
		
		$(function () {
		    bindAvatar();
		});


		function bindAvatar() {
		  console.log(2);
		     $("#avatarSlect").change(function () {
		         var obj=$("#avatarSlect")[0].files[0];
		         var fr=new FileReader();
		         fr.onload=function () {
		             $("#avatarPreview").attr('src',this.result);
		             console.log(this.result);
		             $("#avatar").val(this.result);
		    };
		    fr.readAsDataURL(obj);
		  })
		}
		