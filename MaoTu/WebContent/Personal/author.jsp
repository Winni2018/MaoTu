<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="con1 row">
	<img src="img/yuan.png" width="24px" height="24px"/>
		<span id="mess-span1" class="style1">作者认证</span>
</div>

<div class="infomation">
	

<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		<span>笔名</span>
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		真实姓名
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		性别
	</div>
	<div class="col-xs-8 col-sm-5 col-md-5 author-sex">
		<input type="radio" name="sex" id="sex" checked="checked"/>男
		<input type="radio" name="sex" id="sex"/>女
	</div>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		电子邮箱
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		电话号码
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		所在地
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		认证类型
	</div>
	<div class="col-xs-7 col-sm-5 col-md-5 author-box1">
		<input type="radio" name="type2" id="type2" checked="checked"/>个人
		<input type="radio" name="type2" id="type2"/>工作室
		<input type="radio" name="type2" id="type2"/>出版社
	</div>
</div>
<div class="row authors">
	<div class="col-xs-8 col-sm-3 col-md-3 author-span">
		认证说明
	</div>
	<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
</div>
<div class="row authors">
	<div class="col-sm-3 col-md-3">
		
	</div>
	<div class="col-sm-5 col-md-5">
		<button type="submit" class="btn ">提交</button>
	</div>
</div>
</div>

