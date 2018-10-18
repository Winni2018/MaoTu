<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="con1 row">
	<img src="img/yuan.png" width="24px" height="24px"/>
		<span id="mess-span1" class="style1">修改资料</span>
</div>
<div class="xiugai">
	

<div class="row change">
	<div class="col-xs-10 col-sm-3 col-md-3 chang-span2">
		<span>修改头像</span>
	</div>
	<div class="col-xs-6 col-sm-3 col-md-2 change-img">
		<img src="img/1.jpg"/>
		
	</div>
	<div class="col-xs-7 col-sm-3 col-md-2 change-upload">
		 <a href='javascript:void(0);' class="blueButton">
		 	<img src="img/wenjian.png" width="18px" height="18px"/>
		 	选择文件</a>
        <input type="file" class="myFileUpload" />
        <div class="show"></div>
	</div>
</div>
<div class="row change">
	<%
						UsersDao plnDao=new UsersDao();
						Users vpln=plnDao.selectUsersById(2);
						
						
						%>
	<div class="col-xs-10 col-sm-3 col-md-3 chang-span2">
		用户名
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row change">
	<div class="col-xs-10 col-sm-3 col-md-3 chang-span2">
		昵称
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row change">
	<div class="col-xs-10 col-sm-3 col-md-3 chang-span2">
		性别
	</div>
	<div class="col-xs-6 col-sm-6 col-md-6 change-sex">
		<input type="radio" name="sex" id="sex" checked="checked"/>男
		<input type="radio" name="sex" id="sex"/>女
	</div>
</div>
<div class="row change">
	<div class="col-xs-10 col-sm-3 col-md-3 chang-span2">
		QQ
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row change">
	<div class="col-xs-10 col-sm-3 col-md-3 chang-span2">
		所在地
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row change2">
	<div class="col-sm-2 col-md-2">
		
	</div>
	<div class="col-sm-5 col-md-5">
		<button type="submit" class="btn">提交</button>
	</div>
</div>
	</div>
