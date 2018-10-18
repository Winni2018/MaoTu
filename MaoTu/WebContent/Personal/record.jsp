<%@ page language="java" import="java.util.Vector,com.MaoTu.Dao.*,com.MaoTu.Bean.*"    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="con1 row">
	<img src="img/yuan.png" width="24px" height="24px"/>
		<span id="mess-span1" class="style1">充值中心</span>
</div>
<div class="chongzhi">
	

	<ul class="nav nav-tabs" id="myTab">
			<li class="active">
				<a href="#home" data-toggle="tab">鲜花充值</a>
			</li>
			<li>
				<a href="#month" data-toggle="tab">月票充值</a>
			</li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="home">
				<div class="row flower1">
					<div class="col-xs-10 col-sm-3 col-md-3 total">
						<p>充值数量</p>
					</div>
					<ul class="nav nav-tabs col-xs-8 col-sm-8 col-md-8" id="myTab1">
						<li class="active">
							
							<a href="#fifty" data-toggle="tab">50朵</a>
							
						</li>
						<li>
						
							<a href="#hundred" data-toggle="tab">100朵</a>
							
						</li>
						<li>
							
							<a href="#defined" data-toggle="tab">300朵</a>
							
						</li>
					</ul>

				</div>
				<div class="row flower1">
					<div class="col-xs-8 col-sm-3 col-md-3 total">
						<p>应付金额</p>
					</div>
					<div class="tab-content">
						
							<span class="tab-pane active" id="fifty">￥50.00</span>
						
							<span class="tab-pane" id="hundred">￥100.00</span>
						
							<span class="tab-pane" id="defined">￥300.00</span>
						
					</div>
				 </div>

						<div class="row flower1">
							<div class="col-xs-10 col-sm-3 col-md-3 pay">
								<p>支付方式</p>
							</div>

							<div class="col-xs-10 col-sm-3 col-md-2 pay1">
								<div class="pay-way">
									<span class="style zhifubao">支付宝</span>
								</div>
							</div>
							<div class="col-xs-10 col-sm-3 col-md-2 pay1">
								<div class="pay-way">
									<span class="weixin">微信</span>
								</div>
							</div>
						</div>
						<div class="row pay-flower">
							<div class="col-sm-3 col-md-2">

							</div>
							<div class="col-sm-5 col-md-5">
								<button type="submit" class="btn tijiao">提交</button>
							</div>
						</div>
				</div>
				<div class="tab-pane" id="month">

					<div class="row month-pay">
						<div class="col-xs-12 col-sm-10 col-md-8 month-pay1">
							<div class="col-xs-7 col-sm-6 col-md-6">
								3个月
							</div>
							<div class="col-xs-5 col-sm-6 col-md-6">
								￥60.00
							</div>
						</div>
						<div class="col-xs-12 col-sm-10 col-md-8 month-pay2">
							<div class="col-xs-7 col-sm-6 col-md-6">
								6个月
							</div>
							<div class="col-xs-5 col-sm-6 col-md-6">
								￥120.00
							</div>
						</div>
						<div class="col-xs-12 col-sm-10 col-md-8 month-pay3">
							<div class="col-xs-7 col-sm-6 col-md-6">
								12个月
							</div>
							<div class="col-xs-5 col-sm-6 col-md-6">
								￥240.00
							</div>
						</div>
						<div class="row ">
							<div class="col-sm-3 col-md-3">

							</div>
							<div class="col-sm-5 col-md-5 col-md-offset-2 flow3">
								<button type="submit" class="btn tijiao">提交</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>