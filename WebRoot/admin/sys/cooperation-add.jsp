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
		
		<!-- 遮罩效果 -->
		<script type="text/javascript" src="../../js/form/loadmask.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$(":submit").bind("click", function () {
	 				$("#commitForm").mask("数据提交中，请等待！");
				});
			});
			
		</script>
		<!-- 遮罩效果结束 -->
	
	</head>
	<body>
		<div id="scrollContent">
			<div class="box2" panelTitle="图片管理" roller="true">
			

				
<s:form id="commitForm" action="cooperation-add" method="post" enctype="multipart/form-data">

					<table class="tableStyle" formMode="true">
						<tr>
							<th colspan="2">图片管理</th>
						</tr>
						<tr>
							<td>名称：</td><td><s:textfield id="title" name="title"/></td>
						</tr> 
						<tr>
							<td>网址：</td><td><s:textfield id="urlLink" name="urlLink"/></td>
						</tr>
						<tr>
							<td>类型：</td><td><s:select list="#{10:'合作品牌',20:'轮播图片'}" name="imgType" listKey="key" listValue="value"/> </td>
						</tr>
						<tr>
							<td>图片：</td><td><s:file id="file" name="file" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value=" 提交 "/>
								<input type="reset" value=" 重 置 "/>
							</td>
						</tr>
					</table>
</s:form>
				
				
			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>