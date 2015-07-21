<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>广西百顺兴--国内大型专业信贷咨询平台</title>
			<meta name="keywords" content="广西百顺兴--国内大型专业信贷咨询平台">
				<meta name="description" content="广西百顺兴--国内大型专业信贷咨询平台">
					<link href="./imagesweb/hw_common_new.css" rel="stylesheet"
						type="text/css">
						<link href="./imagesweb/hw_houses.css" rel="stylesheet"
							type="text/css">
							<script src="./imagesweb/analytics.js" async=""></script>
							<script src="./imagesweb/rt.js" async="" type="text/javascript"></script>

							<script type="text/javascript" src="./imagesweb/jquery.js"></script>
							<script type="text/javascript" src="./imagesweb/carlist.js"></script>
	</head>
	<body>
		<script type="text/javascript">
	function addFavorite2() {
		var sURL = encodeURI(window.location);
		var sTitle = document.title;
		try {
			window.external.addFavorite(sURL, sTitle);
		} catch (e) {
			try {
				window.sidebar.addPanel(sTitle, sURL, "");
			} catch (e) {
				alert("请使用 Ctrl + D 进行添加，或手动在浏览器里进行设置。");
			}
		}
	}
	$(function() {
		$("#znb").hover(function() {

			$(".more_area").show();

		}, function() {

			$(".more_area").hide();
		});
	});
