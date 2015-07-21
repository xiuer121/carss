<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>广西百顺兴--国内大型专业信贷咨询平台注册</title>
			<meta name="keywords" content="广西百顺兴">
				<meta name="description" content="广西百顺兴--国内大型专业信贷咨询平台注册">
					<link rel="stylesheet" href="./imagesweb/common_1.css">
						<link rel="stylesheet" href="./imagesweb/style.css">
						<link rel="stylesheet" href="./imagesweb/reg.css">
							<script type="text/javascript" src="./imagesweb/jquery.js"></script>
							<script src="./imagesweb/jquery_002.js"></script>
							<script>
$(function(){

	$('.demo').Tabs({
		event:'click',
		switchBtn : true
	});
});	
</script>
							
	</head>

	<body>
		<div class="" style="display: none; position: absolute;">
			<div class="aui_outer">
				<table class="aui_border">
					<tbody>
						<tr>
							<td class="aui_nw"></td>
							<td class="aui_n"></td>
							<td class="aui_ne"></td>
						</tr>
						<tr>
							<td class="aui_w"></td>
							<td class="aui_c">
								<div class="aui_inner">
									<table class="aui_dialog">
										<tbody>
											<tr>
												<td colspan="2" class="aui_header">
													<div class="aui_titleBar">
														<div style="cursor: move; display: block;"
															class="aui_title"></div>
														<a style="display: block;" class="aui_close"
															href="javascript:/*artDialog*/;">×</a>
													</div>
												</td>
											</tr>
											<tr>
												<td style="display: none;" class="aui_icon">
													<div
														style="background: none repeat scroll 0% 0% transparent;"
														class="aui_iconBg"></div>
												</td>
												<td style="width: auto; height: auto;" class="aui_main">
													<div style="padding: 20px 25px;" class="aui_content"></div>
												</td>
											</tr>
											<tr>
												<td colspan="2" class="aui_footer">
													<div style="display: none;" class="aui_buttons"></div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
							<td class="aui_e"></td>
						</tr>
						<tr>
							<td class="aui_sw"></td>
							<td class="aui_s"></td>
							<td style="cursor: se-resize;" class="aui_se"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="global">
			<!---head start-->
			<!--<div class="head">
	<div class="head_main">
		<div class="logo"><a target="_blank" href="/"><img src="/static/images/v12/reg_logo.gif" alt="好屋中国" height="60" width="320"></a></div>
		<div class="regnav">欢迎注册好屋经纪人！只需输入购房者信息，坐等成交，佣金轻松拿。</div>
	</div>
</div>-->
			<div class="logo clearfix">
				<a href="#"><img src="./imagesweb/reg_logo.gif">
				</a>
			</div>
			<div class="head"></div>
			<script>
	jQuery(function() {
		jQuery('#selcity').hover(function() {
			jQuery('#selcity-body').show();
		}, function() {
			jQuery('#selcity-body').hide();
		});
	});
