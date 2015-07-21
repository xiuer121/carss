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
			<div class="box2" panelTitle="代理参数" roller="true">
			

				<table class="tableStyle">
					<tr>
						<th>名称</th>
						<th>代理金额</th>
						<th>直推金额</th>
						<th>业务提成代数</th>
						<th>业务提成百分数</th>
						<th>修改</th>
					</tr>
					
<c:forEach items="${list}" var="o">
					<tr>
						<td>${o.title}</td>
						<td>${o.payNum}</td>
						<td>${o.zhiNum}</td>
						<td>${o.yeDai}</td>
						<td>${o.yeNum}</td>
						<td><a href="param-daili-update!show.action?id=${o.id}">修改</a></td>
					</tr>
</c:forEach>
	
				</table>
				
			
			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>