$(function() {
//	$(".header").load("header.html");
});
$(function() {
//	$(".footer").load("footer.html");
});
$(function() {
	$(".carousel-indicators li").hover(function() {
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
//		$(this).parent().next().children(".item").addClass("active");
	},function () {
		$(this).removeClass("active");
//		$(this).parent().next().children(".item").removeClass("active").addClass("active-left");
	});
});
onscroll = function() {
	var nav = document.getElementById("nav-container");

	var st = document.documentElement.scrollTop || document.body.scrollTop;
	if(!nav.offsetWidth && st >= 300) {
		nav.style.display = 'block';
	} else if(!!nav.offsetWidth && st < 300) {
		nav.style.display = 'none';
	}

	var lbH = document.getElementById("lb").offsetHeight;
	if(st > 100 && st < lbH) {
		$(".header").css("display", "none");
	} else if(st > lbH) {
		$(".navbar-inverse").css({
			"background-color": "#000000",
			"opacity": "0.9"
		});
		$(".header").slideDown(500);
		$(".header").css({
			"position": "fixed"
		});
	} else {
		$(".navbar-inverse").css({
			"background-color": "rgba(0,0,0,0)",
			"border-color": "rgba(0,0,0,0)"
		});
		$(".header").css({
			"display": "block",
			"position": "absolute"
		});
	}
	
	//监听 -古风- 高度  ，作品依次展示
	var box3H=parseInt(document.getElementById("gf-title").offsetHeight);
	var box3T=parseInt(document.getElementById("gf-title").offsetTop);
	var box3=box3T-box3H-600;
	if(st > box3) {
			var boxArr=$(".pro-box");
			for(var i=0;i<boxArr.length;i++){
				(function (i) {
					setTimeout(function () {
						$(".pro-box").eq(i).fadeIn(900);
					},i*200);
				})(i);
			}
	}
}


function checkUserName(userName) {
	if($(userName).val() == "") {
		$(userName).parent().parent().next().html("用户名不能为空!");
	} else if($(userName).val().length < 6 || $(userName).val().length > 12) {
		$(userName).parent().parent().next().html("请输入用户名为6-12位!");
	} else {
		$(userName).parent().parent().next().html("  ");
	}
}

//判断密码中是否同时包含数字 和 字母
var abc = /[a-z]/i;
var num = /[1-9]/i;

function checkPwd(pwd) {
	//判断输入密码是否不少于6
	if($(pwd).val().length < 6) {
		$(pwd).parent().parent().next().html("请输入密码长度不少于6");
	} else {
		var resultA = $(pwd).val().search(abc);
		var resultNum = $(pwd).val().search(num);
		//当有其中一个找不到的时候       提示
		if((resultA == -1) || (resultNum == -1)) {
			$(pwd).parent().parent().next().html("请输入密码长度不少于6！(包含数字和字母)");
		} else {
			$(pwd).parent().parent().next().html(" ");
		}

	}
}