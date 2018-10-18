<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.print(basePath);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>猫途漫画</title>
		<base href="<%=basePath%>">
		<link rel="icon" type="image/x-icon" href="img/icon.png" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/public.css" />
		<link rel="stylesheet" href="css/index.css" />
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body data-spy="scroll" data-target="#nav-container" data-offset="20">
		<div class="container-fluid">
			<div class="header">
				<%@include file="header.jsp" %>
			</div>

			<div class="main top">
				<!--轮播开始-->
				<div class="container-fluid lb">
					<div id="lb" class="carousel slide" data-ride="carousel" style="width:100%" data-interval="2000">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<%
						ProductionDao plnDao=new ProductionDao();
						Vector<Production> vpln=plnDao.selectLunBo();
						%>
							<li data-target="#lb" data-slide-to="0" class="active">
								<a href="Production/productionIndex.jsp?id=<%= vpln.get(0).getProID() %>">
									<div class="tit">
										<%= vpln.get(0).getProName() %>
									</div>
									<div class="txt">
										<%= vpln.get(0).getProIntroduce() %>
									</div>
								</a>
							</li>
							<% for(int i=1;i<vpln.size();i++){ %>
							<li data-target="#lb" data-slide-to="<%=i %>">
								<a href="Production/productionIndex.jsp?id=<%= vpln.get(i).getProID() %>">
									<div class="tit">
										<%= vpln.get(i).getProName() %>
									</div>
									<div class="txt">
										<%= vpln.get(i).getProIntroduce() %>
									</div>
								</a>
							</li>

							<%} %>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active" style="background:#fff;">
								<img src="<%= vpln.get(0).getShowImg() %>" alt="" width="100%">

							</div>
							<% for(int i=1;i<vpln.size();i++){ %>
							<div class="item">
								<img src="<%= vpln.get(i).getShowImg() %>" alt="" width="100%">

							</div>
							<%} %>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#lb" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#lb" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<!--轮播结束-->

				<div class="container page1" id="text">

					<!--人气推荐开始-->
					<div id="box1" class="flowUp">
						<p class="p1"><img src="img/longmao.png">
							<font>人气推荐</font>
						</p>
						<div class="recommend">
							<%Vector<Production> Recommend=plnDao.selectRecommend();%>
							<div class="row">
								<div class="col-xs-12 col-sm-7 col-md-7 row1">
									<div class="picture1">
										<img src="<%=Recommend.get(0).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Recommend.get(0).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Recommend.get(0).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Recommend.get(0).getProName() %></h3>
													<p>作 者:
														<%=Recommend.get(0).getUsers().getNickName() %>
													</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(0).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
								<div class="col-xs-12 col-sm-5 col-md-5 row1">
									<div class="picture2">
										<img src="<%=Recommend.get(1).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Recommend.get(1).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Recommend.get(1).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Recommend.get(1).getProName() %></h3>
													<p>作 者:
														<%=Recommend.get(1).getUsers().getNickName() %>
													</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(1).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
								<div class="col-xs-12 col-sm-5 col-md-5 row1">
									<div class="picture3">
										<img src="<%=Recommend.get(2).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Recommend.get(2).getProID() %>">
											<div class="mb-text">

												<font>
													<%=Recommend.get(2).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Recommend.get(2).getProName() %></h3>
													<p>原 作:
														<%=Recommend.get(2).getUsers().getNickName() %>
													</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(2).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
								<div class="col-xs-12 col-sm-7 col-md-7 row1">
									<div class="picture4">
										<img src="<%=Recommend.get(3).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Recommend.get(3).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Recommend.get(3).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Recommend.get(3).getProName() %></h3>
													<p>原 作:
														<%=Recommend.get(3).getUsers().getNickName() %>
													</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(3).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
							</div>

							<p class="p-footer">
								<a href="assortments.jsp">更多></a>
							</p>
						</div>

					</div>
					<!--人气推荐结束-->
					<!--最新佳作开始-->
					<div id="box2" class="flowUp">

						<p class="p1"><img src="img/longmao.png">
							<font>最新佳作</font>
						</p>

						<div class="recommend">
							<%Vector<Production> Update=plnDao.selectRecommend();%>
							<div class="row">
								<div class="col-xs-12 col-sm-7 col-md-7 row1">
									<div class="picture1">
										<img src="<%=Update.get(0).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Update.get(0).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Update.get(0).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Update.get(0).getProName() %></h3>
													<p>原 作:语笑阑珊</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(0).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
								<div class="col-xs-12 col-sm-5 col-md-5 row1">
									<div class="picture2">
										<img src="<%=Update.get(1).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Update.get(1).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Update.get(1).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Update.get(1).getProName() %></h3>
													<p>原 作:语笑阑珊</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(1).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
								<div class="col-xs-12 col-sm-5 col-md-5 row1">
									<div class="picture3">
										<img src="<%=Update.get(2).getShowImg() %>" />
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Update.get(2).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Update.get(2).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Update.get(2).getProName() %></h3>
													<p>原 作:语笑阑珊</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(2).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
								<div class="col-xs-12 col-sm-7 col-md-7 row1">
									<div class="picture4">
										<img src="<%=Update.get(3).getShowImg() %>" /></a>
										<div class="mb">

										</div>
										<a href="Production/productionIndex.jsp?id=<%=Update.get(3).getProID() %>">
											<div class="mb-text">
												<font>
													<%=Update.get(3).getProName() %><i class="glyphicon glyphicon-menu-right"></i></font>
												<div class="mb-text-detali">
													<h3><%=Update.get(3).getProName() %></h3>
													<p>原 作:语笑阑珊</p>
													<p>更 新:一百八十回 回顾</p>
													<p> 简 介：
														<%=Recommend.get(3).getProIntroduce() %>
													</p>
												</div>

											</div>
										</a>
									</div>
								</div>
							</div>

							<p class="p-footer">
								<a href="assortments.jsp">更多></a>
							</p>
						</div>

					</div>
					<!--最新佳作结束-->
					<!--古风开始-->
					<div id="box3" class="flowUp" data-rotate-x="180deg" data-rotate-y="180deg" data-move-z="-700px">
						<p class="p1" id="gf-title"><img src="img/longmao.png">
							<font>古风</font>
						</p>
						<div class="container-fluid">
							<div class="row">
								<%
							Vector<Production> Production1=plnDao.selectProduction();
							for(int i=0;i<Production1.size();i++){
							%>
								<div class="col-xs-6 col-sm-4 col-md-2 pro-box">
									<div class="thumbnail box-img">
										<div class="box-img-1">
											<img class="img-fixed" src="<%=Production1.get(i).getProImg() %>" />
											<div class="mb1">
												<div class="img-header">
													<img src="<%=Production1.get(i).getProImg() %>" />
												</div>
												<div class="img-content">
													<p>
														<%=Production1.get(i).getProName() %>
													</p>
													<span>作者：有只饺子</span><br />
													<span><i class="glyphicon glyphicon-fire"></i>最新 第二十四章 生意</span><br />
													<span class="introduct"><%=Production1.get(i).getProIntroduce() %></span>
												</div>
												<div class="img-btn">
													<a href="Production/productionIndex.jsp?id=<%=Production1.get(i).getProID() %>"><button class="btn btn-block btn-danger">开始阅读</button></a>
												</div>
											</div>
										</div>
										<div class="caption1">
											<p>
												<%=Production1.get(i).getProName() %>
											</p>
											<span>更新至 第二十四回</span>

										</div>
										<div class="classify">
											<p>古风</p>
										</div>
									</div>
								</div>
								<%} %>
								<p class="p-footer">
									<a href="assortments.jsp">更多></a>
								</p>
							</div>
						</div>

					</div>
					<!--古风结束-->
					<!--日漫开始-->
					<div id="box4" class="flowUp">
						<p class="p1 pro-box"><img src="img/longmao.png">
							<font>日漫</font>
						</p>
						<div class="container-fluid">
							<div class="row">
								<%
							Vector<Production> Production2=plnDao.selectProduction2();
							for(int i=0;i<Production2.size();i++){
							%>
								<div class="col-xs-6 col-sm-4 col-md-2 pro-box">
									<div class="thumbnail box-img">
										<div class="box-img-1">
											<img class="img-fixed" src="<%=Production2.get(i).getProImg() %>" />
											<div class="mb1">
												<div class="img-header">
													<img src="<%=Production2.get(i).getProImg() %>" />
												</div>
												<div class="img-content">
													<p>
														<%=Production2.get(i).getProName() %>
													</p>
													<span>作者：有只饺子</span><br />
													<span><i class="glyphicon glyphicon-fire"></i>最新 第二十四章 生意</span><br />
													<span class="introduct"><%=Production2.get(i).getProIntroduce() %></span>
												</div>
												<div class="img-btn">
													<a href="Production/productionIndex.jsp?id=<%=Production2.get(i).getProID() %>"><button class="btn btn-block btn-danger">开始阅读</button></a>
												</div>

											</div>
										</div>
										<div class="caption1">
											<p>
												<%=Production2.get(i).getProName() %>
											</p>
											<span>更新至 第二十四回</span>

										</div>
										<div class="classify">
											<p>日漫</p>
										</div>
									</div>
								</div>
								<%} %>

								<p class="p-footer">
									<a href="assortments.jsp">更多></a>
								</p>
							</div>
						</div>

					</div>
					<!--日漫结束-->
					<!--热血开始-->
					<div id="box5" class="flowUp ">
						<p class="p1 pro-box"><img src="img/longmao.png">
							<font>热血</font>
						</p>
						<div class="container-fluid">
							<div class="row">
								<%
							for(int i=0;i<Production2.size();i++){
							%>
								<div class="col-xs-6 col-sm-4 col-md-2 pro-box">
									<div class="thumbnail box-img">
										<div class="box-img-1">
											<img class="img-fixed" src="<%=Production2.get(i).getProImg() %>" />
											<div class="mb1">
												<div class="img-header">
													<img src="<%=Production2.get(i).getProImg() %>" />
												</div>
												<div class="img-content">
													<p>
														<%=Production2.get(i).getProName() %>
													</p>
													<span>作者：有只饺子</span><br />
													<span><i class="glyphicon glyphicon-fire"></i>最新 第二十四章 生意</span><br />
													<span class="introduct"><%=Production2.get(i).getProIntroduce() %></span>
												</div>
												<div class="img-btn">
													<a href="Production/productionIndex.jsp?id=<%=Production2.get(i).getProID() %>"><button class="btn btn-block btn-danger">开始阅读</button></a>
												</div>

											</div>
										</div>
										<div class="caption1">
											<p>
												<%=Production2.get(i).getProName() %>
											</p>
											<span>更新至 第二十四回</span>

										</div>
										<div class="classify">
											<p>热血</p>
										</div>
									</div>

								</div>
								<%} %>

								<p class="p-footer">
									<a href="assortments.jsp">更多></a>
								</p>
							</div>
						</div>

					</div>
					<!--热血结束-->
					<!--搞笑开始-->
					<div id="box6" class="flowUp">
						<p class="p1 pro-box"><img src="img/longmao.png">
							<font>搞笑</font>
						</p>
						<div class="container-fluid">
							<div class="row">
								<%
							for(int i=0;i<Production1.size();i++){
							%>
								<div class="col-xs-6 col-sm-4 col-md-2 pro-box">
									<div class="thumbnail box-img">
										<div class="box-img-1">
											<img class="img-fixed" src="<%=Production1.get(i).getProImg() %>" />
											<div class="mb1">
												<div class="img-header">
													<img src="<%=Production1.get(i).getProImg() %>" />
												</div>
												<div class="img-content">
													<p>
														<%=Production1.get(i).getProName() %>
													</p>
													<span>作者：有只饺子</span><br />
													<span><i class="glyphicon glyphicon-fire"></i>最新 第二十四章 生意</span><br />
													<span class="introduct"><%=Production1.get(i).getProIntroduce() %></span>
												</div>
												<div class="img-btn">
													<a href="Production/productionIndex.jsp?id=<%=Production1.get(i).getProID() %>"><button class="btn btn-block btn-danger">开始阅读</button></a>
												</div>

											</div>
										</div>
										<div class="caption1">
											<p>
												<%=Production1.get(i).getProName() %>
											</p>
											<span>更新至 第二十四回</span>

										</div>
										<div class="classify">
											<p>搞笑</p>
										</div>
									</div>

								</div>
								<%} %>
								<p class="p-footer">
									<a href="assortments.jsp">更多></a>
								</p>
							</div>
						</div>

					</div>
					<!--搞笑结束-->
					<!--排行榜开始-->
					<div id="box7" class="flowUp pro-box">
						<div class="container">
							<div class="row">
								<div class="col-xs-11 col-sm-11 col-md-7 box-left">
									<div class="col-xs-12 col-sm-12 col-md-6 box-releft ">
										<p class="p1"><img src="img/longmao.png">
											<font>月票排行榜</font>
										</p>
										<ul>
											<%
										Vector<Production> production=plnDao.selectAllProduction();
										for(int i=3;i<6;i++){
										%>
											<li><span class="list_number"><%=i-2%></span>
												<a href="Production/productionIndex.html">
													<%=production.get(i).getProName() %>
												</a>
											</li>
											<%} %>
											<%
											for(int i=6;i<production.size();i++){
											%>
											<li><span class="list_number1"><%=i-2%></span>
												<a href="Production/productionIndex.html">
													<%=production.get(i).getProName() %>
												</a>
											</li>
											<%} %>
										</ul>
									</div>
									<div class="box-reright col-xs-12 col-sm-12 col-md-6">
										<p class="p1"><img src="img/longmao.png">
											<font>人气排行榜</font>
										</p>
										<ul>
											<%
											for(int i=3;i<6;i++){
											%>
											<li><span class="list_number"><%=i-2%></span>
												<a href="Production/productionIndex.html">
													<%=production.get(i).getProName() %>
												</a>
											</li>
											<%} %>
											<%
											for(int i=6;i<production.size();i++){
											%>
											<li><span class="list_number1"><%=i-2%></span>
												<a href="Production/productionIndex.html">
													<%=production.get(i).getProName() %>
												</a>
											</li>
											<%} %>

										</ul>
									</div>
									<p class="p-footer">
										<a href="List/listIndex.jsp">更多排行榜></a>&nbsp;</p>
								</div>
								<div class="col-xs-11 col-sm-11 col-md-4 box-right">
									<p class="p1"><img id="p1-img" src="img/longmao.png">
										<font>最新活动</font>
									</p>
									<div class="img1">
										<img src="img/3.jpg">
										<div class="box1">
											<p>
												<a href="News/newsIndex.html">6月底杭州绿野千鹤作者大大签售会正式6月底杭州绿野千鹤作者大大签售会正式</a>
											</p>
										</div>
									</div>
									<div class="img2">
										<img src="img/1.jpg">
										<div class="box1">
											<p>
												<a href="News/newsIndex.html">《名侦探柯南》漫画最新话一千三十集《名侦探柯南》漫画最新话一千三十集</a>
											</p>
										</div>
									</div>
									<p class="p-footer">
										<a href="newsIndex.jsp">更多活动></a>&nbsp;</p>
								</div>
							</div>
						</div>
					</div>

					<!--排行榜结束-->
				</div>
				<!--侧边栏开始-->
				<div class="container-fluid rightNav" id="nav-container">
					<ul class="nav nav-pills nav-stacked">
						<li class="li-active">
							<a href="#box1">推荐</a>
						</li>
						<li>
							<a href="#box2">最新</a>
						</li>
						<li>
							<a href="#box3">古风</a>
						</li>
						<li>
							<a href="#box4">日漫</a>
						</li>
						<li>
							<a href="#box5">热血</a>
						</li>
						<li>
							<a href="#box6">搞笑</a>
						</li>
						<li>
							<a href="#box7">排行</a>
						</li>
						<li><img src="img/ewm.jpg" width="100%" href="#" id="navblog" title="扫一扫下载客户端" data-toggle="popover" data-placement="top"></li>
						<li>
							<a href="#top"><i class="glyphicon glyphicon-menu-up"></i></a>
						</li>

					</ul>
				</div>
				<!--侧边栏结束-->
			</div>
			<div class="footer">
				<%@ include file="footer.jsp" %>
			</div>
		</div>
	</body>

</html>