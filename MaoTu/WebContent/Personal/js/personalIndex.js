$(function() {
	$(".right").load("Personal/reader.jsp");
	$("#reader").click(function() {
		$(this).toggleClass("select-active");
		$("#writer").toggleClass("select-active");

	});
	$("#writer").click(function() {
		$(this).toggleClass("select-active");
		$("#reader").toggleClass("select-active");
	});
	$("#writer").click(function() {
		$(".box1").show();
		$(".box").hide();
	});
	$("#reader").click(function() {
		$(".box").show();
		$(".box1").hide();
	});
	$("#reader").click(function() {
		$(".right").load("Personal/reader.jsp", function() {
			$(".right-top").slideDown(1000);

			setTimeout(function() {
				$(".right-main").slideDown(1000);
			}, 1000);
		});
	});

	$("#writer").click(function() {
		$(".right").load("Personal/writer.jsp", function() {

			$(".right-top1").fadeIn(1000);
			$(".right-main1").fadeIn(1000);
			
		});
	});
	$(".mess").click(function() {
		$(this).addClass("style2");
		
		$(".right").load("Personal/message.jsp",function(){
			$(".down").click(function(){
				$(this).siblings(".up").show();
				$(this).hide();
				$(this).parent().parent().next().next().slideDown();
			});
			$(".up").click(function(){
				$(this).siblings(".down").show();
				$(this).hide();
				$(this).parent().parent().next().next().slideUp();
			});
			$(".img-con4").mouseover(function(){
				$(this).children().eq(0).hide();
				$(this).children().eq(1).show();
			});
			$(".img-con4").mouseout(function(){
				$(this).children().eq(1).hide();
				$(this).children().eq(0).show();
			});
			$(".img-con4").click(function(){
				$(this).siblings(".img-con3").children().eq(2).show();
				$(this).siblings(".img-con3").children().eq(2).children().eq(2).click(function(){
					$(this).parent().parent().parent().hide();
				});
				$(this).siblings(".img-con3").children().eq(2).children().eq(3).click(function(){
					$(this).parent().hide();
				});
				$(this).siblings(".img-con3").children().eq(2).children().eq(0).click(function(){
				$(this).parent().hide();
				
				});
			});
			
		});
	});
	$(".collect").click(function() {
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/collect.jsp",function(){
			$(".box-shoucang").click(function(){
				$(this).parent().siblings(".tanchuang").show();
				$(this).parent().siblings(".tanchuang").children().eq(2).click(function(){
					$(this).parent().parent().hide();
				});
				$(this).parent().siblings(".tanchuang").children().eq(3).click(function(){
					$(this).parent().hide();
				});
				$(this).parent().siblings(".tanchuang").children().eq(0).click(function(){
					$(this).parent().hide();
				});
			})
		});
	});
	$(".dingyue").click(function() {
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".collect").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/dingyue.jsp");
	});
	$(".record").click(function() {
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".collect").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/record.jsp",function(){
			$(".zhifubao").click(function(){
				$(this).toggleClass("style");
				$(".weixin").toggleClass("style");
			});
			$(".weixin").click(function(){
				$(this).toggleClass("style");
				$(".zhifubao").toggleClass("style");
			});
			$(".month-pay1").click(function(){
				$(this).addClass("style");
				$(".month-pay2").removeClass("style");
				$(".month-pay3").removeClass("style");
			});
			$(".month-pay2").click(function(){
				$(this).addClass("style");
				$(".month-pay1").removeClass("style");
				$(".month-pay3").removeClass("style");
			});
			$(".month-pay3").click(function(){
				$(this).addClass("style");
				$(".month-pay2").removeClass("style");
				$(".month-pay1").removeClass("style");
			});
		});
	});
	$(".set").click(function() {
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".collect").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/account.jsp", function() {
			$(".myFileUpload").change(function() {
				var arrs = $(this).val().split('\\');
				var filename = arrs[arrs.length - 1];
				$(".show").html(filename);
			});
		});
	});
	$(".works").click(function() {
	$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".collect").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/works.jsp", function() {
		
		});

	});
	$(".review").click(function(){
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".collect").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/active.jsp");
	});
	$(".upload").click(function(){
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".collect").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/upload.jsp");
	});
	$(".author").click(function(){
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".set1").removeClass("style2");
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".collect").removeClass("style2");
	
		$(".right").load("Personal/author.jsp");
	});
	$(".set1").click(function(){
		
		$(this).addClass("style2");
		$(".mess").removeClass("style2");
		$(".dingyue").removeClass("style2");
		$(".record").removeClass("style2");
		$(".set").removeClass("style2");
		$(".collect").removeClass("style2");
		
		$(".works").removeClass("style2");
		$(".upload").removeClass("style2");
		$(".review").removeClass("style2");
		$(".author").removeClass("style2");
		$(".right").load("Personal/news.jsp");
	})
})