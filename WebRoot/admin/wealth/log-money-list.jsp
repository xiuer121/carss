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
			<div class="box2" panelTitle="奖金币明细" roller="true">
			
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
						<th>日期</th>
						<th>时间</th>
						<th>会员编号</th>
						<th>会员姓名</th>
						<th>摘要</th>
						<th>入账金额</th>
						<th>出帐金额</th>
						<th>余额</th>
					</tr>
	<c:forEach items="${view.records}" var="o">
					<tr>
						<td>
							<fmt:formatDate value="${o.commitDate}" type="date" pattern="yyyy-MM-dd" />
						</td>
						<td>
							<fmt:formatDate value="${o.commitDate}" type="date" pattern="HH:mm:ss" />
						</td>
						<td>${o.member.loginName}</td>
						<td>${o.member.personName}</td>
						<td>${o.title}</td>

						<td>
							<c:if test="${o.num>=0}">
								<strong>${o.num}</strong>
							</c:if>
						</td>
						<td>
							<c:if test="${o.num<0}">
								<strong>${o.num}</strong>
							</c:if>
						</td>
						<td>
							<strong style="color: red">${o.yu}</strong>
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