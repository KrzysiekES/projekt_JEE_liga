$(document).ready(function(){ 
	$(".naglowek ul li").hover(function(){ 
		$(this).find(".rozwijaneMenu").show(200);
	},function(){ 
		$(this).find(".rozwijaneMenu").hide(200);
	}); 
}); 