</script>
		<script src="./imagesweb/nav.js" type="text/javascript"></script>
		<div class="index_head">
			<div class="top">
				<div class="top_main">
					<div class="top_left">

					</div>

					<div class="top_right hover">
						<ul>

							<li>
								<a href="login-member.jsp">登录</a>
							</li>
							<li>
								<b class="g-h-b-delimiter">|</b>
							</li>
							<li>
								<a href="./register.jsp">免费注册</a>
							</li>
							<!--  <li><b class="g-h-b-delimiter">|</b></li>
					                    <li><a href="http://www.haowu.cn/zt/app"><i class="icon-phone"></i>手机版<i class="icon-new"></i></a></li>-->
							<li>
								<b class="g-h-b-delimiter">|</b>
							</li>
							<li>
								<a href="#">帮助</a>
							</li>
						</ul>
					</div>
				</div>
			</div>



			<div class="center">
				<div class="head_center">
					<div class="logo">
						<a target="_blank" href="http://www.gxbsxtz.com/"><img
								src="./imagesweb/logo.gif" alt="广西百顺兴" height="89" width="295">
						</a>
					</div>
					<div class="search">
						<div class="search_main">
							<form id="searchform" method="get" action="#">
								<input name="key" value="输入楼盘名称或地址关键词"
									onfocus="if (this.value == '输入楼盘名称或地址关键词')
			this.value = '';"
									onblur="if (this.value == '')
			this.value = '输入楼盘名称或地址关键词';"
									autocomplete="off" class="input_txt" type="text">
									<button class="button_search" title="搜索" type="submit"></button>
							</form>
							<div class="hot_word">
								热门搜索：
								<!-- 
								<a target="_blank"
									href="http://www.haowu.cn/view/13004/view.html">景瑞望府</a>
								<a target="_blank" href="http://www.haowu.cn/view/108/view.html">平江怡景</a>
								<a target="_blank"
									href="http://www.haowu.cn/view/10932/view.html">世茂御珑墅</a>
								 -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="nav">
				<div class="nav_main">
					<ul class="znav_list clearfix">

						<li>
							<a href="http://www.gxbsxtz.com/" class="">首页</a>
						</li>
						<li>
							<a href="car-list-xian.action" class="">限时特惠</a>
						</li>
						<li>
							<a href="car-list.action" class="now_page">二手车中心</a>
						</li> 
						<li>
							<a href="#" class="">汽车抵押贷款</a>
						</li>
						<!--  
						<li>
							<a href="#" class="">赚佣金</a>
						</li>
						-->
						<li>
						<a class="g-n-link" href="#">我的车库</a>
						</li>
						<!--<li><a href="/zt/a520?_r=538">活动专题</a>-->
						<li class="nav_login">
							<a href="login-member.jsp">登录</a>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div class="hw_main">
			<div class="index_content">

				<div class="filter">
					<h2>
						<span class="title">车辆选择筛选</span>
						<span class="now_filter">
							<div class="f_ok">
								您已选择:
							</div> </span>
					</h2>
					<div class="filter_list">
						<div class="filter_term">
							价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格
						</div>
						<div class="filter_term_list">
							<a class="default" href="javascript:void(0);">全部</a>
							<a href="javascript:void(0);">6000元以下</a><a
								href="javascript:void(0);">6000-10000元</a>
						</div>
					</div>
					<div class="filter_list">
						<div class="filter_term">
							类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别
						</div>
						<div class="filter_term_list">
							<a class="default" href="javascript:void(0);">全部</a>
							<a href="javascript:void(0);" title="10">跑车</a>
							<a href="javascript:void(0);" title="20">轿车</a>
							<a href="javascript:void(0);" title="30">SUV</a>
							<a href="javascript:void(0);" title="40">商务车</a>
						</div>
					</div>
					<div class="filter_list">
						<div class="filter_term">
							品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌
						</div>
						<div class="filter_term_list">
							<a class="default" href="javascript:void(0);">全部</a>
							<c:forEach items="${listBrand}" var="one">
								<a href="javascript:void(0);" title="${one.id}">${one.title}</a>
							</c:forEach>
						</div>
					</div>

				</div>
				<div class="mod_info">
					<div class="info_left">
						<div class="top_filter">
							<span class="top_f_left"><a href="car-list.action"
								class="hot">全部车辆</a><a href="car-list.action" class="">特惠车辆</a>
							</span>
							<span class="top_f_right"><a href="car-list.action">默认排序</a><a
								href="car-list.action">最新车辆</a><a href="car-list.action"> 价格</a>
							</span>
						</div>
						<div class="f_list">
							<ul>
								<c:forEach items="${viwJiao.records}" var="one">
									<li>
										<a href="car-show.action?id=${one.id}" target="_blank"><img
												src="./${one.imagePath }" height="120" width="180" /> </a>
										<span class="f_name"><a
											href="car-show.action?id=${one.id}" target="_blank">${one.title}</a>
										</span>
										<span class="f_sale">原价：${one.originalPrice}万</span>
										<span class="f_price"><em>特价：${one.price }万</em>
											<button type="submit" title="了解更多" class="button_tao"
												onclick="window.location.href = 'car-show.action?id=${one.id}'">
												了解更多
											</button> </span>
									</li>
								</c:forEach>
							</ul>

						</div>
						<div class="page">
							<div class="rate-paginator">
								<a href="javascript:void(0);"> <img
										src="./imagesweb/last.png">
								</a>
								<a class="cur">1</a>
								<a href="javascript:void(0);" title="第2页">2</a>
								<a href="javascript:void(0);" title="第3页">3</a>
								<a href="javascript:void(0);" title="第4页">4</a>
								<a href="javascript:void(0);"> <img
										src="./imagesweb/next.png">
								</a><font>去第</font>
								<input name="goHead" id="goHead" type="text">
									<font>页</font><a href="javascript:void(0);" id="goDirect"
										onclick="location.href='/lists/0/'+$('#goHead').val()+'';">GO</a>
							</div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div class="info_right">
						<div class="s_area">
							<h2>
								推荐车辆
							</h2>
							<ul>
								<c:forEach items="${listRec}" var="one">
									<li>
										<a href="car-show.action?id=${one.id}" target="_blank"><img
												src="./${one.imagePath}" height="116" width="186" /> </a>
										<p>
											<em class="l_name">${one.title}</em><em class="l_price">${one.price}万</em>
										</p>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div class="s_area">
							<h2>
								热门车辆
							</h2>
							<ul>
								<c:forEach items="${listHot}" var="one">
									<li>
										<a href="car-show.action?id=${one.id}" target="_blank"><img
												src="./${one.imagePath}" height="116" width="186" /> </a>
										<p>
											<em class="l_name">${one.title}</em><em class="l_price">${one.price}万</em>
										</p>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="index_bottom">

			<div class="bottom" style="background: #EDEDED">

				<div class="hw_help" style="padding-bottom: 8px;">

					<div class="help">

						<h2>
							新手指南
						</h2>
						<ul>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1283.html">好屋经纪人介绍。</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1283.html">自由经纪人和专业经纪人的区别？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1283.html">什么叫经纪人团队？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1283.html">经纪人团队管理奖金如何核算？</a>
							</li>


						</ul>
					</div>

					<div class="help">

						<h2>
							经纪人保障
						</h2>
						<ul>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1284.html">如何保护推荐客户的有效性？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1284.html">被推荐的人会知道谁推荐了他吗？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1284.html">如何查询所推荐的客户是否成交？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1284.html">佣金如何提取？</a>
							</li>


						</ul>
					</div>

					<div class="help">

						<h2>
							帮助中心
						</h2>
						<ul>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1286.html">为什么我的账户已加入黑名单？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1286.html">登陆密码忘记如何找回？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1286.html">客户状态为什么显示已过期？</a>
							</li>
							<li>
								<a target="_blank" href="http://www.haowu.cn/news/1286.html">身边没有需要买房子的朋友，如何赚到钱？</a>
							</li>


						</ul>
					</div>
					<div class="help">

						<h2>
							关注好屋
						</h2>
						<ul>
							<li>
								<a class="app" target="_blank" href="http://www.haowu.cn/phone">好屋APP下载</a>
							</li>
							<li>
								<a class="weixin" target="_blank"
									href="http://www.haowu.cn/zhuanti/weixin/">关注好屋微信</a>
							</li>
							<li>
								<a class="weibo" target="_blank"
									href="http://weibo.com/bestwucom">关注好屋微博</a>
							</li>
							<!--<li><a class="taobao" target="_blank" href="http://haowu.taobao.com/">淘宝官方旗舰店</a></li>-->


						</ul>
					</div>


					<div class="link" style="padding-top: 16px;">

						<a><b>友情链接</b> </a>:
						<a target="_blank" href="http://www.huhoo.com/">虎虎官网</a>
						<a target="_blank" href="http://www.bjtpark.cn/">博济科技园</a>
						<a target="_blank" href="http://www.0631soufang.com/">威海海景房</a>
						<a target="_blank" href="http://suzhou.19lou.com/">苏州19楼</a>
						<a target="_blank" href="http://zu.nanjing.soufun.com/">南京租房</a>
						<a target="_blank" href="http://zu.wuxi.soufun.com/">无锡租房</a>
						<a target="_blank" href="http://zu.xm.soufun.com/">厦门租房</a>
						<a target="_blank" href="http://office.wuxi.soufun.com/">无锡写字楼网</a>
						<a target="_blank" href="http://shop.wuxi.soufun.com/">无锡商铺网</a>
						<a target="_blank" href="http://zu.taiyuan.soufun.com/">太原租房</a>
						<a target="_blank" href="http://zu.yz.soufun.com/">扬州租房</a>
						<a target="_blank" href="http://esf.yz.fang.com/">扬州二手房</a>
						<a target="_blank" href="http://zu.nt.soufun.com/">南通租房</a>
						<a target="_blank" href="http://nn.loupan.com/">南宁房产网</a>
						<a target="_blank" href="http://esf.taizhou.soufun.com/">泰州二手房</a>
						<a target="_blank" href="http://zu.gz.soufun.com/">广州租房</a>
						<a target="_blank" href="http://zu.zz.soufun.com/">郑州租房</a>
						<a target="_blank" href="http://zu.yt.soufun.com/">烟台租房</a>
						<a target="_blank" href="http://esf.yt.soufun.com/">烟台二手房</a>
						<a target="_blank" href="http://zu.hn.soufun.com/">海南租房</a>
						<a target="_blank" href="http://zu.km.soufun.com/">昆明租房</a>
						<a target="_blank" href="http://www.51fdc.com/">无忧房网</a>
						<a target="_blank" href="http://www.365hf.com/">呼和浩特房地产网</a>
						<a target="_blank" href="http://zu.nc.soufun.com/">南昌租房</a>
						<a target="_blank" href="http://www.yipu.com.cn/">商业地产</a>
						<a target="_blank" href="http://zu.cz.soufun.com/">常州租房网</a>
						<a target="_blank" href="http://gp.zhulong.com/">给排水</a>
						<a target="_blank" href="http://xm.zhulong.com/">项目管理</a>
						<a target="_blank" href="http://www.zhenfangyuan.com/">真房源</a>
						<a target="_blank" href="http://xiangyang.focus.cn/">襄阳房产网</a>

					</div>

				</div>



				<div class="link">

					<span class="copyright">广西百顺兴投资有限公司 ©2014 </span>

					<a target="_blank" href="#">关于我们</a>
					|
					<a target="_blank" href="#">人才招聘</a>
					|
					<a target="_blank" href="#">服务声明</a>
					|
					<a target="_blank" href="#">友情链接</a>
					|
					<a target="_blank" href="#">常见问题</a>
					|
					<a target="_blank" href="#">网站地图</a>
					|
					<a target="_blank" href="#">联系我们</a>




				</div>
			</div>
		</div>
 

	</body>
</html>