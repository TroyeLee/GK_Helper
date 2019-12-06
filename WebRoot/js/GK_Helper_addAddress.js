/**
 * 
 */

function confirmData(){
  	    	var that=this;
  	    	var form={};
	  		var form1=$("#form").serializeArray();
	  		var flag=0;
	  		$.each(form1, function() {
		                 form [this.name] = this.value;
		                 if(this.value=="")flag=1;
		            });
	  		if(form.phone.length!=11&&isNaN(form.phone)){
	  			alert("手机号格式不对哦！")
	  		}
		    if(flag==1){
		    	alert("内容不能存在有空呦！");
		    }
		    else{
  	    		if(confirm("是否确定提交？")){
  	    			$.ajax({
			  			url:"address/addAddress",
			  			type:"GET",
			  			dataType:"json",
			  			data:form,
			  			success:function(data){
			//  			alert("success1");
			  			console.log(data);
			  				if(data > 0){
			//  				alert("success2");
			  					that.back();
			  				}
			  				else{
								that.failed();
							} 
			  			}
			  		})
  	    		}
  	    	}
  	    }
  	    	function failed(){
  	    		alert("啊！由于不知名的原因出错啦！我也不知道怎么肥事");
  	    	}
  	    	function back(){
  	    		window.location.href="address/gotoAddress";
  	    	}