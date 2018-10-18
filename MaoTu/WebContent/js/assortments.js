
	
$(function(){
	$(".footer-btn").click(function(){
		$(".field-wrap").toggle(1000);
		$(".footer-btn-1").show();
		$(".footer-btn").hide();
	})
	$(".footer-btn-1").click(function(){
		$(".field-wrap").toggle(1000);
		$(".footer-btn-1").hide();
		$(".footer-btn").show();
	})
})
