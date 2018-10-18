<%@ page language="java" import="com.MaoTu.Dao.*,com.MaoTu.Bean.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.print(basePath);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh" class="no-js">

	<% int id=Integer.parseInt(request.getParameter("id"));
	ProductionDao proDao=new ProductionDao();
	Production pro=proDao.selectproByID(id);
	
	CommentDao comDao=new CommentDao();
	Vector<Comment> vcom=comDao.selectCommentByID(id);
	%>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><%=pro.getProName() %>-猫途漫画</title>
		<base href="<%=basePath%>">
		<script src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<script src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/public.css" />
		<link rel="stylesheet" href="Production/css/style.css">
		
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			onscroll = function() {

				var st = document.documentElement.scrollTop || document.body.scrollTop;
				var lbH = document.getElementById("cd-intro").offsetHeight;
				if(st > 100 && st < lbH) {
					$(".header").css("display", "none");
				} else if(st > lbH) {
					$(".navbar-inverse").css({
						"background-color": "rgba(0,0,0,0.9)",
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
			}
		</script>

	</head>

	<body>
	
		<div class="container-fluid">

			<!--头部导航-->
			<div class="header">
				<%@include file="../header.jsp" %>
			</div>

			<!--轮播特效-->
			<section id="cd-intro">
				<div id="cd-intro-background"></div>
				<div id="cd-intro-tagline">

					<!--特效里面的文字-->
					<img class="img-rounded" style="width: 200px;" src="<%=pro.getProImg() %>" />
					<h1><%=pro.getProName() %><small>（<%=pro.getUsers().getNickName() %>）</small></h1>
				</div>
			</section>

			<!--底下-->
			<main class="cd-content">
				<div class="cd-container">

					<div class="tabbable">
						<!-- Only required for left/right tabs -->
						<ul class="nav nav-tabs">
							<li class="active title">
								<a href="#tab0" data-toggle="tab">作品介绍</a>
							</li>
							<li class="title">
								<a href="#tab1" data-toggle="tab">作品章节</a>
							</li>
							<li class="title">
								<a href="#tab2" data-toggle="tab">发表评论</a>
							</li>
							<li class="title">
								<a href="#tab3" data-toggle="tab">评论精华</a>
							</li>
						</ul>
						<div class="tab-content">
							<!--作品介绍-->
							<div class="tab-pane active row" id="tab0">
								<div class="col-md-8 prointro">
									<div class="pro-info">
										<p><%=pro.getProIntroduce() %></p>
									</div>

								</div>
								<div class="col-md-4 author">
									<div class="toptop">
										<div class="row">
											<a href="#"><img src="<%=pro.getUsers().getUserPic() %>" class="thumbnail col-md-3 col-md-offset-1"></a>
											<div class="thumbnail-right col-xs-8 col-sm-8 col-md-8">
												<p id="author"><%=pro.getUsers().getNickName() %></p>
												<dl>
													<dt>签约作者</dt>
													<dd>作品数：2</dd>

												</dl>

											</div>
										</div>
									</div>

									<div class="notice">
										<h4>作者公告</h4>
										<p>进入完结倒计时~</p>
									</div>
								</div>
								<div class="works-intro-active ">
									<a href="Production/Reading-interface.html" class="btn btn-read">
										开始阅读
									</a>
									<div class="like-container">
										<div class="circle circle-1 like">
											<span class="glyphicon glyphicon-heart-empty">
													
													</span>
										</div>
										<div class="circle circle-2 like">
											<span class="glyphicon glyphicon-thumbs-up">
													
											</span>
										</div>
									</div>
								</div>

							</div>
							<!--作品章节-->
							<div class="tab-pane" id="tab1">
								<!--<p>I'm in Section 1.</p>-->
								<ul class="row">
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>001话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>002话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>003话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>004话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>005话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>006话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>007话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>008话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>009话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>010话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>011话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>012话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>013话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>014话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>015话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>016话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>017话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>018话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>019话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>020话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>021话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>022话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>023话</a>
									</li>
									<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
										<a>024话</a>
									</li>

								</ul>
								<div class="page col-xs-12 col-sm-12 col-md-6 col-sm-offset-3 col-md-offset-4">
									<ul class="pagination">

										<li>
											<a href="#">
												<<</a>
										</li>
										<li>
											<a href="#">1-20话</a>
										</li>
										<li>
											<a href="#" class="n-hidden more">...</a>

										</li>
										<li>
											<a href="#" class="n-hidden">最新20话</a>
										</li>
										<li>
											<a href="#">>></a>
										</li>
									</ul>
									<div class="pop">
										<ul>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>
											<li>
												<a>第一话</a>
											</li>

										</ul>

									</div>
								</div>

							</div>

							<div class="tab-pane" id="tab2">
								<!--<p>Howdy, I'm in Section 2.</p>-->
								<div class="comment-control-write">
									<div class="comment-write-title">
										<input id="ta_comment_title_post" maxlength="30" placeholder="来个标题更有爱">

									</div>
									<div class="comment-write">
										<input class="textarea" maxlength="255" placeholder="我得来说两句">

									</div>
									<div class="row">
										<div class="comment-write-assist col-xs-offset-10 col-sm-offset-10 col-md-offset-10">

											<button class="btn btn-sent">发 表</button>
										</div>
									</div>

								</div>
							</div>

							<div class="tab-pane" id="tab3">
								<!--<p>Howdy, I'm in Section 3.</p>-->
								<div class="commen-con ">
									<div class="clearfix ">
										<span class="ui-left ">小伙伴共发了 <em>189859</em> 条话题</span>
									</div>
								</div>
								<div class="comment-list-content-writes ">
								<% for(int i=0;i<vcom.size();i++){ %>
									<div class="comment-list-content-wr ">
										<div class="row ">

											<div class="col-xs-4 col-sm-3 col-md-2  user-head ">
												<img class="img-circle " src="<%=vcom.get(i).getUsers().getUserPic() %> " />
											</div>
											<div class="col-xs-8 col-sm-8 col-md-10 ">
												<div class="user-name">
													<%=vcom.get(i).getUsers().getNickName() %>
												</div>
												<div class="user-content ">
													<%=vcom.get(i).getCommentDetail() %>
												</div>
												<div class="row ">
													<div class="col-xs-12 col-sm-11 col-md-11 ">
														<div class="comment-remark ">
															<!--<a class="topic-btn-reply ">回复</a>-->
															<a class="comment-btn-zan ">赞</a>
															<span class="comment-divide "></span>
															<span class="comment-time ">来自安卓版</span>
															<span class="comment-time "><%=vcom.get(i).getCommentTime() %></span>
														</div>
													</div>
												</div>
											</div>

										</div>

									</div>
								<%} %>

								</div>
							</div>

						</div>
					</div>

				</div>
			</main>
			<div class="recommend col-xs-12 col-sm-12 col-md-12">
			<%
						ProductionDao plnDao=new ProductionDao();
						Vector<Production> vpln=plnDao.selectLunBo();
						%>
				<div class="page-header col-md-10 col-md-offset-1">
					<h1>热门漫画 <small>同类推荐</small></h1>
				</div>
				<div class="thumbnail-product col-md-10 col-md-offset-1">
				<% for(int i=0;i<vpln.size();i++){ %>
					<div class="container-main">
						<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 box">
							<div class="thumbnail thumbnail-box">
								<img src="<%=vpln.get(i).getProImg() %>" />
								<a href=""><%=vpln.get(i).getProName() %></a>
							</div>
						</div>
					</div>
					<%} %>
					
				</div>
			</div>

			<!--尾部-->
			<div class="footer ">
				<%@ include file="../footer.jsp" %>

			</div>

		</div>

		<!-- cd-content -->
		<script src="Production/js/jquery-1.11.0.min.js"></script>
		<script src="Production/js/index-main.js"></script>
		<!-- Resource jQuery -->
	</body>

</html>