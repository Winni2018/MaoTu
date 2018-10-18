$(function() {
	//$(".header").load("../header.html");
	//$(".footer").load("../footer.html");
	var winHeight = document.documentElement.clientHeight;
	$(".main-left,.main-right").css({
		"height": winHeight + "px"
	});
	$(".leftnav li a").click({
		"color": "#FF3823"
	});
	$(".navMenu").click(function() {
		var mtitle = $(this).html();
		var murl = $(this).attr("url");

	});
	//获取当前系统时间
	function getTime() {
		var datetime = new Date();
		var yy = datetime.getFullYear();
		var month = datetime.getMonth();
		var dd = datetime.getDate();
		var dateStr = yy + "-" + month + "-" + dd + "";

		var week = datetime.getDay();
		var weekStr;
		switch(week) {
			case 0:
				weekStr = "星期日";
				break;
			case 1:
				weekStr = "星期一";
				break;
			case 2:
				weekStr = "星期二";
				break;
			case 3:
				weekStr = "星期三";
				break;
			case 4:
				weekStr = "星期四";
				break;
			case 5:
				weekStr = "星期五";
				break;
			case 6:
				weekStr = "星期六";
				break;
			default:
				break;
		}
		var hh = datetime.getHours();
		var mm = datetime.getMinutes();
		var ss = datetime.getSeconds();
		var timeStr = hh + ":" + mm + ":" + ss;
		//显示在time标签中
		$("#timeDate").html(dateStr);
		$("#timeWeek").html(weekStr);
		$("#timeTime").html(timeStr);
	}
	getTime();
	setInterval(function() {
		getTime();
	}, "1000");
	
	$("#tabs").tabs("add", {
				title: "首页",
				content: getContent("mainIndex.html"),
				closable: true
			});
	
	$(".navMenu").click(function() {
		var mtitle = $(this).html();
		var murl = $(this).attr("url");
		var tabsexit = $("#tabs").tabs("exists", mtitle);
		if(!tabsexit) {
			$("#tabs").tabs("add", {
				title: mtitle,
				content: getContent(murl),
				closable: true
			});
		} else {
			$("#tabs").tabs("select", mtitle);
		}
	});

	function getContent(url) {
		return "<iframe src='" + url + "' width='100%' height='100%' frameborder='0'></iframe>";
	}
	
});