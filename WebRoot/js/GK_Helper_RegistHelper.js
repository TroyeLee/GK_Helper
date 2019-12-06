/**
 * 
 */


function upload(){
			var form={};
	  		var form1=$("#form").serializeArray();
            var filename =$("#filename").val();
//            console.log(filename);
            if(filename==null || filename==undefined || filename==''){
            	flag=1;
            }
            if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(filename)){
            	flag=2
            }
	  		var flag=0;
	  		$.each(form1, function() {
		                 form[this.name]=this.value;
		                 if(this.value=="")flag=1;
		            });
		    if(flag==1){
		    	alert("内容不能存在有空呦！");
		    }
		    else if(flag==2){
		    	alert("类型必须是图片：(。png|jpg|bmp|gif|PNG|JPG|BMP|GIF)");
		    	$("#filename").val();
		    }
		    else{
/* 		    	console.log(form); */
		    	if(confirm("是否确定加入猎人？")){
					submitSC(form);
				}
		    }
		}

function back(){
	window.location.href="h_user/personal";
}



function submitSC(helper,filename){
	var formdata=new FormData();
    $.each($("#filename")[0].files,function(i,file){formdata.append('filename',file);})
	$.ajax({
        url: 'h_helper/uploadSC',  //这里是服务器处理的代码
        type: 'post',
        contentType: false,
        processData:false,
        dataType: 'text', //返回值类型，一般设置为json、application/json
        data: formdata,
        success: function (data, status) {
        		console.log(data);
        		if(data!="0"){
        			helper['studentCard']=data;
            		submitHelper(helper);
        		}
        		
        },
         error: function (data, status, e) {
        	 console.log(data);
        	 console.log(status);
        	 console.log(e);
        } 
    });
}
function submitHelper(helper){
	console.log(helper);
	$.ajax({
        url: 'h_helper/regist',  //这里是服务器处理的代码
        type: 'get',
        dataType: 'text', //返回值类型，一般设置为json、application/json
        data: helper,
        success: function (data) {
        		console.log(data);
        		if(data<0){
        			uploadFailed();
        		}
        		else
        			uploadSecceed();
        },
         error: function (data, status, e) {
        	 console.log(data);
        	 console.log(status);
        	 console.log(e);
        } 
    });
}
function uploadFailed(){
	alert("啊！不知道干嘛了，加入不了！要不，你再填一遍？");
}

function uploadSecceed(){
	alert("加入成功！");
	window.location.href="h_user/gotoMain";
}

$(function () {
    bindAvatar();
});


function bindAvatar() {
  console.log(2);
     $("#filename").change(function () {
         var obj=$("#filename")[0].files[0];
         var fr=new FileReader();
         fr.onload=function () {
             $("#avatarPreview").attr('src',this.result);
             console.log(this.result);
             $("#avatar").val(this.result);
    };
    fr.readAsDataURL(obj);
  })
}
