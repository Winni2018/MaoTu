//day night 点击之后除背景颜色发生改变
$(document).ready(function() {
	$(".light-button").click(function() {
		$("h1").toggleClass("night-color");
		$(".glyphicon").toggleClass("icon-color-light");
	});
});

