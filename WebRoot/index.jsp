<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 
		<title>广西百顺兴--国内大型专业信贷咨询平台</title>
		<meta name="keywords" content="广西百顺兴--国内大型专业信贷咨询平台">
 
		<meta name="description"
			content="广西百顺兴--国内大型专业信贷咨询平台">

		<link rel="stylesheet" href="./imagesweb/global.css">
		<link rel="stylesheet" href="./imagesweb/index.css">
		<script src="./imagesweb/analytics.js" async></script>
		<script src="./imagesweb/jquery-1.js"></script>
		<script></script>
	</head>

	<body>
		<!--/*---------------start: global-header---------------*/-->
		<div id="global-header" class="header">
			<!--/*-----start: g-h-bar-----*/-->
			<div class="g-h-bar">
				<div class="wrapper clearfix">

					<ul class="fr g-h-b-menu">


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
			<!--/*-----end: g-h-bar-----*/-->
			<!--/*-----start: g-h-main-----*/-->
			<div class="wrapper clearfix g-h-main">
				<a class="fl g-logo" href="#" title="广西百顺兴--国内大型专业信贷咨询平台"></a>

				<div class="fr g-search">
					<form id="globalSearchForm" class="clearfix" method="get"
						action="#">
						<input class="g-s-txt fl" autocomplete="off" name="key"
							placeholder="输入楼盘名称或地址关键词" type="text">
						<input class="g-s-submit fl" value="" title="搜索" type="submit">

						<dl class="g-s-hot-keyword clearfix">
							<dt>
								热门搜索：
							</dt>
							<!--  
							<dd>
								<a href="#" target="_blank">诚河新旅城</a>
							</dd>
							<dd>
								<a href="#" target="_blank">常客隆·信一隆庭</a>
							</dd>
							<dd>
								<a href="#" target="_blank">常熟昆承湖湖畔花园</a>
							</dd>
							-->
						</dl>
					</form>
				</div>
			</div>
			<!--/*-----end: g-h-main-----*/-->

			<!--/*-----start: g-nav-----*/-->
			<div class="g-nav">
				<ul class="wrapper clearfix g-n-list">

					<li>
						<a class="g-n-link  current" href="#">首页</a>
					</li>
					<li>
						<a class="g-n-link" href="car-list-xian.action">限时特惠</a>
					</li>
					<li>
						<a class="g-n-link" href="car-list.action">二手车中心</a>
					</li>
					<li>
						<a class="g-n-link" href="#">汽车抵押贷款</a>
					</li>
					<!-- <li><a class="g-n-link" href="#">赚佣金</a></li> -->
					<li>
						<a class="g-n-link" href="#">我的车库</a>
					</li>
				</ul>
			</div>
			<!--/*-----end: g-nav-----*/-->
		</div>
		<!--/*---------------end: global-header---------------*/-->
		<!--/*---------------start: index-banner---------------*/-->
		<div id="slide" class="index-banner">
			<ul class="i-b-list-box">

				<c:forEach items="${listAd}" var="one">
					<li class="i-b-list-active"
						style="background: url(&quot;./${one.logoPath}&quot;) no-repeat scroll center center transparent; display: none;">
						<a href="${one.urlLink}" target="_blank"></a>
					</li>
				</c:forEach>
			</ul>
			<div class="wrapper i-b-number-box">
				<div class="i-b-number">
					<!--<a class="i-b-number-active" hidefocus="true" href="#"></a>-->
					<!--<a hidefocus="true" href="#"></a>-->
					<!--<a hidefocus="true" href="#"></a>-->
					<!--<a hidefocus="true" href="#"></a>-->
					<a class="" hidefocus="true" href="#"></a><a
						class="i-b-number-active" hidefocus="true" href="#"></a><a
						hidefocus="true" href="#"></a><a hidefocus="true" href="#"></a><a
						hidefocus="true" href="#"></a>
				</div>
			</div>
		</div>
		<script>
