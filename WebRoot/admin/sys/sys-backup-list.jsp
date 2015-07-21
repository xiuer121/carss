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
			<div class="box2" panelTitle="数据备份列表" roller="true">
	
				<table class="tableStyle">
					<tr>
						<th>文件名</th>
						<th>时间</th>
						<th>长度</th>
						<th>下载</th>
						<th>删除</th>
					</tr>
	<c:forEach items="${fileList}" var="o">
					<tr>
						<td>${o.name}</td>
						<td>
							<fmt:formatDate value="${o.date}" pattern="yyyy-MM-dd HH:mm:ss"/> 
						</td>
						<td>${o.length}</td>
						<td>
							<a href="sys-backup-list!down.action?name=${o.name}"> 
								下载
							</a>
						</td>
						<td>
							<a href="sys-backup-list!del.action?name=${o.name}"> 
								删除
							</a>
						</td>
					</tr>
	</c:forEach>
				</table>

			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>