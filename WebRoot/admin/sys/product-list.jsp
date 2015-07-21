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
			<div class="box2" panelTitle="商品列表" roller="true">
<s:form id="queryForm" name="queryForm" method="post">
			<table>
				<tr>
					<td>商品名称:</td>
					<td>
						<s:textfield name="title"/>
					</td>
					
					
					
					
					<td>
						<button onclick="document.queryForm.submit();">
							<span class="icon_find">查询</span>
						</button>
					</td>
				</tr>
			</table>
</s:form>			
<s:form name="showTable" method="post" action="product-list.action">
	<s:hidden id="page" name="view.currentPage" />
	
				<table class="tableStyle">
					<tr>
						<th>编号</th>
						
						<th>名称</th>
						<th>产品编号</th>

						
						<th>价格</th>	
						
						<th>创建日期</th>
						<th>状态</th>	
						<th>备注</th>
								
						<th>修改</th>
					</tr>
	<c:forEach items="${view.records}" var="o">
					<tr>
						<td>${o.id}</td>
						
						<td>${o.title}</td>
						<td>${o.productNo}</td>
		
					
						<td>${o.price}</td>
					
						
						
						<td>${o.createDate}</td>
						<td>
							<c:if test="${o.type==10}">正常</c:if>
							<c:if test="${o.type==20}"><span style="color: red;">已下架</span></c:if>
						</td>
						<td>${o.remark}</td>

						<td>
							<a href="product-update!show.action?id=${o.id}">
								<span class="icon_edit">修改</span>
							</a>
							
							<a href="product-list!down.action?id=${o.id}" 
								onclick="return confirm('确认下架?')"> 
								<span class="icon_delete">下架</span>
							</a>
							<!-- 
							<a href="product-img-list!show.action?id=${o.id}" > 
								<span class="icon_view">编辑图片</span>
							</a>
							 -->
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