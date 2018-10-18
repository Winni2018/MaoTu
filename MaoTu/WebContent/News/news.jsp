<%@ page language="java" import="com.MaoTu.Dao.*,com.MaoTu.Bean.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.print(basePath);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>猫途漫画</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" href="News/css/news.css" />
		<link rel="stylesheet" type="text/css" href="css/public.css" />
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<script src="News/js/index.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>

	<% int id=Integer.parseInt(request.getParameter("id"));
			NewsDao newsDao=new NewsDao();
			News news=newsDao.selectNewsByID(id);
	%>
		<div class="container-fluid">
			<div class="header">
				<%@include file="../header.jsp" %>
			</div>
			<div class="main">
				<div class="main container-fluid">
					<div class="section">
						<nav class="navbar" role="navigation">
							<div class="container-1">
								<!--<div class="navbar-header">
									<button type="button" class="navbar-toggle navBtn border" data-toggle="collapse" data-target="#mynav">
									<span class="icon-bar bar-black"></span>
									<span class="icon-bar bar-black"></span>
									<span class="icon-bar bar-black"></span>
								</button>
								</div>-->
								<div class="collapse navbar-collapse container">
									<ul class="nav navbar-nav customNav">
										<li>
											<a href="newsIndex.html">首页喵</a>

										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">
												周边
												<span class="caret"></span>

											</a>
											<ul class="dropdown-menu nav2">
												<li>
													<a href="#">杂谈</a>
												</li>
												<li>
													<a href="#">杂谈</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="#">杂志</a>

										</li>

										<li>
											<a href="#">漫画</a>

										</li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
					<hr />
					<div class="section-1 container" id="section1">
						<div class="row">
							<div class="col-sm-12  col-md-8">
								<span class="title"><%=news.getNewsTitle() %></span>
								<span class="time-content"> &nbsp;&nbsp;&nbsp;&nbsp;发布：圣骑士.Saber &nbsp; 来源：动漫星空  &nbsp;&nbsp;时间：<%=news.getNewsTime() %> &nbsp;&nbsp; 阅读:1163 </span>

								<p class="p-content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<%=news.getDetail() %>
								</p>
								<div class="img">
									<img src="<%=news.getNewsImg() %>" width="50%" />
								</div>
								<p class="p-content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 连续杀人事件里，两位女性交警相继不幸遇害，她们的死法也颇为凄惨，凶手更是在现场留下具有象征意义的弯曲硬币，对警方发出挑衅。从1015话结尾的图透来看，很多读者非常熟悉的那位女性警官——宫本由美倒在案发现场，头部下方还有喷溅的血迹，看来她就是下一个受害者了。不过虽然前两位女警都不幸身亡，但由美身体下方画着的痕迹线并不吻合，再加上头部出血位置有些不对劲，但愿她只是被犯人电昏过去倒在那里……
								</p>
								<div class="img">
									<img src="img/3.png" width="50%" />
								</div>
								<p class="p-content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 要知道，由美的身份并非只是警视厅恋爱物语的配角，她同时还是赤井家族二哥羽田秀吉的女友。得知由美遇袭，秀吉必然会露面，而他出现在案发现场或医院后大概又会与“朗姆”嫌疑人之一的黑田兵卫相遇，主线也许便会由此展开。再加上不久之前安室透与赤井秀一在工藤家拔枪对峙，以及若狭留美和胁田兼则得知工藤新一还活着的事实，接下来的主线想必会非常劲爆。
								</p>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-4">
								<div class="box2">
									<span class="h3"><h3>名侦探柯南</h3></span>
									<img src="img/img1.jpg" class="img-responsive"/>

								</div>

								<div class="box3">
									<span class="h3">
										<h3>精彩推荐</h3>
									</span>
									<div class="card">
										<a class="car" href="#">《生化危机2：重制版》
										</a><br />
										<a>生化危机2不是瞄准射击游戏。累人的手电筒找东西模式，越肩视角瞄准射击模式，注定这又是一部失败的生化危机。真正的生化危机，是第三人称恐怖解密游戏。</a>
										<div class="info">
											<div class="info-tit">
												点赞：108 阅读：234
											</div>
											<div class="data">
												260383508 &nbsp;&nbsp;6月18日
											</div>

										</div>
									</div>

									<div class="card">
										<a class="car" href="#">腾讯游戏新服务 未成年人日消费
										</a><br />
										<a>未成年人消费500才提醒？满50就该提醒了吧</a>
										<div class="info">
											<div class="info-tit">
												点赞：108 阅读：234
											</div>
											<div class="data">
												260383508 &nbsp;&nbsp;6月18日
											</div>

										</div>
									</div>

									<div class="card">
										<a class="car" href="#">《无双大蛇3》在Switch平台
										</a><br />
										<a>&nbsp;&nbsp;为了保证流畅运行，果断做成马赛克。</a>
										<div class="info">
											<div class="info-tit">
												点赞：108 阅读：234
											</div>
											<div class="data">
												260383508 &nbsp;&nbsp;6月18日
											</div>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="section-2 container" id="section2">
						<div class="row">

							<div class="col-sm-12 col-md-12">
								<div class="box1">
									<span class="h3"><h3>热门评论</h3></span>
									<div class="row">
										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="img1">
												<img src="img/t1.png" style="border-radius: 50%;" />
											</div>

										</div>
										<div class="col-xs-9 col-sm-9 col-md-9">
											<span>漫画而已了还有什么开挂可言啊!</span><br /><br />
											<time>2016-08-21 11:17:16</time>
											<span class="comment">
												<a href="#">举报</a>
												<a href="#">分享</a>
												<a href="#">回复</a>
											</span>
										</div>
									</div>

									<hr style="width:100%;" />
									<div class="row">
										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="img1">
												<img src="img/t2.png" style="border-radius: 50%;" />
											</div>

										</div>
										<div class="col-xs-9 col-sm-9 col-md-9">
											<span>安室透估计也是全能型选手啊 送外卖也会</span><br /><br />
											<time>2016-08-02 14:17:06</time>
											<span class="comment">
												<a href="#">举报</a>
												<a href="#">分享</a>
												<a href="#">回复</a>
											</span>
										</div>
									</div>

									<hr style="width:100%;" />
									<div class="row">
										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="img1">
												<img src="img/t3.png" style="border-radius: 50%;" />
											</div>

										</div>
										<div class="col-xs-9 col-sm-9 col-md-9">
											<span>结局就是开了个豆腐店生了个儿子</span><br /><br />
											<time>2016-07-02 08:01:35</time>
											<span class="comment">
												<a href="#">举报</a>
												<a href="#">分享</a>
												<a href="#">回复</a>
											</span>
										</div>
									</div>

									<hr style="width:100%;" />
									<div class="row">
										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="img1">
												<img src="img/t4.png" style="border-radius: 50%;" />
											</div>

										</div>
										<div class="col-xs-9 col-sm-9 col-md-9">
											<span>冲啊，三角箭！走墙壁过弯！！</span><br /><br />
											<time>2016-06-21 09:15:43</time>
											<span class="comment">
												<a href="#">举报</a>
												<a href="#">分享</a>
												<a href="#">回复</a>
											</span>
										</div>
									</div>

									<hr style="width:100%;" />
									<div class="row">
										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="img1">
												<img src="img/t1.png" style="border-radius: 50%;" />
											</div>

										</div>
										<div class="col-xs-9 col-sm-9 col-md-9">
											<span>漫画而已了还有什么开挂可言啊!</span><br /><br />
											<time>2016-08-21 11:17:16</time>
											<span class="comment">
												<a href="#">举报</a>
												<a href="#">分享</a>
												<a href="#">回复</a>
											</span>
										</div>
									</div>

									<hr style="width:100%;" />
									<div class="row">
										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="img1">
												<img src="img/t2.png" style="border-radius: 50%;" />
											</div>

										</div>
										<div class="col-xs-9 col-sm-9 col-md-9">
											<span>安室透估计也是全能型选手啊 送外卖也会</span><br /><br />
											<time>2016-08-02 14:17:06</time>
											<span class="comment">
												<a href="#">举报</a>
												<a href="#">分享</a>
												<a href="#">回复</a>
											</span>
										</div>
									</div>
									<hr style="width:100%;" />
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-offset-8 col-md-4">
											<ul class="pagination pagination">
												<li>
													<a href="#">上一页</a>
												</li>
												<li>
													<a href="#">1</a>
												</li>
												<li>
													<a href="#">2</a>
												</li>
												<li>
													<a href="#">3</a>
												</li>
												<li>
													<a href="#">...</a>
												</li>
												<li>
													<a href="#">下一页</a>
												</li>
											</ul>
										</div>
									</div>
									<hr style="width:100%;" />
									<div class="mycomment">
										<div class="row">
											<div class="col-xs-3  col-sm-3 col-md-2">
												<div class="img2">
													<img src="img/t1.png" style="border-radius: 50%;" />
												</div>

											</div>
											<div class="col-xs-9 col-sm-9 col-md-9">
												<div class="textarea-box">
													<textarea class="textarea"></textarea>
													<button class="btn btn-danger btn-send">发表评论</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--<div class="section-3 container" id="section3">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12">
								<h4>可能感兴趣</h4>
								<hr style="width:100%;" />
							</div>
						</div>

						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<ul class="li">
									<li>
										<a href="#">男高中生×中年妇女的“现实人生游戏”开始！</a>
									</li>
									<li>
										<a href="#">新漫周刊第49期 一周新漫推荐(20180615期)</a>
									</li>
									<li>
										<a href="#">动漫之家招兵买马第七期（2）！程序猿在哪里？</a>
									</li>
									<li>
										<a href="#">新漫周刊第48期 一周新漫推荐(20180601期！</a>
									</li>
								</ul>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<ul class="li">
									<li>
										<a href="#">WHO正式将游戏成瘾列入精神病！6月第3周新闻汇总</a>
									</li>
									<li>
										<a href="#">男子扬言炸LL水团演出会场被捕！6月第2周新闻汇总</a>
									</li>
									<li>
										<a href="#">《碧蓝航线》为擅用舰娘等词道歉！</a>
									</li>
									<li>
										<a href="#">动漫之家招兵买马第七期！是时候签订契约了！</a>
									</li>
								</ul>
							</div>
						</div>
						
					</div>-->
				</div>
			</div>
			<div class="footer">
				<%@ include file="../footer.jsp" %>
			</div>
		</div>

	</body>

</html>