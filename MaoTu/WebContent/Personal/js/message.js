$(function(){
	$(".down").click(function(){

		$(".box-main").slideToggle();
	})
	$(".down1").click(function(){
		$(".box-main1").slideToggle();
	})
	$(".down2").click(function(){
		$(".box-main2").slideToggle();
	});
	$(".conper").click(function(){
		$(".conper").show();
		$(".con-main").show();
		$(".con-review").hide();
	});
	$(".conper1").click(function(){
		$(".conper1").show();
		$(".con-main").hide();
		$(".con-review").show();
	});
})