$(document).ready(function(){

 $.ajax({type : "post",
					url : "index-ajax.action", 
					success : function(msg) {
					 
					var slice = Array.prototype.slice, 
        banner = (function() {
            var index = 0,
                data =   msg.listAdVo,
                length = data.length,

                slide = $('#slide'),
                slideListBox = slide.find('.i-b-list-box'),
                slideNumber = slide.find('.i-b-number'),
                slideNavCurrent = 'i-b-number-active',
                slideNavIndex = 0,

                slideListTemplet = [
                    '<li style="background: url({{url}}) no-repeat center top; display: none;">',
                    '<a target="_blank" href="{{link}}"></a>',
                    '</li>'
                ].join(''),
                slideNumberTemplet = '<a hidefocus="true" href="#"></a>',

                automaton = null,
                timer = 4500;

            return {
                imageLoader: function(element){
                    var that = this;
                    $('<img src="' + element.url + '">').load(function(){
                        that.appendNode(element);
                    }).error(function(){
                            that.appendNode(element);
                        });
                },
                appendNode: function(){
                    var args = slice.apply(arguments).shift(),

                        slideListItem = slideListTemplet
                            .replace(/\{\{url\}\}/g, args.url)
                            .replace(/\{\{link\}\}/g, args.link),
                        slideNumberItem = slideNumberTemplet;

                    slideListBox.append(slideListItem);
                    slideNumber.append(slideNumberItem);

                    if (this.hasNext()) {
                        this.next();
                    }
                },
                next: function() {
                    var element;

                    if (!this.hasNext()) {
                        return null;
                    }

                    element = data[index];
                    index += 1;

                    this.imageLoader(element, this.appendNode);

                    return element;
                },
                hasNext: function() {
                    return index < length;
                },
                autoPlay: function(){
                    automaton = setTimeout(function(){
                        var index = slideNavIndex;

                        if (slideNavIndex >= 0 && slideNavIndex < length) {
                            index = slideNavIndex + 1;
                        }
                        else {
                            index = 0;
                        }

                        slideNumber.find('a').eq(index).click();

                        automaton = setTimeout(arguments.callee, timer);
                    }, timer);
                },
                pause: function(){
                    clearTimeout(automaton);
                },
                init: function(){
                    var that = this;

                    if (this.hasNext()) {
                        this.next();

                        slideNumber.append(
                            $(slideNumberTemplet).addClass(slideNavCurrent)
                        );

                        slideNumber.find('a').live('click', function(){
                            var slideLists = slideListBox.find('li'),
                                slideNav = slideNumber.find('a'),
                                that = $(this);

                            slideNavIndex = slideNav.index(this);

                            slideLists.fadeOut(150).eq(slideNavIndex).fadeIn(300);

                            slideNav.removeClass(slideNavCurrent);
                            that.addClass(slideNavCurrent);

                            return false;
                        });

                        slideListBox.hover(function(){
                            that.pause();
                        }, function(){
                            that.autoPlay();
                        });

                        this.autoPlay();
                    }
                }
            }
        }());

    banner.init();
	
					}
					});
 

});
</script>
		<!--/*---------------end: index-banner---------------*/-->
		<!--/*---------------start: index-passport---------------*/-->
		<div class="wrapper index-passport">

			<div class="i-p-box">
				<div class="clearfix">
					<a class="fl i-p-login" href="login-member.jsp">登录</a>
					<a class="fr i-p-register" href="register.jsp">注册</a>
				</div>

				<div class="i-p-step">
					<a class="i-p-step-1" href="http://www.haowu.cn/reg"> <i
						class="icon-i-p-s-1"></i> <strong>注册</strong> <span>零门槛
							免费注册</span> </a>
					<a class="i-p-step-2" href="http://www.haowu.cn/user/tuijian">
						<i class="icon-i-p-s-2"></i> <strong>推荐买车</strong> <span>轻松推荐</span>
					</a>

				</div>

			</div>
			<div class="i-p-bgcolor"></div>
		</div>
		<!--/*---------------end: index-passport---------------*/-->
		<!--/*---------------start: index-content---------------*/-->
		<div class="wrapper content index-content">
			<!--/*-----start: i-c-house-----*/-->
			<div class="i-c-house clearfix">
				<div class="i-c-h-listbox fl">
					<h3 class="i-c-b-title">
						<!--i class="i-c-b-t-icon"></i-->
						热门汽车
						<span class="fr">共有<strong>${hotNum}</strong>辆车</span>
					</h3>
					<div class="i-c-h-list clearfix">

						<c:forEach items="${listHot}" var="one">
							<div class="i-c-h-l-item ">
								<a class="i-c-h-l-photo" target="_blank"
									href="car-show.action?id=${one.id}"> <img
										style="height: 182px; display: inline-block;"
										data-original="./${one.imagePath}" src="./${one.imagePath}"
										alt="${one.title}"> </a>
								<a class="i-c-h-l-name" target="_blank"
									href="car-show.action?id=${one.id}">[ ${one.title} ]</a>

								<strong class="i-c-h-l-name" title="${one.price}">原价：${one.originalPrice}万</strong>
								<div class="i-c-h-l-cheap">
									<span style="margin-left: 10px;">特价：${one.price}万</span>
								</div>
								<!-- <em class="i-c-h-l-earn"><i class="icon-earn"></i>${one.commission}</em> -->
							</div>
						</c:forEach>
					</div>
					<h3 class="i-c-b-title">
						<!--i class="i-c-b-t-icon"></i-->
						轿车
						<span class="fr">共有<strong>${jiaoNum}</strong>辆车</span>
					</h3>
					<div class="i-c-h-list clearfix">

						<c:forEach items="${listJiao}" var="one">
							<div class="i-c-h-l-item ">
								<a class="i-c-h-l-photo" target="_blank"
									href="car-show.action?id=${one.id}"> <img
										style="height: 182px; display: inline-block;"
										data-original="./${one.imagePath}" src="./${one.imagePath}"
										alt="${one.title}"> </a>
								<a class="i-c-h-l-name" target="_blank"
									href="car-show.action?id=${one.id}">[ ${one.title} ]</a>

								<strong class="i-c-h-l-name" title="${one.price}">原价：${one.originalPrice}万</strong>
								<div class="i-c-h-l-cheap">
									<span style="margin-left: 10px;">特价：${one.price}万</span>
								</div>
								<!-- <em class="i-c-h-l-earn"><i class="icon-earn"></i>${one.commission}</em> -->
							</div>
						</c:forEach>
					</div>
					<h3 class="i-c-b-title">
						<!--i class="i-c-b-t-icon"></i-->
						跑车
						<span class="fr">共有<strong>${paoNum}</strong>辆车</span>
					</h3>
					<div class="i-c-h-list clearfix">
						<c:forEach items="${listPao}" var="one">
							<div class="i-c-h-l-item ">
								<a class="i-c-h-l-photo" target="_blank"
									href="car-show.action?id=${one.id}"> <img
										style="height: 182px; display: inline-block;"
										data-original="./${one.imagePath}" src="./${one.imagePath}"
										alt="${one.title}"> </a>
								<a class="i-c-h-l-name" target="_blank"
									href="car-show.action?id=${one.id}">[ ${one.title} ]</a>

								<strong class="i-c-h-l-name" title="${one.price}">原价：${one.originalPrice}万</strong>
								<div class="i-c-h-l-cheap">
									<span style="margin-left: 10px;">特价：${one.price}万</span>
								</div>
								<!-- <em class="i-c-h-l-earn"><i class="icon-earn"></i>${one.commission}</em> -->
							</div>
						</c:forEach>
					</div>
					<h3 class="i-c-b-title">
						<!--i class="i-c-b-t-icon"></i-->
						SUV
						<span class="fr">共有<strong>${suvNum}</strong>辆车</span>
					</h3>
					<div class="i-c-h-list clearfix">
						<c:forEach items="${listSuv}" var="two">
							<div class="i-c-h-l-item ">
								<a class="i-c-h-l-photo" target="_blank"
									href="car-show.action?id=${one.id}"> <img
										style="height: 182px; display: inline-block;"
										data-original="./${one.imagePath}" src="./${one.imagePath}"
										alt="${one.title}"> </a>
								<a class="i-c-h-l-name" target="_blank"
									href="car-show.action?id=${one.id}">[ ${one.title} ]</a>

								<strong class="i-c-h-l-name" title="${one.price}">原价：${one.originalPrice}万</strong>
								<div class="i-c-h-l-cheap">
									<span style="margin-left: 10px;">特价：${one.price}万</span>
								</div>
								<!-- <em class="i-c-h-l-earn"><i class="icon-earn"></i>${one.commission}</em> -->
							</div>
						</c:forEach>
					</div>
					<h3 class="i-c-b-title">
						<!--i class="i-c-b-t-icon"></i-->
						商务车
						<span class="fr">共有<strong>${swcNum}</strong>辆车</span>
					</h3>
					<div class="i-c-h-list clearfix">
						<c:forEach items="${listSwc}" var="one">
							<div class="i-c-h-l-item ">
								<a class="i-c-h-l-photo" target="_blank"
									href="car-show.action?id=${one.id}"> <img
										style="height: 182px; display: inline-block;"
										data-original="./${one.imagePath}" src="./${one.imagePath}"
										alt="${one.title}"> </a>
								<a class="i-c-h-l-name" target="_blank"
									href="car-show.action?id=${one.id}">[ ${one.title} ]</a>

								<strong class="i-c-h-l-name" title="${one.price}">原价：${one.originalPrice}万</strong>
								<div class="i-c-h-l-cheap">
									<span style="margin-left: 10px;">特价：${one.price}万</span>
								</div>
								<!-- <em class="i-c-h-l-earn"><i class="icon-earn"></i>${one.commission}</em> -->
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="i-c-h-act fr">
					<h3 class="i-c-b-title">
						热门活动
					</h3>
					<div class="i-c-h-activity">
					<!--  
						<a class="i-c-h-photo" href="#" target="_blank"> <img
								style="display: inline;" alt="半山壹號"
								印象天使"全民竞拍大赛5月31日启动" data-original="http://www.haowu.com/uploads/ad/edba6f751c4dc6ca9ee91083f3b81df7.png"
								src="./imagesweb/edba6f751c4dc6ca9ee91083f3b81df7.png"> <span
							class="i-c-h-special">半山壹號"印象天使"全...</span> </a>
						<a class="i-c-h-photo" href="#" target="_blank"> <img
								style="display: inline;" alt="【好屋推荐】中国美林湖｜首付我来付，一千万送你！"
								data-original="http://www.haowu.com/uploads/ad/98ac35ba6fff73f63f1d7a9bf7d8b377.jpg"
								src="./imagesweb/98ac35ba6fff73f63f1d7a9bf7d8b377.jpg"> <span
							class="i-c-h-special">【好屋推荐】中国美林湖...</span> </a>
					-->
					</div>
					<h3 class="i-c-b-title">
						推荐车型
					</h3>
					<div class="i-c-h-top">
						<div class="i-c-b-t-list">
							<c:forEach items="${listRec}" var="one">
								<a class="i-c-b-t-item" target="_blank"
									href="car-show.action?id=${one.id}" title="${one.title}"> <span
									class="i-c-b-t-num i-c-b-t-n-top">1</span> <span
									class="i-c-b-t-tit">${one.title} - ¥<em>${one.originalPrice}</em>
								</span> <span class="i-c-b-t-des clearfix"> <span
										class="i-c-b-t-photo fl"> <img style="display: inline;"
												src="./${one.imagePath}"> </span> <span
										class="i-c-b-t-detail fr">原价：<em>${one.originalPrice}万</em>
									</span> <span class="i-c-b-t-detail fr1">特价：<em>${one.price}万</em>
									</span> </span> </a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!--/*-----end: i-c-house-----*/-->

			<!--/*-----start: i-c-join-----*/-->
			<ul class="i-c-join">
				<li>
					<a class="i-c-j-1" target="_blank" href="./register.jsp"> <i
						class="icon-i-c-j-1"></i> <strong>注册百顺兴</strong> <span>零门槛
							人人都可免费注册</span> </a>
				</li>
				<li class="i-c-j-delimiter-arrow"></li>
				<li>
					<a class="i-c-j-2" target="_blank" href="car-list.action"> <i
						class="icon-i-c-j-2"></i> <strong>推荐买车</strong> <span>轻松推荐
							坐等成交 好屋提供全程服务</span> </a>
				</li>
				<li class="i-c-j-delimiter-arrow"></li>
				<li>
					<a class="i-c-j-3" target="_blank" href="#"> <i
						class="icon-i-c-j-3"></i> <strong>赚高额佣金</strong> <span>成交审核通过
							2周佣金到账</span> </a>
				</li>
				<li class="i-c-j-delimiter"></li>
				<li>
					<a class="i-c-j-add" target="_blank" href="./register.jsp">加入经纪人</a>
				</li>
			</ul>
			<!--/*-----end: i-c-join-----*/-->

			<!--/*-----start: i-c-brokerage-----*/-->
			<!--/*-----end: i-c-brokerage-----*/-->

			<!--/*-----start: i-c-partners-----*/-->
			<div class="clearfix i-c-partners">
				<h3 class="i-c-p-title">
					<i class="i-c-b-t-icon"></i>合作汽车品牌
				</h3>
				<div class="i-c-p-list">
					<c:forEach items="${listCoo}" var="one">
						<a target="_blank" href="${one.urlLink}" ref="nofollow"><img
								style="display: inline-block;" src="./${one.logoPath }"
								alt="${one.title}">
						</a>

					</c:forEach>
				</div>
			</div>
			<!--/*-----end: i-c-partners-----*/-->
		</div>
		<!--/*---------------end: index-content---------------*/-->



		<!--/*---------------start: global-footer---------------*/-->
		<div id="global-footer" class="footer">
			<div class="wrapper clearfix g-f-directory">
				<dl class="fl g-f-d-item g-f-d-ensure">
					<dt>
						<i class="icon-ensure"></i>好屋保障
					</dt>
					<dd>
						<a href="#" target="_blank">特惠楼盘</a>
						<a href="#" target="_blank">品牌地产合作</a>
						<a href="#" target="_blank">专业服务团队</a>
					</dd>
				</dl>
				<dl class="fl g-f-d-item g-f-d-help">
					<dt>
						<i class="icon-help"></i>使用帮助
					</dt>
					<dd>
						<a href="#" target="_blank">帮助中心</a>
						<a href="#" target="_blank">注册常见问题</a>
						<a href="#" target="_blank">经纪人常见问题</a>
						<a href="#" target="_blank">佣金常见问题</a>
					</dd>
				</dl>
				<dl class="fl g-f-d-item g-f-d-pattern">
					<dt>
						<i class="icon-pattern"></i>经纪人模式
					</dt>
					<dd>
						<a href="#" target="_blank">经纪人说明</a>
						<a href="#" target="_blank">经纪人佣金报酬</a>
						<a href="#" target="_blank">如何推荐客户</a>
					</dd>
				</dl>
				<dl class="fl g-f-d-item g-f-d-attention">
					<dt>
						<i class="icon-attention"></i>关注好屋
					</dt>
					<dd>
						<i class="icon-qrcode fl"></i>
						<a class="icon-weibo" target="_blank" href="#">新浪微博</a>
						<!--<a class="icon-taobao" target="_blank" href="http://haowu.taobao.com/">淘宝店</a>-->
					</dd>
				</dl>
				<dl class="fl g-f-d-item g-f-d-contact">
					<dt>
						<i class="icon-contact"></i>联系我们
					</dt>
					<dd>
						客服热线(9:00-17:00)
						<br>
						<strong class="g-f-d-service-phone">400-180-8116</strong>
						<br>
						媒体合作 021-26072222-2005
						<br>
						商务合作 13962399696
						<br>
					</dd>
				</dl>
			</div>

			<div class="wrapper g-f-sitelink">
				<ul class="clearfix g-f-s-list">
					<li>
						<a target="_blank" href="#">关于我们</a>
					</li>
					<li>
						<a target="_blank" href="#">人才招聘</a>
					</li>
					<li>
						<a target="_blank" href="#">服务声明</a>
					</li>
					 
					<li>
						<a target="_blank" href="#">常见问题</a>
					</li>
					<li>
						<a target="_blank" href="#">网站地图</a>
					</li>
					<li class="g-f-s-list-last">
						<a target="_blank" href="#">联系我们</a>
					</li>
				</ul>
			 
			</div>


		</div>
		<!--/*---------------end: global-footer---------------*/-->

		<!-- /*--------------Start Index City Choose--------------*/  -->


		<!--/*---------------end: index-selectCity---------------*/-->



		<div style="height: 2242px; display: none;" class="index-mask"></div>



		<script src="./imagesweb/global-header.js"></script>
		<script src="./imagesweb/index.js"></script>
		<script src="./imagesweb/jquery.lazyload.js"></script>

		<script>
        $('img[data-original]').lazyload({
//            skip_invisible: false,
            threshold: 100,
            effect: 'fadeIn'
        });
    </script>
		<script defer language="javascript">
		function  xs() {
			art.dialog({
				content: document.getElementById('IndexOnPageContent'),
				id: IndexOnPageContent
			});

		}
	</script>

 


	</body>
</html>