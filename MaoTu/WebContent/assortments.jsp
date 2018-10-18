<%@ page language="java" import="java.util.Vector,com.MaoTu.Bean.*,com.MaoTu.Dao.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.print(basePath);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>猫途漫画</title>
<base href="<%=basePath%>">
		<link rel="icon" type="image/x-icon" href="img/icon.png" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/public.css" />
		<link rel="stylesheet" href="css/assortments.css" />
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/assortments.js"></script>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="container-fluid">
			<div class="header">
				<%@include file="header.jsp" %>
			</div>
			<div class="main">
				<div class="container-fluid">
					<div class="container">
						<figure class="content-head">
							<dl class="class-head">
								<dt>题 材:</dt>
								<dd>
									<a>全部</a>
								</dd>
								<dd><a>热血</a></dd>
								<dd><a>搞笑</a></dd>
								<dd><a>青春</a></dd>
								<dd><a>奇幻</a></dd>
								<dd><a>恋爱</a></dd>
								<dd><a>恐怖</a></dd>
							</dl>
							<div class="field-wrap">
								<dl>
									<dt>地 区:</dt>
									<dd class="all">全部</dd>
									<dd><a>港台</a></dd>
									<dd><a>日韩</a></dd>
									<dd><a>大陆</a></dd>
									<dd><a>欧美</a></dd>
								</dl>
								<br />
								<dl>
									<dt>进 度:</dt>
									<dd class="all">全部</dd>
									<dd><a>连载</a></dd>
									<dd><a>完结</a></dd>
								</dl>
								<br />
								<dl>
									<dt>收 费:</dt>
									<dd class="all">全部</dd>
									<dd><a>免费</a></dd>
									<dd><a>付费</a></dd>
									<dd><a>VIP免费</a></dd>
								</dl>
							</div>
							<div class="footer-btn">
								<span>收起选项</span>
								<i class="glyphicon glyphicon-menu-up"></i>
							</div>
							<div class="footer-btn-1">
								<span>展开选项</span>
								<i class="glyphicon glyphicon-menu-down"></i>
							</div>
						</figure>

					</div>
					<div class="container-fluid box">
						<div class="container">
							<header class="box-header">
								<dl>
									<dt>排序</dt>
									<dd>全站热门<i class="glyphicon glyphicon-arrow-down"></i></dd>
									<dd>新作人气<i class="glyphicon glyphicon-arrow-down"></i></dd>
									<dd>新作上架<i class="glyphicon glyphicon-arrow-down"></i></dd>
									<dd>更新时间<i class="glyphicon glyphicon-arrow-down"></i></dd>
									<dd>读者打赏<i class="glyphicon glyphicon-arrow-down"></i></dd>
								</dl>
							</header>
							<div class="box-body">
								<div class="container-fluid">
									<!--第一行开始-->
									<%
						ProductionDao plnDao=new ProductionDao();
									Vector<Production> Production=plnDao.selectAllProduction();
									%>
									<div class="row">
									<% 
									for(int i=0;i<Production.size();i++){
						%>
										<div class="col-xs-6 col-sm-4 col-md-2">
											<div class="thumbnail box-img">
												<div class="box-img-1">
													<img src="<%=Production.get(i).getProImg() %>" />
													<div class="mb">
													<div class="img-header">
														<img  src="<%=Production.get(i).getProImg() %>"  />
													</div>
													<div class="img-content">
														<p><%=Production.get(i).getProName() %></p>
									<span>作者：<%=Production.get(i).getUsers().getNickName() %></span><br />
									<span>最新 第二十四章 生意</span><br />
								<span class="introduct"><%=Production.get(i).getProIntroduce() %></div>
								<div class="img-btn">
									<a href="Production/productionIndex.jsp?id=<%=Production.get(i).getProID() %>"><button class="btn btn-block btn-danger">开始阅读</button></a>
								</div>
								
													
									
								</div>
												</div>
												<div class="caption1">
													<p><%=Production.get(i).getProName() %></p>
													<span>更新至 第二十四回</span>

												</div>
												<div class="classify">
													<p>恐怖</p>
												</div>
											</div>
										</div>
										<%} %>
										
									</div>
									<!--第一行结束-->
								</div>
							</div>
							<footer class="box-footer">
								<div class="container">
									
									<div class="btn-group">
				<button type="button" class="btn btn-default btn-click"><</button>
				<button type="button" class="btn btn-danger btn-click"><a href="#" style="color:black;">1</a></button>
				<button type="button" class="btn btn-default btn-click"><a href="#" style="color:black;">2</a></button>
				<button type="button" class="btn btn-default btn-click"><a href="#" style="color:black;">3</a></button>
				<button type="button" class="btn btn-default btn-click">></button>
			</div>
								</div>

							</footer>

						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<%@ include file="footer.jsp" %>

			</div>

</body>
</html>