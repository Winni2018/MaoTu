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
		<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
		<title>排行榜-猫途漫画</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/public.css" />
		<link rel="stylesheet" type="text/css" href="List/css/listIndex.css" />
		<script src="List/js/listIndex.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function () {
				var time=1000;
				var length=$(".line").length;
				$(".line").eq(0).animate({
					"width":"100%"
				},1000);
				setTimeout(function(){
					$(".line").eq(1).animate({
					"width":"100%"
				},1000);
				},300);
				setTimeout(function(){
					$(".line").eq(2).animate({
					"width":"100%"
				},1000);
				},900);
				setTimeout(function(){
					$(".line").eq(3).animate({
					"width":"100%"
				},1000);
				},1200);
				setTimeout(function(){
					$(".line").eq(4).animate({
					"width":"100%"
				},1000);
				},1500);
				setTimeout(function(){
					$(".line").eq(5).animate({
					"width":"100%"
				},1000);
				},1800);
				setTimeout(function(){
					$(".line").animate({
					"width":"100%"
				},1000);
				},1800);
			});
		</script>
	</head>

	<body>
		<div class="container1" >
			<div class="header">
				<%@include file="../header.jsp" %>
			</div>
			<div class="main">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>国漫榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">
					<% 
					ProductionDao proDao=new ProductionDao();
					Vector<Production> vpro=proDao.selectpro();
				%>
								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(0).getProID() %>"><img src="<%=vpro.get(0).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(0).getProName() %></h3>
									<p>作者：<%=vpro.get(0).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(0).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>日漫榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(5).getProID() %>"><img src="<%=vpro.get(5).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(5).getProName() %></h3>
									<p>作者：<%=vpro.get(5).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(5).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>综合榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><img src="<%=vpro.get(1).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(1).getProName() %></h3>
									<p>作者：<%=vpro.get(1).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(1).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(0).getProID() %>"><%=vpro.get(0).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>人气榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.html"><img src="<%=vpro.get(2).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(2).getProName() %></h3>
									<p>作者：<%=vpro.get(2).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(2).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>收藏榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(6).getProID() %>"><img src="<%=vpro.get(6).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(6).getProName() %></h3>
									<p>作者：<%=vpro.get(6).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(6).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>评论榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(7).getProID() %>"><img src="<%=vpro.get(7).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(7).getProName() %></h3>
									<p>作者：<%=vpro.get(7).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(7).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>上升榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(3).getProID() %>"><img src="<%=vpro.get(3).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(3).getProName() %></h3>
									<p>作者：<%=vpro.get(3).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(3).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>少年漫画榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(8).getProID() %>"><img src="<%=vpro.get(8).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(8).getProName() %></h3>
									<p>作者：<%=vpro.get(8).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(8).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="box">
							<div class="title">
								<h2>少女漫画榜</h2>
								<span class="line"></span>
							</div>
							<div class="row">

								<div class="col-xs-offset-1 col-xs-9  col-sm-offset-0 col-sm-6 col-md-6 ul-img">

									<div class="top-left">
										<div class="list-num1">
											<span class="no1">1</span>
										</div>

										<a href="Production/productionIndex.jsp?id=<%=vpro.get(9).getProID() %>"><img src="<%=vpro.get(9).getProImg() %>" class="img-responsive"></a>
									</div>

								</div>
								<div class="col-xs-offset-1 col-xs-10 col-sm-offset-0  col-sm-6 col-md-6 pro-info">
									<h3><%=vpro.get(9).getProName() %></h3>
									<p>作者：<%=vpro.get(9).getUsers().getNickName() %><br/></p><span id="short"><%=vpro.get(9).getProIntroduce() %></span>
								</div>
							</div>

							<ul class="list-ul">
							
								<li>
									<div class="list-num2">
										2</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(1).getProID() %>"><%=vpro.get(1).getProName() %></a></span>
								</li>
								
								<li>
									<div class="list-num2">
										3</div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(2).getProID() %>"><%=vpro.get(2).getProName() %></a></span>
								</li>
								<% for(int i=3;i<vpro.size();i++){ %>
								<li>
									<div class="list-num3">
										<%=i+1 %></div> <span class="books"><a href="Production/productionIndex.jsp?id=<%=vpro.get(i).getProID() %>"><%=vpro.get(i).getProName() %></a></span>
								</li>
								<%} %>
								
							</ul>
							<a class="full" href="List/listDetail.jsp">查看完整榜单<<</a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer" >
				<%@ include file="../footer.jsp" %>
			</div>
		</div>
	</body>

</html>