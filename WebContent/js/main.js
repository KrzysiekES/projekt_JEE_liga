$(document).ready(function(){ 
	$(".naglowek ul .menu").hover(function(){ 
		$(this).find(".rozwijaneMenu").show(200);
        $(".glowna").css("padding","85px 10px 20px 10px");
	},function(){ 
		$(this).find(".rozwijaneMenu").hide(200);
      $(".glowna").css("padding","40px 10px 20px 10px");
	}); 
  
  
  $(".hamburger").click(function(){ 
		$(".rozwijaneResponsywne").toggle(200);

	});
  
}); 