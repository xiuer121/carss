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
			<div class="box2" panelTitle="提现管理" roller="true">
			
<s:form id="queryForm" name="queryForm" method="post">
			<table>
				<tr>
					<td>会员编号:</td>
					<td>
						<s:textfield name="loginName"/>
					</td>
					<td>开始时间:</td>
					<td>
						<s:textfield name="startDate" cssClass="date"/>
					</td>
					<td>结束时间：</td>
					<td>
						<s:textfield name="endDate" cssClass="date"/>
					</td>
					<td>
						<button onclick="document.queryForm.submit();">
							<span class="icon_find">查询</span>
						</button>
					</td>
				</tr>
			</table>
</s:form>		

<s:form name="showTable" method="post">
	<s:hidden id="page" name="view.currentPage" />
	<s:hidden id="loginName" name="loginName"/>
	<s:hidden id="startDate" name="startDate"/>
	<s:hidden id="endDate" name="endDate"/>
	
				<table class="tableStyle">
					<tr>
						<th>会员编号</th>
						<th>提现方式</th>
						<th>开户名</th>
						<th>开户行</th>
						<th>开户行地址</th>
						<th>银行卡号</th>
					
						<th>提现金额</th>
						<th>手续费</th>
						<th>实付金额</th>
						
						<th>提交时间</th>
						<th>状态</th>
						
						<th>审核</th>
						<th>无效</th>
					</tr>
	<c:forEach items="${view.records}" var="o">
					<tr>
						<td>${o.member.loginName}</td>
						<td>
							<c:if test="${o.type==10}">银行卡</c:if>
							<c:if test="${o.type==20}">财付通</c:if>
						</td>
						<td>${o.bankPersonName}</td>
						<td>${o.bankName}</td>
						<td>${o.bankAddress}</td>
						<td><span style="font-size:25px;color:red">${o.bankCardNo}</span></td>
						
						<td>${o.num}</td>
						<td>${o.fei}</td>
						<td><font color="red">${o.shi}</font></td>
						
						<td>${o.tiDate} </td>
							
						<td>
							<c:if test="${o.state==10}">未审</c:if>
							<c:if test="${o.state==20}">审核通过</c:if>
							<c:if test="${o.state==30}">驳回</c:if>
						</td>
							
						<td>
							<c:if test="${o.state==10}">
								<a href="ti-yes!show.action?id=${o.id}">审核</a>
							</c:if>
						</td>

						<td>
							<c:if test="${o.state==10}">
								<a href="ti-no!show.action?id=${o.id}">驳回</a>
							</c:if>
						</td>
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