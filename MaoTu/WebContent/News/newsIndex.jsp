<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.print(basePath);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>猫途漫画</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" href="News/css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/public.css"/>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="News/css/flexible-bootstrap-carousel.css" />
		<link rel="stylesheet" type="text/css" href="News/css/styles.css" />
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="container-fluid">

			<div class="header">
				<%@include file="../header.jsp" %>
			</div>
			<div class="main">
				<div class="main container-fluid">

					<div class="section container" id="section">
						<nav class="navbar" role="navigation">
							<div class="container-fluid">
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
											<a >首页喵</a>

										</li>
										<li class="dropdown">
											<a  class="dropdown-toggle" data-toggle="dropdown">
												周边
												<span class="caret"></span>

											</a>
											<ul class="dropdown-menu nav2">
												<li>
													<a>杂谈</a>
												</li>
												<li>
													<a>杂谈</a>
												</li>
											</ul>
										</li>
										<li>
											<a>杂志</a>

										</li>

										<li>
											<a >漫画</a>

										</li>
									</ul>
								</div>
							</div>
						</nav>
					</div>

					<div class="section-1 container" id="section1">
						<div class="row">
							<div class="col-sm-12 col-md-7">

								<div id="lb" class="carousel slide" data-ride="carousel" style="width:100%" data-interval="1500">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#lb" data-slide-to="0" class="active"></li>
										<li data-target="#lb" data-slide-to="1"></li>
										<li data-target="#lb" data-slide-to="2"></li>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">
										<div class="item active" style="background:#0F0;">
											<img src="img/003.jpg" alt="美女1" style="width:100%;height: 400px;">

										</div>
										<div class="item">
											<img src="img/002.jpg" alt="美女2" style="width:100%;height: 400px;">

										</div>
										<div class="item">
											<img src="img/001.jpg" alt="美女3" style="width:100%;height: 400px;">

										</div>
									</div>

								</div>

							</div>
							<div class="seclect1-1">
								
							</div>
							<div class="col-sm-12 col-md-5">
								
								<ul class="nav nav-tabs">
									<li class="active">
										<a href="#tab1" data-toggle="tab">热点头条</a>
									</li>
									<li>
										<a href="#tab2" data-toggle="tab">本周热推</a>
									</li>
									<li>
										<a href="#tab3" data-toggle="tab">声优消息</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="tab1" class="tab-pane fade in active">
										<ul class="list-content">
											<li class="a">
												<a href="News/news.jsp?id=1"><span class="glyphicon glyphicon-fire fire-color"></span>《灌篮高手》新版漫画7-10卷封面 认真的樱木超级帅</a>
												<p>井上雄彦的经典漫画《灌篮高手》推出再编版也是让大家激动不已，近日官方公开了</p>
											</li>
											<li class="a">
												<a href="News/news.jsp?id=2"><span class="glyphicon glyphicon-fire fire-color"></span>现在世界杯正在如火如荼的进行中，星期一的丰满，也开始各种应援。</a>
												<p>之前比村乳业在电视广告中发现了中国的“乳业”同行，这次就在图中加了进来。</p>
											</li>
											<li class="a">
												<a href="News/news.jsp?id=3"><span class="glyphicon glyphicon-fire fire-color"></span>情报：81页超长连载 《妖尾》世界观？</a>
												<p>真岛浩新作《EDENS ZERO》第一话先行情报公布，从6月27日开始连载。</p>
											</li>
											<li class="a">
												<a href="News/news.jsp?id=4"><span class="glyphicon glyphicon-fire fire-color"></span>漫威大新闻：金刚狼复活！新造型酷似“金毛狮王”</a>
												<p>由Steve McNiven绘制，而狂野的全新造型非常像“金毛狮王”..</p>
											</li>
										</ul>
										
									</div>
									<div id="tab2" class="tab-pane fade">
										<ul class="list-content">
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>《东京食尸鬼》178话：激战结束 尘归尘土归土</a>
												<p>核心的死亡也带来了怪物的崩溃，而被复活（改造）的魔猿等人也回归的怀抱。</p>
											</li>
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>如何结束脚踏多条船，太宰治未完成作《Good Bye》</a>
												<p>如何结束脚踏多条船，太宰治未完成作《Good Bye》改编漫画将...</p>
											</li>
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>日本漫改真人剧美化犯罪引争议 电视台宣布停播</a>
												<p>《灌篮高手》新版漫画7-10卷封面 认真的樱木超级帅</p>
											</li>
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>“国家队”02手办官图赏析 紧身战斗服细节逆天</a>
												<p>“国家队”02手办官图赏析 紧身战斗服细节逆天</p>
											</li>
										</ul>
										
									</div>
									<div id="tab3" class="tab-pane fade">
										<ul class="list-content">
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>日漫《猫眼三姐妹》将出中国真人剧 网友求不毁童年</a>
												<p>日漫《猫眼三姐妹》将出中国真人剧 网友求不毁童年</p>
											</li>
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>吐槽：水手服和女仆装哪个更萌呢？</a>
												<p>吐槽：水手服和女仆装哪个更萌呢？</p>
											</li>
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>最受观众喜爱的电视台：敢播《银魂》的奇葩台</a>
												<p>最受观众喜爱的电视台：敢播《银魂》的奇葩台</p>
											</li>
											<li class="a">
												<a href="#"><span class="glyphicon glyphicon-fire fire-color"></span>“国家队”02手办官图赏析 紧身战斗服细节逆天</a>
												<p>“国家队”02手办官图赏析 紧身战斗服细节逆天</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
					<hr style="width: 98%;" />
					<div class="section-2 container-fluid" id="section2">
						<div class="section-1-1">
							<div class="title">
								<span>热点资讯</span>
							</div>
						<section class="examples">
							<div class="container">
								<div class="carousel-example">
									<!-- FLEXIBLE BOOTSTRAP CAROUSEL -->
									<div id="simple-content-carousel" class="carousel flexible slide" data-ride="carousel" data-wrap="true">

										<div class="items">
									                  	<%
				                                            NewsDao plnDao=new NewsDao();
				                                            Vector<News> vpln=plnDao.selectNews();
				                                            
				                                            for(int i=0;i<vpln.size();i++){
					                                         %>
										<div class="flex-item">
												<div class="col-xs-12 col-sm-12  col-md-12">
													<div class="thumbnail " class="img-responsive ">
														<time> <%=vpln.get(i).getNewsTime() %></time>
													
														<a href="News/news.jsp?id=<%=vpln.get(i).getNewsID() %>"><img src="<%=vpln.get(i).getNewsImg() %>" class="ig " /></a>
														<div class="ap">
															<p><%=vpln.get(i).getNewsTitle() %></p>

															<a href="news.html"><%=vpln.get(i).getNewsDetail() %></a>

															<hr />
															
															<div class="row">
															
																<div class="col-xs-3 col-sm-3 col-md-3">
																	<div class="img3">
																		<img src="<%=vpln.get(i).getAuthorImg() %>" style="border-radius: 50%;" />
																	</div>
																</div>
																<div class="col-xs-8 col-sm-8 col-md-8">
																	<div class="ap1">
																		<p><%=vpln.get(i).getNewsAuthor() %></p>
																	</div>
																</div>
															
															</div>

														</div>

													</div>
												</div>
											</div>
										<%} %>
											
										</div>

										<div class="carousel-inner" role="listbox">

										</div>
									</div>
									<a class="left carousel-control" href="#simple-content-carousel" role="button" data-slide="prev">
											<span class="glyphicon glyphicon-menu-left"></span>
											<span class="sr-only">Previous</span>
										</a>
										<a class="right carousel-control" href="#simple-content-carousel" role="button" data-slide="next">
											<span class="glyphicon glyphicon-menu-right"></span>
											<span class="sr-only">Next</span>
										</a>
								</div>
							</div>
						</section>

						<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
						<script src="News/js/bootstrap-select.min.js"></script>
						<script type="text/javascript" src="News/js/flexible-bootstrap-carousel.js"></script>
						<script type="text/javascript" src="News/js/script.js"></script>

					</div>
						<hr style="width:100%;" />
						<% 
			                          Vector<News> newsmajor=plnDao.selectNewsmajor();
			                          for(int i=0;i<newsmajor.size();i++){
						             %>
						<div class="section-2-1">
							<div class="row">
							
								<div class="col-sm-12 col-md-7 section-2-info">
									<a class="section-2-in" href="News/news.jsp?id=<%=newsmajor.get(i).getNewsID() %>"><h3><%=newsmajor.get(i).getNewsTitle() %></h3></a>
								<p>&nbsp;&nbsp;<%=newsmajor.get(i).getNewsDetail() %></p>
								<span>&nbsp;&nbsp;&nbsp;&nbsp;<%=newsmajor.get(i).getNewsTime() %>    <%=newsmajor.get(i).getNewsAuthor() %> </span>
								</div>
								<div class="col-sm-12 col-md-5">
									<div class="section-2-img">
										<img src="<%=newsmajor.get(i).getNewsImg() %>" class="img-responsive" />
										<span id="">
									
								</span>
									</div>
								</div>
								
							</div>
							
						</div>
						<%} %>
						<div class="section-3">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-offset-3 col-md-6">
									<ul class="pagination pagination-info page">
										<li>
											<a href="#">
												<<</a>
										</li>
										<li>
											<a href="#">1</a>
										</li>
										<li>
											<a href="news.html">2</a>
										</li>
										<li>
											<a href="#">3</a>
										</li>
										<li>
											<a href="#">4</a>
										</li>
										<li>
											<a href="#">...</a>
										</li>
										<li>
											<a href="news.html">>></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<hr style="width: 100%;" />
						<div class="words" ">
						<a href="# ">排行榜资讯</a>
					</div>
						<div class="row ">
						<% 
			                          Vector<News> newsList=plnDao.selectNewsList();
			                          for(int i=0;i<newsList.size();i++){
						             %>
					<!--卡片标本开始-->
					<div class="col-md-3 ">
						<div class="thumbnail " class="img-responsive ">
							<img src="<%=newsList.get(i).getNewsImg() %> " class="image1 "/>
							<div class="caption ">
								<p><%=newsList.get(i).getNewsTitle() %></p>
								<p>
									<a href="news.html " class="btn btn-default "><%=newsList.get(i).getNewsDetail() %></a>
									<a href="# " class="btn btn-default "><%=newsList.get(i).getNewsAuthor() %> </a>
								</p>
							</div>
						</div>
						
					</div>
					<!--卡片标本结束-->
					<%} %>
					
					<hr style="width: 100%; " />
						<div class="section-4 ">
								<div class="row text-center ">
									<div class="col-md-3 col-sm-3 col-xs-12 ">
										<img src="img/logo.png " />
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12 ">
										<h2 class="section4">本季前五</h2>
										<a  class="section4" href="# ">
											<p>《悠久持有者》</p>
										</a>
										<a  class="section4" href="# ">
											<p>《约定的梦幻岛》</p>
										</a>
										<a  class="section4" href="# ">
											<p>《Comic Girls》</p>
										</a>
										<a  class="section4" href="# ">
											<p>《夏目友人帐》</p>
										</a>
										<a  class="section4" href="# ">
											<p>《Phantom Trigger》</p>
										</a>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12 ">
										<h2 class="section4">奇葩囧闻</h2>
										<a  class="section4" href="# ">
											<p>高能！《神域GGO》</p>
										</a>
										<a  class="section4" href="# ">
											<p>《猫眼三姐妹》！</p>
										</a>
										<a  class="section4" href="# ">
											<p>《工作细胞》7日放送</p>
										</a>
										<a  class="section4" href="# ">
											<p>《末世觉醒》破2亿</p>
										</a>
										<a  class="section4" href="# ">
											<p>谁的萝莉音最好听！</p>
										</a>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12 ">
										<h2 class="section4">趣味相关</h2>
										<a  class="section4" href="# ">
											<p>动漫屋漫画</p>
										</a>
										<a  class="section4" href="# ">
											<p>斗破苍穹漫画</p>
										</a>
										<a  class="section4" href="# ">
											<p>妖精的尾巴</p>
										</a>
										<a  class="section4" href="# ">
											<p>斗罗大陆漫画</p>
										</a>
										<a  class="section4" href="# ">
											<p>绝世唐门漫画</p>
										</a>
									</div>
									
								</div>
							
						</div>
                       
					</div>

				</div>
			</div>
		</div>

		<div class="footer ">
			<%@ include file="../footer.jsp" %>
		</div>
		<div class="toTop"><a href="News/newsIndex.jsp#section"><span class="glyphicon glyphicon-menu-up"></span></a></div>
		</div>
</body>
</html>