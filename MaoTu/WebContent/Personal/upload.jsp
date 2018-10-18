<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="con1 row">
	<img src="img/yuan.png" width="24px" height="24px"/>
		<span id="mess-span1" class="style1">上传作品</span>
</div>

<div class="proupload">
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3 chang-span1">
			<span>漫画名称</span>
			
		</div>
		
				<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
	
	</div>
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3">
			漫画作者
		</div>

		<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-box1"/>
		
	</div>
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3">
			作品封面
		</div>
		<div class="col-xs-5 col-sm-6 col-md-3 change-fenmian">
<a href='javascript:void(0);' class="blueButton1">
		 	<img src="img/wenjian.png" width="18px" height="18px"/>
		 	点击上传</a>
        <input type="file" class="myFileUpload" />
        <div class="show"></div>
		</div>

	</div>
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3">
			受众
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6 change-sex">
			<input type="radio" name="sex" id="sex" checked="checked" />男
			<input type="radio" name="sex" id="sex" />女
		</div>
	</div>
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3">
			作品类别
		</div>
		<div class="col-xs-7 col-sm-6 col-md-6 change-lable">
			<input type="radio" name="type1" id="type1" checked="checked" />故事漫画
			<input type="radio" name="type1" id="type1" />条漫
			<input type="radio" name="type1" id="type1" />绘本
			<input type="radio" name="type1" id="type1" />同人
		</div>
	</div>
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3">
			题材
		</div>
		<div class="col-xs-7 col-sm-6 col-md-6 change-lable">
			<input type="checkbox" name="lable" id="lable" checked="checked" />校园
			<input type="checkbox" name="lable" id="lable" />萌系
			<input type="checkbox" name="lable" id="lable" />都市
			<input type="checkbox" name="lable" id="lable" />儿童
			<input type="checkbox" name="lable" id="lable" />科幻
			<input type="checkbox" name="lable" id="lable" />搞笑
		</div>
	</div>
	<div class="row proup">
		<div class="col-xs-5 col-sm-3 col-md-3">
			漫画简介
		</div>
		<input type="text" name="author" id="author" class="col-xs-6 col-sm-6 col-md-6 change-intro"/>
		
	</div>
	<div class="row proup">
		<div class="col-sm-3 col-md-3">

		</div>
		<div class="col-xs-3 col-sm-3 col-md-3  works">
			<button type="submit" class="btn">提交</button>
		</div>

	</div>
</div>
