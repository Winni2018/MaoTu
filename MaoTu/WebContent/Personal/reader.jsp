<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="per1 img-thumbnail">
	<img src="img/yuan.png" width="24px" height="24px"/>
	<h3>个人中心</h3>
</div>

<div class="right-top img-thumbnail">
	<h3>基本资料</h3>
	<div class="row introd">
	<%
						UsersDao plnDao=new UsersDao();
						Users vpln=plnDao.selectUsersById(2);
						
						
						%>
		<div class="col-xs-10 col-sm-5 col-md-5 introd2">
			<span>用户名：</span><span><%=vpln.getNickName()%></span>
		</div>
		<div class="col-xs-10 col-sm-5 col-md-5 introd2">
			<span>昵称：</span><span><%=vpln.getNickName()%></span>
		</div>

		<div class="col-xs-10 col-sm-5 col-md-5 introd2">
			<span>城市：</span><span><%=vpln.getUserCity()%></span>
		</div>
		<div class="col-xs-10 col-sm-5 col-md-5 introd2">
			<span>星座：</span><span><%=vpln.getUserStar()%></span>
		</div>
	
		<div class="col-xs-10 col-sm-5 col-md-5 introd2">
		<span>积分：</span>
		
		<span>120</span>
		<img src="img/jifen.png" class="jifen" width="28px" height="28px"/>
		</div>
		<div class="col-xs-10 col-sm-5 col-md-5 introd2">
			<span>荣誉等级：</span>
			<img src="img/rongyu.png" width="28px" height="28px" class="rongyu"/>
			<span id="span2">Lv.1</span>
		</div>
	</div>

</div>

<div class="right-main img-thumbnail">
	<h3>动态展示</h3>
	<div class="row intro1-row">
		<div class="col-xs-10 col-sm-4 col-md-3 introd1 img-thumbnail">
			<div class="col-xs-8 col-sm-9 col-md-8 tougao1">
			<span>投稿作品</span><p>0</p>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-4">
			<img src="img/shangchuan.png" width="36px" height="36px"/>
				</div>
		</div>
		<div class="col-xs-10 col-sm-4 col-md-3 introd1 img-thumbnail">
			<div class="col-xs-8 col-sm-9 col-md-8 tougao1">
			<span>收藏作品</span><p>0</p>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-4">
			<img src="img/shoucang1.png" width="36px" height="36px"/>
				</div>
		</div>
		<div class="col-xs-10 col-sm-4 col-md-3 introd1 img-thumbnail">
			<div class="col-xs-8 col-sm-9 col-md-8 tougao1">
			<span>浏览记录</span><p>0</p>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-4">
			<img src="img/liulan1.png" width="36px" height="36px"/>
				</div>
		</div>
	</div>
</div>