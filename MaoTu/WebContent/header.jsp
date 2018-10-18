<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynav">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
			<div class="log">
				<img src="img/logo.png" />
			</div>
		</div>
		<div class="collapse navbar-collapse" id="mynav">
			<ul class="nav navbar-nav">
				<li id="nav-first">
					<a href="index.jsp">猫途漫画</a>
				</li>
				<li>
					<a href="List/listIndex.jsp">排行榜</a>
				</li>
				<li>
					<a href="News/newsIndex.jsp">新闻资讯</a>
				</li>
				<li>
					<a href="Personal/personalIndex.jsp">个人中心</a>
				</li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a id="a-register"><span class="glyphicon glyphicon-user"></span>注册</a>
				</li>
				<li id="login">
					<a id="a-login"><span class="glyphicon glyphicon-log-in"></span>登录</a>
				</li>
			</ul>
			<script type="text/javascript">
			$(function () {
				//登录
				$("#a-login").on("click",function () {
					$(".form-login-box").slideDown();
					$(".form-login-box").css({
						"z-index": "1000"
					});
					$(".overlay").css("display","block");
				});
				//注册
				$("#a-register").on("click",function () {
					$(".form-register-box").slideDown();
					$(".form-register-box").css({
						"z-index": "1000"
					});
					$(".overlay").css("display","block");
				});
			});
		</script>
			<ul>
				<li>
					<form class="navbar-form navbar-right" role="search" id="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="输入漫画名">
						</div>
						<div class="form-group">
							<a href="#"><img src="img/search.png"></a>
						</div>
					</form>
				</li>
			</ul>
		</div>
		
	</div>
	
</nav>

<!--遮罩层-->
			<div id="overlay" class="overlay"></div>
			<!--登录-->
			<div class="form-box form-login-box col-md-4 col-md-offset-4">
				<div class="form-header">
					<span class="form-title">登录</span>
					<span class="close">X</span>
				</div>
				<form action="" method="post" class="form-horizontal form-login" role="form">
					
					<div class="form-group no-margin">
						<label for="userName" class=" col-md-3 control-label">用户名</label>
						<div class="col-md-8">
							<input class="form-control " type="text" name="userName" id="userName-log" onblur="checkUserName(this)" placeholder="请输入用户名" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="userNameTip"></span>
					
					<div class="form-group no-margin">
						<label for="passWord" class="col-md-3 control-label">密码</label>
						<div class="col-md-8">
							<input class="form-control" type="password" name="passWord" id="passWord" onblur="checkPwd(this)" placeholder="请输入密码" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="passWordTip"></span>
					
					<div class="form-group">
						<input class="col-md-4 col-md-offset-4 btn btn-success" type="submit" id="" name="" value="登录" />
					</div>
					<p>还没注册？现在去<a onclick="showRegister()">注册</a></p>
				</form>
			</div>
			<!--登录结束-->
				<!--注册窗口-->
		<div class="form-box form-register-box col-md-4 col-md-offset-4">
				<div class="form-header">
					<span class="form-title">注册</span>
					<span class="close">X</span>
				</div>
				<form action="" method="post" class="form-horizontal form-register" role="form">
					
					<div class="form-group no-margin">
						<label for="userName" class=" col-md-3 control-label">用户名</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="userName" id="userName-re" onblur="checkUserName(this)" placeholder="请输入用户名" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="userNameTip"></span>
					
					<div class="form-group no-margin">
						<label for="passWord" class="col-md-3 control-label">密码</label>
						<div class="col-md-9">
							<input class="form-control" type="password" name="password" id="password" onblur="checkPwd(this)" placeholder="请输入密码" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="passWordTip"></span>
					
					<div class="form-group no-margin">
						<label for="repassWord" class="col-md-3 control-label">确认密码</label>
						<div class="col-md-9">
							<input class="form-control" type="password" name="repassWord" id="repassWord"  placeholder="请输入确认密码" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="repassWordTip"></span>
					
					
					<div class="form-group no-margin">
						<label for="email" class="col-md-3 control-label">邮箱</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="email" id="email" placeholder="请输入邮箱" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="emailTip"></span>
					
					<div class="form-group no-margin">
						<label for="idCard" class="col-md-3 control-label">身份证号</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="idCard" id="idCard" placeholder="请输入身份证号" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="idCardTip"></span>
					
					<div class="form-group no-margin">
						<label for="telphone" class="col-md-3 control-label">手机号</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="telphone" id="telphone" placeholder="请输入手机号" />
						</div>
					</div>
					<span class="col-md-offset-3 col-md-8 tips" id="telphoneTip"></span>
					
					<div class="form-group">
						<input class="col-md-4 col-lg-offset-1 btn btn-success" type="reset" value="重置" />
						<input class="col-md-4 col-lg-offset-2 btn btn-success" type="submit" id="" name="" value="提交" />
					</div>
	
				</form>
			</div>
			