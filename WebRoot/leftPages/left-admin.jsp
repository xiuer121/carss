<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!--框架必需start-->
		<script type="text/javascript" src="../js/jquery-1.4.js"></script>
		<script type="text/javascript" src="../js/framework.js"></script>

		<link href="../css/import_basic.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" id="skin" />
		<!--框架必需end-->

		<script type="text/javascript" src="../js/nav/ddaccordion.js"></script>
		<script type="text/javascript" src="../js/text/text-overflow.js"></script>
		<style>
			a {
				behavior: url(../js/method/focus.htc)
			}
			.categoryitems span {
				width: 160px;
			}
		</style>

	</head>

	<body leftFrame="true">
		<div id="scrollContent">
			<div class="arrowlistmenu">
			
				<div class="menuheader expandable">
					<span class="normal_icon2"></span>信息管理
				</div>
				<ul class="categoryitems">
		
						<li>
							<a href="../admin/info/notice-add!show.action" target="frmright">
								<span class="text_slice">新增文章</span>
							</a>
						</li>
	
						<li>
							<a href="../admin/info/notice-list.action" target="frmright">
								<span class="text_slice">文章列表</span>
							</a>
						</li>
						
						
						<li>
							<a href="../admin/info/catalog-add!show.action" target="frmright">
								<span class="text_slice">新增文章栏目</span>
							</a>
						</li>
	
						<li>
							<a href="../admin/info/catalog-list.action" target="frmright">
								<span class="text_slice">文章栏目列表</span>
							</a>
						</li>
					
						<!-- 
						
						<li>
							<a href="../admin/info/fest-add!show.action" target="frmright">
								<span class="text_slice">新增节日</span>
							</a>
						</li>
						<li>
							<a href="../admin/info/fest-list.action" target="frmright">
								<span class="text_slice">节日列表</span>
							</a>
						</li>
						
						<li>
							<a href="../admin/info/message-list.action" target="frmright">
								<span class="text_slice">收信箱</span>
							</a>
						</li>
						<li>
							<a href="../admin/info/message-send.jsp" target="frmright">
								<span class="text_slice">发短信</span>
							</a>
						</li>
						<li>
							<a href="../admin/info/message-send-list.action" target="frmright">
								<span class="text_slice">发信箱</span>
							</a>
						</li>
						
						 <li>
								<a href="../admin/info/data-add!show.action" target="frmright">
								<span class="text_slice">新增资料</span> </a>
						</li>
						<li>
								<a href="../admin/info/data-list.action" target="frmright">
									<span class="text_slice">资料列表</span> </a>
						</li>
						
						<li>
							<a href="../admin/info/services-list.action" target="frmright">
								<span class="text_slice">会员留言系统</span>
							</a>
						</li>
						
						<li>
							<a href="../admin/info/update-self!show.action" target="frmright">
								<span class="text_slice">资料修改</span>
							</a>
						</li>
						 -->
						<li>
							<a href="../admin/info/update-pwd!show.action" target="frmright">
								<span class="text_slice">密码修改</span>
							</a>
						</li>
				</ul>
					<div class="menuheader expandable">
					<span class="normal_icon2"></span>业务管理
				</div>
				<ul class="categoryitems">
						<li>
							<a href="../admin/member/order-list-wait.action" target="frmright">
								<span class="text_slice">交易信息列表</span>
							</a>
						</li>
						<li>
							<a href="../admin/member/order-list.action" target="frmright">
								<span class="text_slice">车辆抵押列表</span>
							</a>
						</li>
				 
				</ul>

				<div class="menuheader expandable">
					<span class="normal_icon2"></span>经纪人管理
				</div>
				<ul class="categoryitems">
					<li>
							<a href="../admin/member/person-add!show.action" target="frmright">
								<span class="text_slice">注册经纪人</span>
							</a>
						</li>
				 
						<li>
							<a href="../admin/member/person-active-no.action" target="frmright">
								<span class="text_slice">经纪人申请列表</span>
							</a>
						</li>
						<li>
							<a href="../admin/member/person-list.action" target="frmright">
								<span class="text_slice">经纪人列表</span>
							</a>
						</li>
						
				</ul>
				<div class="menuheader expandable">
					<span class="normal_icon2"></span>车辆管理
				</div>
				<ul class="categoryitems">
					<li>
							<a href="../admin/car/car-add!show.action" target="frmright">
								<span class="text_slice">添加车辆</span>
							</a>
						</li>
						<li>
							<a href="../admin/car/car-list.action" target="frmright">
								<span class="text_slice">车辆列表</span>
							</a>
						</li>
						 
				</ul>

			 
				
				
				<div class="menuheader expandable">
					<span class="normal_icon2"></span>系统管理
				</div>
				<ul class="categoryitems">
				 
				 		<li>
							<a href="../admin/sys/car-brand-add.jsp" target="frmright">
								<span class="text_slice">车辆品牌管理</span>
							</a>
						</li>

						<li>
							<a href="../admin/sys/car-brand-list.action" target="frmright">
								<span class="text_slice">车辆品牌列表</span>
							</a>
						</li>
		
				 		<li>
							<a href="../admin/sys/cooperation-add!show.action" target="frmright">
								<span class="text_slice">合作品牌管理</span>
							</a>
						</li>
						
				 		<li>
							<a href="../admin/sys/cooperation-list.action" target="frmright">
								<span class="text_slice">合作品牌列表</span>
							</a>
						</li>
						<li>
							<a href="../admin/sys/admin-add.jsp" target="frmright">
								<span class="text_slice">新增管理员</span>
							</a>
						</li>
						<li>
							<a href="../admin/sys/admin-list.action" target="frmright">
								<span class="text_slice">管理员列表</span>
							</a>
						</li>
	
						
				 
				</ul>
				
			</div>
		</div>
	</body>
</html>