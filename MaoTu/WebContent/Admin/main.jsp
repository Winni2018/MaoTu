<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
		<script src="../bootstrap-3.3.4-dist/jquery-3.3.1.js"></script>
		<link rel="stylesheet" type="text/css" href="../bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../bootstrap-3.3.4-dist/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" href="css/themes/material-teal/easyui.css" />

		<link rel="stylesheet" type="text/css" href="css/themes/icon.css" />
		<script src="js/jquery.easyui.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../bootstrap-3.3.4-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/main.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<title>猫途漫画管理系统</title>
	</head>

	<body class="easyui-layout">
		<div class="left" data-options="region:'west',split:false,border:false">
			<div class="logo">
				<img src="img/logo.png" class="img-responsive" />
			</div>

			<div class="bar">
				<div class="easyui-accordion">
					<div class="title" title="作品管理">
						<!-- <p>
							<a class="navMenu" href="JavaScript:viod(0);" url="proClass.html">作品类别管理</a>
						</p> -->
						<p>
							<a class="navMenu" href="JavaScript:viod(0);" url="proList.jsp">作品管理</a>
						</p>
					</div>
					<div class="title" title="用户管理">
						<p>
							<a class="navMenu" href="JavaScript:viod(0);" url="userList.jsp">用户列表</a>
						</p>
						<p>
							<a class="navMenu" href="JavaScript:viod(0);" url="addUser.html">添加用户</a>
						</p>
					</div>
					<!-- <div class="title" title="新闻管理">
						<p>
							<a class="navMenu" href="JavaScript:viod(0);" url="userList.html">新闻列表</a>
						</p>
						<p>
							<a class="navMenu" href="JavaScript:viod(0);" url="addUser.html">添加用户</a>
						</p>
					</div> -->
				</div>
			</div>
		</div>

		<div class="main" data-options="region:'center',split:false,border:false">
			<div class="top" data-options="region:'north',split:false,border:false">
				<div class="main-right-header">
					<div class="row">
						<div class="col-md-6">
							<form class="navbar-form pull-left" role="search" id="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="查找用户|作品">
								</div>
								<div class="form-group">
									<a href="#"><img src="img/search.png"></a>
								</div>
							</form>
						</div>
						<div class="col-md-6">
							<div class="time pull-left">
								<span id="timeDate"></span>
								<span id="timeTime"></span>
								<span id="timeWeek"></span>
								
							</div>
							<div class="admin pull-right">
								<ul>
									<li>
										<a href="#"><span class="glyphicon glyphicon-user icon-p"></span>管理员</a>
									</li>
									<li >
										<a id="close" href="javascript:window.opener=null;window.open('','_self');window.close(this);"><span class="glyphicon glyphicon-log-in icon-p"></span>退出</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="easyui-tabs" id="tabs" fit="true">
				
			</div>
		</div>
	</body>

</html>