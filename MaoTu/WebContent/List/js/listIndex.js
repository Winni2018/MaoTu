$(function() {
//	$(".header").load("../header.html");
//	$(".footer").load("../footer.html");

	$(".icon-tips").click(function () {
		$(this).toggleClass("icon-tips-active");
	});
	$(".icon-tips").hover(function () {
		$(this).toggleClass("icon-tips-active");
	});
	
	var imgH=document.getElementById("pro-img").offsetHeight;
	$(".pro-info").css({
		"height":imgH+"px"
	});
});
