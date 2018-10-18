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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>个人中心</title>
	 <base href="<%=basePath%>">	
		<script type="text/javascript" src="bootstrap-3.3.4-dist/jquery-3.3.1.js" ></script>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.4-dist/css/bootstrap-theme.min.css"/>

		<script type="text/javascript" src="bootstrap-3.3.4-dist/js/bootstrap.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/public.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/personalIndex.css"/>
		<script type="text/javascript" src="Personal/js/personalIndex.js" ></script>
		<link rel="stylesheet" type="text/css" href="Personal/css/reader.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/writer.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/message.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/record.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/account.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/works.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/active.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/author.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/collect.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/dingyue.css"/>
		<link rel="stylesheet" type="text/css" href="Personal/css/upload.css"/>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>


</head>
<body>
<div class="container-fluid">
			<div class="header">
				<%@include file="../header.jsp" %>
			</div>
			<div class="main">
				<div class="row">
					
					<div class="col-xs-4 col-sm-4 col-md-4 left">
						<div class="img-con">
						
						<%
						UsersDao plnDao=new UsersDao();
						Users vpln=plnDao.selectUsersById(2);
						%>
								<img src="<%=vpln.getUserPic()%>" class="img-circle img-thumbnail" />	
							
							</div>
							
						<div class="left-top">
							
							<p class="title"><%=vpln.getNickName()%></p>	
							<p class="label1">这个人很懒 什么都没留下</p>
						</div>
						<div class="left-main">
								<ul class="ul-select">
									<li id="reader" class="select-active">我是读者</li>
									<li id="writer">我是作者</li>
								</ul>
								<div class="box">
									<ul>
										<li class="mess">
											<img src="img/mess (1).png" width="24px" height="24px"/>
											<span>我的关注</span>
											
										</li>										
										<li class="collect">
											<img src="img/book.png" width="24px" height="24px"/>
											<span>我的收藏</span>
										
										</li>										
										<li class="dingyue">
											<img src="img/buy.png" width="24px" height="24px"/>
											<span>我的订阅</span>
											
										</li>										
										<li class="record">
											<img src="img/record .png" width="24px" height="24px"/>
											<span>充值中心</span>
											
										</li>										
										<li class="set">
											<img src="img/set.png" width="24px" height="24px"/>
											<span>修改资料</span>		
										</li>	
									</ul>				
								</div>	
								<div class="box1">
									<ul>
										<li class="works">
											<img src="img/zuopin.png" width="24px" height="24px"/>
											<span>作品管理</span>
											
										</li>										
										<li class="review">
											<img src="img/hudong.png" width="24px" height="24px"/>
											<span>读者互动</span>
										
										</li>	
										<li class="upload">
											<img src="img/upload.png" width="24px" height="24px"/>
											<span>上传作品</span>
											
										</li>	
										<li class="author">
											<img src="img/renzheng.png" width="24px" height="24px"/>
											<span>作者认证</span>
											
										</li>										
																			
										<li class="set1">
											<img src="img/news.png" width="24px" height="24px"/>
											<span>系统消息</span>		
										</li>	
									</ul>				
								</div>		
						</div>
					</div>
					<div class="col-xs-8 col-sm-8 col-md-8 right">
						
					</div>
				</div>
				
			</div>
			<div class="footer">
				<%@ include file="../footer.jsp" %>
			</div>
		</div>
</body>
</html>