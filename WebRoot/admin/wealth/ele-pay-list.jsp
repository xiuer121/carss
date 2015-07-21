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
			<div class="box2" panelTitle="报单币转账" roller="true">
			
<s:form id="queryForm" name="queryForm" method="post">
			<table>
				<tr>
					<td>转账人编号:</td>
					<td>
						<s:textfield name="fromLoginName"/>
					</td>
					<td>收账人编号:</td>
					<td>
						<s:textfield name="toLoginName"/>
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
	<s:hidden id="fromLoginName" name="fromLoginName"/>
	<s:hidden id="toLoginName" name="toLoginName"/>
	<s:hidden id="startDate" name="startDate"/>
	<s:hidden id="endDate" name="endDate"/>
	
				<table class="tableStyle">
					<tr>
						<th>转账人用户名</th>
						<th>转账人余额</th>
						
						<th>收账人用户名</th>
						<th>转账人余额</th>
						
						<th>金额</th>
						<th>时间</th>
						<th>状态</th>
					</tr>
	<c:forEach items="${view.records}" var="o">
					<tr>
						<td>${o.fromMember.loginName}</td>
						<td>${o.fromYu}</td>
							
						<td>${o.toMember.loginName}</td>
						<td>${o.toYu}</td>
							
						<td>${o.num}</td>
						<td>${o.commitDate}</td>
						<td>成功</td>
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