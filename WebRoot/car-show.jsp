<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>广西百顺兴--国内大型专业信贷咨询平台</title>
<meta name="keywords" content="广西百顺兴--国内大型专业信贷咨询平台">
<meta name="description"
	content="广西百顺兴--国内大型专业信贷咨询平台">
<link href="./imagesweb/hw_common_new.css" rel="stylesheet"
	type="text/css">
<link href="./imagesweb/sale_houses.css" rel="stylesheet"
	type="text/css">
<script src="./imagesweb/analytics.js" async=""></script>
<script src="./imagesweb/rt.js" async="" type="text/javascript"></script>
<script src="./imagesweb/analytics.js" async=""></script>
<script src="./imagesweb/rt.js" async="" type="text/javascript"></script>
<script type="text/javascript" src="./imagesweb/jquery.js"></script>
<link href="./imagesweb/default.css" rel="stylesheet" />
<script src="./imagesweb/artDialog.js"></script>
<script src="./imagesweb/iframeTools.js"></script>
<script type="text/javascript">
                // 选项卡
                $(function() {
                    $(".info_tab dl dt>a:first").addClass("tabActive");
                    $(".info_tab dl dd div.introd").not(":first").hide();
                    $(".info_tab dl dt>a").unbind("click").bind("click", function() {
                        $(this).siblings("a").removeClass("tabActive").end().addClass("tabActive");
                        var index = $(".info_tab dl dt>a").index($(this));
                        $(".info_tab dl dd div.introd").eq(index).siblings(".info_tab dl dd div.introd").hide().end().fadeIn("slow");
                    });
                });
                function settime1() {
                    var timer = self.setInterval(function() {
                        setTime();
                    }, 1000);
                }
                function setTime() {
                    var left = $("#time").val();
                    if (left > 0) {
                        var days = Math.floor(left / (3600 * 24));
                        var hours = Math.floor((left - days * 3600 * 24) / 3600);
                        // var min = Math.floor( (left - days * 3600 * 24 - hours * 3600)/60 );//alert(hours);alert(min);//return;
                        // var second = Math.floor(left%60);
                        if (hours == 0) {
                            var msg = "<em>" + days + "</em>天00小时";
                        } else {
                            var msg = "<em>" + days + "</em>天<em>" + hours + "</em>小时";
                        }
                        $("#lefttime").html(msg);
                        $("#time").val(left - 1);
                    } else {
                        $("#lefttime").html(0);
                        $("#lefttime").html("   <b style='color:red;'>活动结束</b>");
                        window.clearInterval(timer);
                    }
                }
           function collect_house(id){
		    var house_id=id;
			var mobilenumber=0 ;
		    $.post("/ajax/collect_house",{id:house_id,phone:mobilenumber},function(data){
			    
				if(data==-1){
				    alert("你已收藏过该楼盘!");
				}
			    else if(data==0){
				   alert("收藏楼盘失败!");
				}
				else{
				   alert("楼盘收藏成功!");
				}
			});
		}
		 //登录
 
			
			
			
			</script>


