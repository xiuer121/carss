<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<!--框架必需start-->
		<script type="text/javascript" src="../../js/jquery-1.4.js"></script>
		<script type="text/javascript" src="../../js/framework.js"></script>
		<link href="../../css/import_basic.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" id="skin" prePath="../../"/>
		<!--框架必需end-->
		
		<script type=text/javascript>
			function topage(page){
				var form = document.forms["showTable"];
				document.getElementById("page").value=page;
				form.submit();
			}
		</script>
	
	</head>
	<body>
		<div id="scrollContent">
			<div class="box2" panelTitle="直线充值列表" roller="true">
			
<s:form name="showTable" method="post">
	<s:hidden id="page" name="view.currentPage" />
	
				<table class="tableStyle">
					<tr>
						<th>所属会员</th>
						<th>订单编号</th>
						<th>金额</th>
						<th>充值类型</th>
						<th>类型</th>
						<th>状态</th>
						<th>提交时间</th>
						<th>支付时间</th>
					</tr>
	<c:forEach items="${view.records}" var="o">
					<tr>
						<td>${o.member.loginName}</td>
						<td>${o.billNo}</td>
						<td>${o.num}</td>
						<td>
							<c:if test="${o.payState==20}">报单币充值</c:if>
						</td>
						<td>
							<c:if test="${o.type==10}">未支付</c:if>
							<c:if test="${o.type==20}">已支付</c:if>
						</td>
						<td>
							<c:if test="${o.state==10}">未处理</c:if>
							<c:if test="${o.state==20}">已处理</c:if>
						</td>

						<td>${o.tiDate}</td>
						<td>${o.payDate}</td>
					</tr>
	</c:forEach>
				</table>
				
				<%@ include file="../fenye.jsp"%>
				
</s:form>
			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>