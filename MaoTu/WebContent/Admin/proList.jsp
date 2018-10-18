<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
		<script src="../bootstrap-3.3.4-dist/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="../bootstrap-3.3.4-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../bootstrap-3.3.4-dist/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<script src="../bootstrap-3.3.4-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
		<style type="text/css">
			ul li{
				list-style: none;
			}
			.right-header{
				width: 90%;
				margin: 0 auto;
			}
			.right-header ul li{
				float: left;
			}
			.btn-icon{
				width: 45px;
				height: 40px;
			}
			#proImg img{
				width:100px;
				height:120px
			}
			#userPhoto img{
				width: 70px;
				height: 70px;
			}
		</style>
	</head>

	<body>
		<div class="right-header">
			<div class="pull-left btn-group">
				
					<button type="button" class="btn btn-default"  aria-label="Left Align"><span class="glyphicon glyphicon-plus icon-p"></span></button>
				
					<button type="button" class="btn btn-default" aria-label="Left Align"><span class="glyphicon glyphicon-edit icon-p"></span></button>
				
			</div>
			<div class="pull-right btn-group">
				
					<button type="button" class="btn btn-default"  aria-label="Left Align"><span class="glyphicon glyphicon-th-list icon-p"></span></button>
				
					<button type="button" class="btn btn-default" aria-label="Left Align"><span class="glyphicon glyphicon-refresh icon-p"></span></button>
				
			</div>
		</div>
		<div class='tab-pane active' id='tab1'>

			<div class="user-table">
				<table class="table table-striped">
				
					<tr>
						<th>编号</th>
						<th>漫画封面</th>
						<th>漫画名称</th>
						<th>漫画简介</th>
						<th>作者</th>
						<th>头像</th>
						<th>操作</th>
					</tr>
				<% 
					ProductionDao proDao=new ProductionDao();
				Vector<Production> vpro=proDao.selectpro();
					for(int i=0;i<vpro.size();i++){
				%>
					<tr>
						<td id="tab-num"></td>
						<td id="proImg"><img src="<%=vpro.get(i).getProImg() %>" /></td>
						<td id="proName"><%=vpro.get(i).getProName() %></td>
						<td id="proinfo"><%=vpro.get(i).getProIntroduce() %></td>
						<td id="author"><%=vpro.get(i).getUsers().getNickName()%></td>
						<td id="userPhoto"><img src="<%=vpro.get(i).getUsers().getUserPic() %>"/></td>
						<td>
							<button class="btn btn-danger btnDel">删除</button>
						</td>
					</tr>
				<%} %>
					

				</table>
			</div>
			<div class="pagecontainer">
				<ul class="pagination pagination-centered">
					<li class="disabled">
						<a href="#">&laquo;</a>
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
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">Next</a>
					</li>
				</ul>
			</div>
	</body>

</html>