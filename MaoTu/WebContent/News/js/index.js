$(function() {
//	$(".header").load("../header.html");
	$(".footer").load("../footer.html");
});
$(function(){
	$(".image1").mouseover(function() {
		$(this).attr("src", "img/004.jpg");
	});
	$(".image1").mouseout(function() {
		$(this).attr("src", "img/001.jpg");
	});
	$(".image2").mouseover(function() {
		$(this).attr("src", "img/003.jpg");
	});
	$(".image2").mouseout(function() {
		$(this).attr("src", "img/002.jpg");
	});
	$(".image3").mouseover(function() {
		$(this).attr("src", "img/001.jpg");
	});
	$(".image3").mouseout(function() {
		$(this).attr("src", "img/002.jpg");
	});
	$(".image4").mouseover(function() {
		$(this).attr("src", "img/003.jpg");
	});
	$(".image4").mouseout(function() {
		$(this).attr("src", "img/004.jpg");
	});
});