</head>
<body onload="settime1();">
	<div class=" aui_state_focus"
		style="position: absolute; left: -9999em; top: 254px; display: block; width: auto; z-index: 1987;">
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
						<td class="aui_c"><div class="aui_inner">
								<table class="aui_dialog">
									<tbody>
										<tr>
											<td colspan="2" class="aui_header"><div
													class="aui_titleBar">
													<div style="cursor: move; display: block;"
														class="aui_title">消息</div>
													<a style="display: block;" class="aui_close"
														href="javascript:/*artDialog*/;">×</a>
												</div></td>
										</tr>
										<tr>
											<td style="display: none;" class="aui_icon"><div
													style="background: none repeat scroll 0% 0% transparent;"
													class="aui_iconBg"></div></td>
											<td style="width: auto; height: auto;" class="aui_main"><div
													style="padding: 20px 25px;" class="aui_content">
													<div class="aui_loading">
														<span>loading..</span>
													</div>
												</div></td>
										</tr>
										<tr>
											<td colspan="2" class="aui_footer"><div
													style="display: none;" class="aui_buttons"></div></td>
										</tr>
									</tbody>
								</table>
							</div></td>
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
	<script type="text/javascript">
    function addFavorite2() {
        var sURL = encodeURI(window.location);
        var sTitle = document.title;
        try{
            window.external.addFavorite(sURL, sTitle);
        }catch(e) {
            try{
                window.sidebar.addPanel(sTitle, sURL, "");
            }catch (e) {
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
				<div class="top_left"></div>

				<div class="top_right hover">
					<ul>
						<li><a href="login-member.jsp">登录</a><span
							class="gap">|</span></li>
						<li><a href="./register.jsp">免费注册</a><span
							class="gap">|</span></li>
						<!-- <li><a href="http://www.haowu.cn/zt/app"><i class="phone"></i>手机版<i class="h"></i></a><span class="gap">|</span> </li>    -->
						<li><a href="#">帮助</a></li>
					</ul>
				</div>
			</div>
		</div>



		<div class="center">
			<div class="head_center">
				<div class="logo">
					<a target="_blank" href="#"><img src="./imagesweb/logo.gif"
						alt="百顺兴" height="89" width="295"></a>
				</div>
				<div class="search">
					<div class="search_main">
						<form id="searchform" method="get" action="/lists/">
							<input name="key" value="输入名称或地址关键词"
								onfocus="if (this.value == '输入名称或地址关键词')
			this.value = '';"
								onblur="if (this.value == '')
			this.value = '输入楼盘名称或地址关键词';"
								autocomplete="off" class="input_txt" type="text">
								<button class="button_search" title="搜索" type="submit"></button>
						</form>
						<div class="hot_word">
							热门搜索： <!-- <a target="_blank"
								href="http://www.haowu.cn/view/310/view.html">路劲澜调国际</a> <a
								target="_blank" href="http://www.haowu.cn/view/12906/view.html">景瑞翡翠湾</a>
							<a target="_blank"
								href="http://www.haowu.cn/view/12905/view.html">蓝光COCO蜜园</a>
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


	<input name="time" value="${xian}" id="time" type="hidden">
	<div class="hw_main">
		<div class="index_content">
			<div class="here">
				您所在的位置：<a href="#">车辆中心</a>&gt; <a class="now_here" href="#"
					target="_blank">${one.title}</a>
			</div>
			<div class="mod_houses">
				<h2>
					<span class="title"> <em class="title_name">${one.title}<b
							class="add">${one.brandId.title}</b> <b class="add">价格:${one.price }</b></em>
						<em class="title_ad"> </em>
					</span> 
				</h2>
				<div class="hw_sale">
					<b></b> <font></font>
				</div>
				<div class="houses">
					<a href="#" target="_blank"><img
						src="./${one.imagePath}"
						height="410" width="980"> </a>
						</div>
				    <div class="houses_info"> 
         				 <span>已<em> 191 </em>人收藏 </span>
         				 <span>已 <em>544</em>人预约</span><span>推荐佣金 <em>2000起</em>  </span>
         				 <c:if test="${xian!=null}">
         				 <span>倒计时 <label id="lefttime"></label></span>
         				 </c:if>
           
				    	<span class="recom"><a href="member/car-collection-add.action?id=${one.id}" target="_blank">加入收藏</a></span>
                        <span class="make"><a href="#" target="_blank">申请预约</a></span> 
	
				    </div>

			</div>
			<div class="mod_info">
				<div class="info_left">
					<div class="map">
						<p>
							<b>车辆名称：</b>${one.title} <br> <b>车辆类型：</b>${one.carType} <br>
							<b>车况：</b>${one.condition} <br> <b>行程：</b>${one.travel} <br>
							<b>排量：</b>${one.discharge} <br> <b>变速箱：</b>${one.creabox}<br>
							<b>驱动模式：</b>${one.driveMode} <br> <b>车辆颜色：</b>${one.color}<br>
								<b>价格：</b>${one.price} <br>
						</p>
						<p>
							<b>车辆原用途：</b>${one.used} <br> <b>车辆内色：</b>${one.colorIn} <br>
							<b>手续：</b>${one.procedures}<br> <b>座位数：</b>${one.seatNum}<br>
									<b>座椅：</b>${one.chair} <br> <b>产地：</b>${one.place} <br>
											<b>燃油：</b>${one.fuel} <br> <b>佣金：</b>${one.commission} <br>
						</p>
						<img src="./imagesweb/map_400.jpg">
					</div>
					<div class="photo">
						<h2>楼盘相册</h2>
						<ul>
							<ul>
								<c:forEach items="${imgList}" var="o">
								<li><a href="#"
									target="_blank"> <img
										src="${o.imgPath}"
										height="163" width="222" /></a></li> 
								</c:forEach>
							</ul>
						</ul>
					</div>
					<!-- 选项卡 -->
					<div class="info_tab">
						<dl>
							<dt>
								<a class="tabActive">车辆详细介绍</a>
							</dt>
							<dd>
								 ${one.description}
							</dd>
						</dl>
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

		<div class="bottom" style="background:#EDEDED">

			<div class="hw_help" style="padding-bottom:8px;">

				<div class="help">

					<h2>新手指南</h2>
					<ul>
						<!-- 
						<li><a target="_blank"
							href="#">好屋经纪人介绍。</a></li>
					  -->
					</ul>
				</div>

				<div class="help">

					<h2>经纪人保障</h2>
					<ul>
							<!-- 
						<li><a target="_blank"
							href="#">好屋经纪人介绍。</a></li>
					  -->
					</ul>
				</div>

				<div class="help">

					<h2>帮助中心</h2>
					<ul>
							<!-- 
						<li><a target="_blank"
							href="#">好屋经纪人介绍。</a></li>
					  -->

					</ul>
				</div>
				<div class="help">
 
				</div>


				<div class="link" style="padding-top:16px;">

					<a><b>友情链接</b></a>: <a target="_blank" href="http://www.huhoo.com/">虎虎官网</a>
					<a target="_blank" href="http://www.bjtpark.cn/">博济科技园</a> <a
						target="_blank" href="http://www.0631soufang.com/">威海海景房</a> <a
						target="_blank" href="http://suzhou.19lou.com/">苏州19楼</a> <a
						target="_blank" href="http://zu.nanjing.soufun.com/">南京租房</a> <a
						target="_blank" href="http://zu.wuxi.soufun.com/">无锡租房</a> <a
						target="_blank" href="http://zu.xm.soufun.com/">厦门租房</a> <a
						target="_blank" href="http://office.wuxi.soufun.com/">无锡写字楼网</a> <a
						target="_blank" href="http://shop.wuxi.soufun.com/">无锡商铺网</a> <a
						target="_blank" href="http://zu.taiyuan.soufun.com/">太原租房</a> <a
						target="_blank" href="http://zu.yz.soufun.com/">扬州租房</a> <a
						target="_blank" href="http://esf.yz.fang.com/">扬州二手房</a> <a
						target="_blank" href="http://zu.nt.soufun.com/">南通租房</a> <a
						target="_blank" href="http://nn.loupan.com/">南宁房产网</a> <a
						target="_blank" href="http://esf.taizhou.soufun.com/">泰州二手房</a> <a
						target="_blank" href="http://zu.gz.soufun.com/">广州租房</a> <a
						target="_blank" href="http://zu.zz.soufun.com/">郑州租房</a> <a
						target="_blank" href="http://zu.yt.soufun.com/">烟台租房</a> <a
						target="_blank" href="http://esf.yt.soufun.com/">烟台二手房</a> <a
						target="_blank" href="http://zu.hn.soufun.com/">海南租房</a> <a
						target="_blank" href="http://zu.km.soufun.com/">昆明租房</a> <a
						target="_blank" href="http://www.51fdc.com/">无忧房网</a> <a
						target="_blank" href="http://www.365hf.com/">呼和浩特房地产网</a> <a
						target="_blank" href="http://zu.nc.soufun.com/">南昌租房</a> <a
						target="_blank" href="http://www.yipu.com.cn/">商业地产</a> <a
						target="_blank" href="http://zu.cz.soufun.com/">常州租房网</a> <a
						target="_blank" href="http://gp.zhulong.com/">给排水</a> <a
						target="_blank" href="http://xm.zhulong.com/">项目管理</a> <a
						target="_blank" href="http://www.zhenfangyuan.com/">真房源</a> <a
						target="_blank" href="http://xiangyang.focus.cn/">襄阳房产网</a>

				</div>

			</div>



			<div class="link">

				<span class="copyright">广西百顺兴投资有限公司 © 2012-2014 </span> <a
					target="_blank" href="#">关于我们</a>
				| <a target="_blank" href="#">人才招聘</a>
				| <a target="_blank" href="#">服务声明</a>
				| <a target="_blank" href="#">友情链接</a>
				| <a target="_blank" href="#">常见问题</a>
				| <a target="_blank" href="#">网站地图</a>
				| <a target="_blank" href="#">联系我们</a>
				<!-- cnzz统计代码-->
				<script type="text/javascript">
 
</script>
				<script src="./imagesweb/stat.php" language="JavaScript"></script>
				<script src="./imagesweb/core.php" charset="utf-8"
					type="text/javascript"></script>
			 




			</div>
		</div>
	</div>
 

	</body>
</html>