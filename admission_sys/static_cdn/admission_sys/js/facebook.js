$(document).ready(function(){
	flag=1;
	$("#circle").click(function(){
		if(flag==1)
			{
				$("#circle").delay(300).css('height','80px');
				$("#circle").delay(300).css('width','80px');
				$("#circle").css('transition','all .2s');
				
				setTimeout(anim,100);
				
				function anim(){
				$("#circle").css('height','150px');
				$("#circle").css('width','300px');	
				$("#circle").css('border-radius','15px');
				$("#circule img").animate({marginTop:"-70px"},300);
				$(".msg").css("font-size","9px");
					
					
				$("#img1").animate({left:'11%',top:'220%'},350);
				$("#img2").animate({left:'60%',top:'220%'},350);
				$("#img3").animate({left:'-17%',top:'-37%'},350);
				$("#img4").animate({left:'32%',top:'57%'},350);
					
				}
				flag = 0;
				
				
			}
		else{
			$("#circle").css("transtion","all .2s");
			$("#circle").delay(300).css('height','260px');
			$("#circle").delay(300).css('width','460px');
			$(".msg").css("font-size","0px");
			
			setTimeout(anim,100);
			
			function anim()
			{
				$('#circle img').animate({marginTop:"0px"},200);
				$("#circle").css('height','100px');
				$("#circle").css('width','100px');
				$("#circle").css('border-radius','50px');
				
				$(".emoji").css('top','50%');
				$(".emoji").css('left','50%');
				
				flag=1;
				
			}
		}
	});
});