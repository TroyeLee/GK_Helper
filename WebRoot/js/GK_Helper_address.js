/**
 * 
 */
function getAddress(){
//	alert("success0");
		$.ajax({
  			url:"address/getAddress",
  			type:"GET",
  			dataType:"json",
  			success:function(data){
//  			alert("success1");
  			console.log(data);
  				if(data != null){
//  				alert("success2");
  					setAddress(data);
  				}
  				else{
					setMessage();
				} 
  			}
  		})
	}
	function setAddress(address){
		var tbody=document.getElementById("tbody");
		tbody.innerHTML="";
		for(let i in address){
			
			var html=
				"<div class='card-box col-md-4 col-sm-6'>"+
            "<div class='card' data-background='color' data-color='black'>"+                           
            "<div class='header'>" +
                "<img src='images/home-1.jpg'/>"+
               
                "<div class='social-line' data-buttons='2'>"+
                    "<button class='btn btn-social' onclick='updateAddress("+address[i].addressID+")'>"+
                       " <i class='fa fa-facebook-square'></i> 修改地址"+
                    "</button>"+
                    "<button class='btn btn-social' onclick='deleteAddress("+address[i].addressID+")'>"+
                        "<i class='fa fa-twitter'></i> 删除地址"+
                    "</button>"+
                "</div>"+
            "</div>"+
            
            "<div class='content'>"+
               " <h6 class='category'>"+address[i].phone+"</h6>"+
                "<h4 class='title'>"+address[i].userName+"</h4>"+
               " <p class='description'>"+address[i].addressInfo+"</p>"+
            "</div>                 "                          +
        "</div> <!-- end card -->     " +
   " </div> ";
			tbody.innerHTML+=html;
		} 
	}
	function setMessage(){
		var msg=document.getElementById("message");
		var table=document.getElementById("table");
		msg.style.display="block";
		table.style.display="none";
	}
	function updateAddress(addressID){
/* 	alert(addressID); */
		$.ajax({
  			url:"address/setCurrentAddress/"+addressID,
  			type:"GET",
  			dataType:"json",
  			success:function(data){
  				console.log(data);
  				window.location.href="address/gotoUpdate";
  			}
  		})
	}
	function deleteAddress(addressID){
	if(confirm("是否删除此条地址？")){
	$.ajax({
  			url:"address/deleteAddress/"+addressID,
  			type:"GET",
  			dataType:"json",
  			success:function(data){
//  			alert("success1");
  			console.log(data);
  				if(data !=null){
//  				alert("success2");
					setAddress(data);
  				}
  				else{
					setMessage();
				} 
  			}
  		})
  		}
	}
	function addAddress(){
		window.location.href="address/gotoAdd"
		
	}
	function back(){
		window.location.href="h_user/personal"
	}