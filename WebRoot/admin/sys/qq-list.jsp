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
		
	</head>
	<body>
		<div id="scrollContent">
			<div class="box2" panelTitle="QQ帐号列表" roller="true">
	
				<table class="tableStyle">
					<tr>
						<th>编号</th>
						<th>QQ号码</th>
						<th>提示信息</th>
						<th>显示信息</th>
						<th>操作</th>
					</tr>
	<c:forEach items="${qqList}" var="o">
					<tr>
						<td>${o.id}</td>
						<td>${o.no}</td>
						<td>${o.alt}</td>
						<td>${o.title}</td>
						<td>
							<a href="qq-update!show.action?id=${o.id}"> 修改 </a> 
							<a href="qq-list!delete.action?id=${o.id}"> 删除 </a>	
						</td>
					</tr>
	</c:forEach>
				</table>

			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>