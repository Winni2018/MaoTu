<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="con1 row">
	<img src="img/yuan.png" width="24px" height="24px"/>
		<span id="mess-span1" class="style1">我关注的</span>
</div>
<div class="row con-main">
	<%
					
						MessageDao pln1Dao=new MessageDao();
				
						Vector<Message> vpln1=pln1Dao.selectMessage();
					
							
						
					
						%>
	<div class="col-xs-12 col-sm-12 col-md-12 con-main1 ">
		<div class="col-xs-12 col-sm-2 col-md-2 img-con1">
			<div class="img-con2">
				<img src="<%=vpln1.get(0).getConImg()%>" class="img-circle" />
			</div>

		</div>
		<div class="col-xs-12 col-sm-8 col-md-8 img-con3">
			<div class="col-xs-12 col-sm-10 col-md-10">
				<span class="span1">燕歌行</span>
				<!--<img src="img/concern.png" class="img-concern1" width="15px" height="15px" />-->
				<img src="img/down1.png" class="down" />
				<img src="img/up1.png" class="up"/>
				
				

			</div>
			
			<div class="col-xs-12 col-sm-10 col-md-10 info">
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>发布作品</span>&nbsp;&nbsp;<span><%=vpln1.get(1).getConPublish()%></span>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>看过作品</span>&nbsp;&nbsp;<span><%=vpln1.get(1).getConVisit()%></span>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>拥有粉丝</span>&nbsp;&nbsp;<span><%=vpln1.get(1).getConfans()%></span>
				</div>

			</div>
			
				<div class="dig1">
					<img src="img/close.png" id="img1" />
					<p>确定不再关注？</p>
					<button type="button" class="btn btn-success btn-xs " id="btn1">确定</button>
					<button type="button" class="btn btn-success btn-xs " id="btn2">取消</button>
				</div>

		</div>
		<div class="col-xs-2 col-sm-4 col-md-2 img-con4" >
			<span class="img-concern1">已关注</span>
			<span class="span2">
					取消关注
				</span>
		</div>
		<div class="col-xs-12 col-sm-11 col-md-11 box-main1">
			<p>
				<span>
				<%=vpln1.get(0).getConmessage()%> </span>
				<span id="span1"> 昨天</span>
				<span id="span1"> 更新</span>
			</p>
			<p>
				<span>
				<%=vpln1.get(0).getConmessage()%> </span>
				<span id="span1"> 昨天</span>
				<span id="span1"> 更新</span>
			</p>

		</div>
	
	</div>
	<div class="col-xs-12 col-sm-12 col-md-12 con-main2">
		<div class="col-xs-12 col-sm-2 col-md-2 img-con1">
			<div class="img-con2">
				<img src="<%=vpln1.get(1).getConImg()%>" class="img-circle" />
			</div>

		</div>
		<div class="col-xs-12 col-sm-8 col-md-8 img-con3">
			<div class="col-xs-12 col-sm-10 col-md-10">
				<span class="span1"><%=vpln1.get(1).getConcenName()%></span>
				<!--<img src="img/concern.png" class="img-concern2" width="15px" height="15px" />-->
				<img src="img/down1.png" class="down" />
				<img src="img/up1.png" class="up" />
				<!--<span class="span3">
					取消关注
				</span>

				-->
			</div>
			<div class="col-xs-12 col-sm-10 col-md-10 info">
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>发布作品</span>&nbsp;&nbsp;<span><%=vpln1.get(1).getConPublish()%></span>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>看过作品</span>&nbsp;&nbsp;<span><%=vpln1.get(1).getConVisit()%></span>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>拥有粉丝</span>&nbsp;&nbsp;<span><%=vpln1.get(1).getConfans()%></span>
				</div>

			</div>
			<div class="dig2">
					<img src="img/close.png" id="img1" />
					<p>确定不再关注？</p>
					<button type="button" class="btn btn-success btn-xs " id="btn3">确定</button>
					<button type="button" class="btn btn-success btn-xs " id="btn4">取消</button>
				</div>
		</div>
		<div class="col-xs-2 col-sm-4 col-md-2 img-con4" >
			<span class="img-concern1">已关注</span>
			<span class="span2">
					取消关注
				</span>
		</div>
		<div class="col-xs-12 col-sm-11 col-md-11 box-main2">
			<p>
				<span>
					<%=vpln1.get(1).getConmessage()%> </span>
				<span id="span1"> 昨天</span>
				<span id="span1"> 更新</span>
			</p>
			<p>
				<span>
				<%=vpln1.get(1).getConmessage()%> </span>
				<span id="span1"> 昨天</span>
				<span id="span1"> 更新</span>
			</p>

		</div>
	</div>
	<div class="col-xs-12 col-sm-12 col-md-12 con-main3">
		<div class="col-xs-10 col-sm-2 col-md-2 img-con1">
			<div class="img-con2">
				<img src="<%=vpln1.get(2).getConImg()%>" class="img-circle" />
			</div>

		</div>
		<div class="col-xs-12 col-sm-8 col-md-8 img-con3">
			<div class="col-xs-12 col-sm-10 col-md-10">
<span class="span1"><%=vpln1.get(2).getConcenName()%></span>
				<!--<img src="img/concern.png" class="img-concern3" width="15px" height="15px" />-->
				<img src="img/down1.png" class="down" />
				<img src="img/up1.png" class="up" />
				<!--<span class="span4">
					取消关注
				</span>-->

				
			</div>
			<div class="col-xs-12 col-sm-10 col-md-10 info">
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>发布作品</span>&nbsp;&nbsp;<span><%=vpln1.get(2).getConPublish()%></span>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>看过作品</span>&nbsp;&nbsp;<span><%=vpln1.get(2).getConVisit()%></span>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 info1">
					<span>拥有粉丝</span>&nbsp;&nbsp;<span><%=vpln1.get(2).getConfans()%></span>
				</div>

			</div>
			<div class="dig3">
					<img src="img/close.png" id="img1" />
					<p>确定不再关注？</p>
					<button type="button" class="btn btn-success btn-xs " id="btn5">确定</button>
					<button type="button" class="btn btn-success btn-xs " id="btn6">取消</button>
				</div>
		</div>
		<div class="col-xs-2 col-sm-4 col-md-2 img-con4" >
			<span class="img-concern1">已关注</span>
			<span class="span2">
					取消关注
				</span>
		</div>
		<div class="col-xs-12 col-sm-11 col-md-11 box-main3">
			<p>
				<span>
				<%=vpln1.get(2).getConmessage()%> </span>
				<span id="span1"> 昨天</span>
				<span id="span1"> 更新</span>
			</p>
			<p>
				<span>
					<%=vpln1.get(2).getConmessage()%></span>
				<span id="span1"> 昨天</span>
				<span id="span1"> 更新</span>
			</p>

		</div>
	</div>

</div>

<div class="con-review">
	<img src="img/cat1.png"/>
	<p>还没有人评论..</p>
</div>