$(function(){
	var winHeight = document.documentElement.clientHeight;
	//遮罩层高度
	$(".overlay").css("height",winHeight+"px");

	//关闭窗口
	$(".close").click(function() {
		$(".form-box").css("display", "none");
		$(".overlay").css("display", "none");
	});
	
	//确认密码绑定事件
	$("#repassWord").on("blur", checkPwd(this));
	
	//确认密码绑定事件
	$("#repassWord").on("blur", checkPwd(this));
	$("#repassWord").on("blur", checkSame);

	//手机号不包含字母
	//正则表达式  查找a-z字母，
	var patt = /[a-z]/i;
	$("#telphone").blur(function() {
		//手机号中没有字母时返回 -1（表示没有查找到字母）-->result不为 -1 则表示有字母
		var result = $("#telphone").val().search(patt);
		if($("#telphone").val() == "") {
			$("#telphoneTip").html("<img src='img/zhuyi1.png' width='20px' height='20px'/>请输入手机号！");
		} else {
			//手机号中有字母 或  长度不为11时  ，输入的手机号是错误的
			if((result != -1) || ($("#telphone").val().length != 11)) {
				$("#telphoneTip").html("<img src='img/zhuyi1.png' width='20px' height='20px'/>输入格式不正确！");
			} else {
				$("#telphoneTip").html(" ");
			}
		}
	});

	//邮箱验证
	$("#email").blur(function() {
			//邮箱判断有没有'@'
			if(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($(this).val()) == false) {
				$("#emailTip").html("<img src='img/zhuyi1.png' width='20px' height='20px'/>电子邮箱格式 不正确！");
			}else{
				$("#emailTip").html(" ");
			}
	});
	
	//身份证号验证
	var regIdNo = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	$("#idCard").blur(function (){
		if(!regIdNo.test($(this).val())){ 
		  $("#idCardTip").html("<img src='img/zhuyi1.png' width='20px' height='20px'/>请正确输入身份证号!"); 
		  return false; 
		}else{
			$("#idCardTip").html(" "); 
		}
	});

});
	var n=1;
			
//function changeImage(){
//				var img2=document.getElementById("img1");
//				n++;
//				if(n>4){
//					n=1;
//				}
//				img2.src="Personal/img/banner"+n+".jpg";
//		}
//		setInterval("changeImage()",3000);

function checkUserName(userName) {
	if($(userName).val() == "") {
		$(userName).parent().parent().next().html("<img src='img/zhuyi1.png' width='20px' height='20px'/>用户名不能为空!");
	} else if($(userName).val().length < 6 || $(userName).val().length > 12) {
		$(userName).parent().parent().next().html("<img src='img/zhuyi1.png' width='20px' height='20px'/>请输入用户名为6-12位!");
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
		$(pwd).parent().parent().next().html("<img src='img/zhuyi1.png' width='20px' height='20px'/>请输入密码长度不少于6!");
	} else {
		var resultA = $(pwd).val().search(abc);
		var resultNum = $(pwd).val().search(num);
		//当有其中一个找不到的时候       提示
		if((resultA == -1) || (resultNum == -1)) {
			$(pwd).parent().parent().next().html("<img src='img/zhuyi1.png' width='20px' height='20px'/>请输入密码长度不少于6！(包含数字和字母)!");
		} else {
			$(pwd).parent().parent().next().html(" ");
		}

	}
}

//确认密码--两次是否输入一致
function checkSame() {
	if($("#password").val() != $("#repassWord").val()) {
		$("#repassWord").parent().parent().next().html("<img src='img/zhuyi1.png' width='20px' height='20px'/>*两次输入密码不一致!");
	}
}


function showRegister() {
	$(".form-register-box").slideDown();
	$(".form-register-box").css({
		"z-index": "1000"
	});
	$(".form-login-box").css({
		"display": "none",
		"z-index": "999"
	});
}