</script>
			<!---head end-->
			<div id="xf-main" class="cont_bg">
				<div class="xf-main">
					<!--v.01-->
					<div class="xf-con-box xf-bg-cd mart20">
						<!--v.01.1-->
						<div class="xf-qj-box">
							<div class="xf-qb-top">
								<span class="fc-line1 cd-a1"></span>
								<span class="fc-line2 cd-a2"></span>
								<span class="xqt-line3">广西百顺兴汽车贷款业务分为押车和不押车两种，押车类汽车抵押贷款相对无需押车类抵押贷款利率较低。不需押车类汽车抵押贷款，除利息外还需要支付保管费用等。
								</span>

								<span class="fc-line4 test-a">汽车贷款优势</span>
								<div class="xqt-line5 cd-0">
									<ul>
										<li class="fc-ulli cd-a3">
											额度高！最高可达评估价的150%
										</li>
										<li class="fc-ulli cd-a3">
											到账快！当天贷款资金即到账
										</li>
										<li class="fc-ulli cd-a3">
											不押车！自由行驶出现不受阻
										</li>
										<li class="fc-ulli cd-a3">
											门槛低！申请简便有车就能借
										</li>
									</ul>
								</div>

							</div>
						</div>
						<img width="876" height="58" src="imagesweb/liuchengtu.jpg" alt="申请流程"/>
							<!--v.01.2-->
							<div class="xf-qj-box mart20">
								<div class="fr">

									<form class="register_borrow_form" method="post" action="loan.action" name="myform">
										<p>
											<a class="registerBorrow_btn"></a>
										</p>
										<table border="0" align="left" class="table4">
											<tbody>
												<tr>
													<td>
														贷款金额：
													</td>
													<td>
														<input type="text" class="input" placeholder="100"
															style="width: 100px;" name="dkjr">
															(万元) 
													</td>
												</tr>
												<tr>
													<td>
														您的称呼：
													</td>
													<td>
														<input type="text" class="input" placeholder=" 如：张先生"
															style="width: 100px;" name="ch">
													</td>
												</tr>
												<tr>
													<td>
														手机号码：
													</td>
													<td>
														<input type="text" class="input"
															placeholder=" 如：13926500059" style="width: 140px;"
															name="sjhm">
													</td>
												</tr>
												<tr>
													<td>
														品牌车系：
													</td>
													<td>
														<input type="text" class="input" placeholder=" 如：宝马X6"
															style="width: 100px;" name="ppcx">
															(例：宝马X6) 
													</td>
												</tr>
												<tr>
													<td>
														车辆年份：
													</td>
													<td>
														<input type="text" class="input" placeholder=" 如：2013.10"
															style="width: 100px;" name="clnf">
															(例：2013.10) 
													</td>
												</tr>
												<tr>
													<td>
														汽车排量：
													</td>
													<td>
														<input type="text" class="input" placeholder=" 如：2.4"
															style="width: 100px;" name="qcpl">
															(例：2.4) 
													</td>
												</tr>
												<tr>
													<td>
														行驶里程：
													</td>
													<td>
														<input type="text" class="input" placeholder=" 如：3000"
															style="width: 100px;" name="xslc">
															公里 
													</td>
												</tr>
												<tr>
													<td>
														车辆位置：
													</td>
													<td>
														<input type="text" class="input" placeholder="南宁"
															style="width: 100px;" name="clszd">
															(目前所在城市) 
													</td>
												</tr>
												<tr>
													<td width="60" height="30">
														贷款方式：
													</td>
													<td>
														<label for="dkfs0">
															<input type="radio" checked="" value="车辆抵押" name="dkfs"
																id="dkfs0">
																&nbsp;车辆抵押&nbsp; 
														</label>
														<label for="dkfs1">
															<input type="radio" value="不押车（安装GPS）" name="dkfs"
																id="dkfs1">
																&nbsp;不押车(安装GPS)&nbsp; 
														</label>
													</td>
												</tr>

												<tr>
													<td>
														<font color="#FF0000">温馨提示：</font>
													</td>
													<td>
														<font color="#FF0000">您的资料完全保密，快速评估您的车值</font>
													</td>
												</tr>
											</tbody>
										</table>
										<div class="div_btn">
											<input type="submit" class="div_btns" value="立 即 申 请"
												name="Submit1">
										</div>
										<div class="form_bottom png"></div>
									</form>
								</div>



								<div class="box demo">
									<ul class="tab_menu">
										<li class="current">
											放大类
										</li>
										<li>
											GPS类
										</li>
										<li>
											移交类
										</li>
										<li>
											按揭车二次抵押贷
										</li>
									</ul>
									<div class="tab_box">

										<div>
											<p>
												审批额度高达车辆估值150%，客户贷款额度由抵押车辆及客户信用两方面共同决定。 有押车与不押车两项服务供客户选择。
											</p>
											<div class="applyCR-con">
												<h4>
													放大类特点：
												</h4>
												<ul>
													<li>
														1、审批额度高。
													</li>
													<li>
														2、借款期限自由选择，还款方式自由灵活。
													</li>
												</ul>
												<h4>
													申请条件：
												</h4>
												<ul>
													<li>
														1、年龄在20-60周岁之间；
													</li>
													<li>
														2、具有中国国籍（香港、澳门、台湾暂时除外）；
													</li>
													<li>
														3、借款人须拥有对该车辆的所有权。
													</li>
												</ul>
												<h4>
													准备材料：
												</h4>
												<ul>
													<li>
														1、身份证（非本地户籍需同时提供居住证或暂住证）；
													</li>
													<li>
														2、机动车登记证、行驶证；
													</li>
													<li>
														3、车辆商业保险全险保单（有效期覆盖合同期的车辆保险单）；
													</li>
													<li>
														4、工作证明等其他资信材料。
													</li>
												</ul>
												<h4>
													办理流程：
												</h4>
												<img src="imagesweb/chedai01.png"/>
											</div>
										</div>

										<div class="hide">
											<p>
												审批额度可达车辆估值的80%；客户办理抵押手续后，车辆可继续使用。
											</p>
											<div class="applyCR-con">
												<h4>
													GPS类特点：
												</h4>
												<ul>
													<li>
														1、无须押车，自由行驶。
													</li>
													<li>
														2、借款期限自由选择，还款方式自由灵活。
													</li>
												</ul>
												<h4>
													申请条件：
												</h4>
												<ul>
													<li>
														1、年龄在20-60周岁之间；
													</li>
													<li>
														2、具有中国国籍（香港、澳门、台湾暂时除外）；
													</li>
													<li>
														3、借款人须拥有对该车辆的所有权；
													</li>
													<li>
														4、借款人在业务开展城市长期居住和工作。
													</li>
												</ul>
												<h4>
													准备材料：
												</h4>
												<ul>
													<li>
														1、身份证（非本地户籍需同时提供居住证或暂住证）；
													</li>
													<li>
														2、机动车登记证、行驶证；
													</li>
													<li>
														3、车辆商业保险全险保单（有效期覆盖合同期的车辆保险单）；
													</li>
													<li>
														4、工作证明等其他资信材料。
													</li>
												</ul>
												<h4>
													办理流程：
												</h4>
												<img src="images/chedai02.png">
											</div>
										</div>
										<div class="hide">
											<p>
												审批额度可达车辆估值的100%，贷款可当日到账。客户车辆办理抵押登记手续后需将车辆存放指定车库保管。
											</p>
											<div class="applyCR-con" id="applyC1">
												<h4>
													移交类特点：
												</h4>
												<ul>
													<li>
														1、手续简便，当天到账。
													</li>
													<li>
														2、收费低。
													</li>
													<li>
														3、借款期限自由，还款方式灵活。
													</li>
												</ul>
												<h4>
													申请条件：
												</h4>
												<ul>
													<li>
														1、年龄在18-60周岁之间；
													</li>
													<li>
														2、具有中国国籍（香港、澳门、台湾暂时除外）；
													</li>
													<li>
														3、借款人须拥有对该车辆的所有权；
													</li>
												</ul>
												<h4>
													准备材料：
												</h4>
												<ul>
													<li>
														1、身份证（非本地户籍需同时提供居住证或暂住证）；
													</li>
													<li>
														2、机动车登记证、行驶证；
													</li>
													<li>
														3、其他资信材料。
													</li>
												</ul>
											</div>
										</div>


										<div class="hide">
											<p>
												按揭车贷款是指对仍处在按揭中的汽车进行再次二次抵押贷款。
											</p>
											<div class="applyCR-con" id="applyC1">
												<h4>
													按揭车贷特点：
												</h4>
												<ul>
													<li>
														1、手续简便，当天到账。
													</li>
													<li>
														2、收费低。
													</li>
													<li>
														3、借款期限自由，还款方式灵活。
													</li>
												</ul>
												<h4>
													申请条件：
												</h4>
												<ul>
													<li>
														1、年龄在18-60周岁之间；
													</li>
													<li>
														2、具有中国国籍（香港、澳门、台湾暂时除外）；
													</li>
													<li>
														3、借款人须拥有对该车辆的所有权；
													</li>
												</ul>
												<h4>
													准备材料：
												</h4>
												<ul>
													<li>
														1、车辆按揭合同
													</li>
													<li>
														2、行驶证、身份证(非深户的要带上居住证)
													</li>
													<li>
														3、保险单
													</li>
													<li>
														4、收入证明(一年银行流水)
													</li>
													<li>
														5、房产证复印件(居住证明水电费单)
													</li>
													<li>
														6、公司营业执照
													</li>
												</ul>
												<h4>
													办理流程：
												</h4>
												<img src="images/chedai03.png">
											</div>
										</div>


									</div>
								</div>

							</div>
					</div>
					<div class="clear"></div>
					<!--v.02-->
				</div>
			</div>

			<div class="bottom">
				<div class="bottom_main">
					<a target="_blank" href="#">关于我们</a>
					<a target="_blank" href="#">联系我们</a>
					<a target="_blank" href="#">服务声明</a>
					<a target="_blank" href="#">友情链接</a>
					<a target="_blank" href="#">常见问题</a>
					<a target="_blank" href="#">网站地图</a>
					<a target="_blank" href="#" class="last">人才招聘</a>
					<em>好屋中国版权所有 © 2010-2014</em>
				</div>
			</div>
		</div>
		<script>
 			var msg =${msg};
 			if(msg){
 			 alert("提交成功！");
 			 window.location.href = 'index.action';
 			}
		</script>
	</body>
</html>