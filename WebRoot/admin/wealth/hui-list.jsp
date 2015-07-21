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
			<div class="box2" panelTitle="汇款管理" roller="true">
			
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
						<th>
							编号
						</th>
						<th>
							金额
						</th>
						<th>
							充值类型
						</th>
						<th>
							汇款人帐号
						</th>
						<th>
							汇款人名字
						</th>
						<th scope="col" style="width: 15%">
							汇款时间
						</th>
						<th scope="col" style="width: 15%">
							提交时间
						</th>
						<th scope="col">
							提交人
						</th>
						<th scope="col">
							备注
						</th>
						<th>
							状态
						</th>
						<th>
							审核
						</th>
						<th>
							无效
						</th>
					</tr>
	<c:forEach items="${view.records}" var="o">
					<tr>
						<td>
								${o.id}
							</td>
							<td>
								${o.num}
							</td>
							<td>
								<c:if test="${o.state==10}">奖金币充值</c:if>
								<c:if test="${o.state==20}">报单币充值</c:if>
								<c:if test="${o.state==30}">股权钱包充值</c:if>
							</td>
							<td>
								${o.bankName}
							</td>
							<td>
								${o.personName}
							</td>
							<td>
								${o.huiDate}
							</td>
							<td><fmt:formatDate value="${o.commitDate}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>
								${o.member.loginName}
							</td>
							<td style="text-align:left;">
								${o.content}
							</td>
							<td>
								<c:if test="${o.type==10}">未审</c:if>
								<c:if test="${o.type==20}">无效</c:if>
								<c:if test="${o.type==30}">有效</c:if>
							</td>
							<td>
								<c:if test="${o.type==10}">
									<a href="hui-yes!show.action?id=${o.id}">审核</a>
								</c:if>
							</td>
							<td>
								<c:if test="${o.type==10}">
									<a href="hui-no!show.action?id=${o.id}">无效</a>
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