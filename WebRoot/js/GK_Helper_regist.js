/**
 * 
 */
function success(){
  			if(confirm("注册成功，是否去登陆？")){
  				location.href="h_user/login";
  			}	
  		}
  		function failed(){
  			alert("该手机号码已被绑定，请再次确认手机号码！");
  			var msg=document.getElementById("msg");
  			msg.style.display="block";
  		}
  		function confirmData(){
  			if(confirm("是否提交注册信息？")){
  		
	  			var password1=$("#h_password").val();
	  			
	  			var password2=$("#h_password2").val();
	  			var flag=0;
	  			if(password1!=password2)
	  				{
	  					flag=2;
	  				}
	  			var form={};
	  			var form1=$("#form1").serializeArray();
	  			
	  			$.each(form1, function() {
		                 form [this.name] = this.value;
		                 if(this.value=="")flag=1;
		            });
		        if($("input:radio:checked").val()==null){
		        	flag=1;
		        }
 				console.log(form1);
				console.log(form); 
				if(flag==1){
					alert("手机号、密码、姓名、昵称、性别不能为空");
				}
				if(flag==2){
					alert("密码不一致，请重新输入");
				}
	  			else {
	  				submitData(form);
	  			}
  			}
  		}
  		
  		function submitData(h_user){
  		var that=this;
  		$.ajax({
  			url:"h_user/add",
  			data:h_user,
  			type:"GET",
  			dataType:"json",
  			success:function(data){
/* 	  			console.log(data); */
	  			var flag=data;
	  			if(flag==0){
	  				that.success();
	  			}
	  			else if(flag==1){
	  				alert("未知错误！");
	  			}
	  			else if(flag==2){
	  				that.failed();
  				}
  			}
  		})
  		}
  		
  		function login(){
  			location.href="h_user/login";
  		}