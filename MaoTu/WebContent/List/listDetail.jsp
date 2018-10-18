<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.print(basePath);
    %>
<!DOCTYPE html>
<html>
<%
ProductionDao proDao=new ProductionDao();
Vector<Production> production=proDao.selectAllProduction();
%>
	<head>
		<meta charset="UTF-8">
		<title>排行榜-猫途漫画</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<script src="List/js/listIndex.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/public.css" />
		<link rel="stylesheet" type="text/css" href="List/css/listDetail.css" />
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="container1">
			<div class="header" >
				<%@include file="../header.jsp" %>
			</div>
			<div class="toTop"><a href="List/listDetail.jsp#title"><span class="glyphicon glyphicon-menu-up"></span></a></div>
			<div class="main">
				<div class="main-title">
					<div class="title">
						<h2 id="title">日漫榜</h2>
					</div>
				</div>
				<div class="main-list">
					<div class="row">
					<% for(int i=0;i<production.size();i++){ %>
						<div class="col-xs-12 col-sm-12 col-md-6 ">
							<div class="box">
								
								<div class="thumbnail">
									<div class="row">
									<div class=" col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-3 col-md-offset-0 col-md-3 ul-img">
										<div class="top-left">
											<div class="list-num1">
												<span class="no1"><%=i+1 %></span>
											</div>
											<a href="Production/productionIndex.jsp?id=<%=production.get(i).getProID() %>">
												<img id="pro-img" src="<%=production.get(i).getProImg() %>" class="img-responsive">
												</a>
										</div>
									</div>
									<div class="col-xs-12 col-sm-9 col-md-9 pro-info">
										<a href="Production/productionIndex.jsp?id=<%=production.get(i).getProID() %>"><h4 style="font-weight: 600;"><%=production.get(i).getProName() %></h4></a>
										<div class="writer">
											<span>作者：</span><span id="writer"><%=production.get(i).getUsers().getNickName() %></span>
										<span class="attention"><span class="glyphicon glyphicon-plus icon-color"></span>关注</span>
										</div>
										<span id="short"><%=production.get(i).getProIntroduce() %></span>
										<div class="tips">
											<span class="glyphicon glyphicon-heart icon-tips"></span>
											<span class="glyphicon glyphicon-download-alt icon-tips"></span>
										</div>
									</div>
								</div>
								</div>
								
							</div>
						</div>
						<%} %>
						
					</div>
					<div class="pagecontainer">
						<ul class="pagination pagination-centered">
							<li class="disabled">
								<a href=" ">&lt;</a>
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
								<a href="#">&gt;</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="footer">
				 <%@ include file="../footer.jsp" %>
				  </div>
			</div>
	</body>

</html>