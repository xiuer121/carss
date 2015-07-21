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
			<div class="box2" panelTitle="代理参数修改" roller="true">
			
<s:form id="commitForm" action="param-daili-update!update" method="post">
	<s:hidden name="id"/>
				
				<table class="tableStyle" formMode="true">
				
						<tr>
							<td>名称</td>
							<td><s:textfield id="title" name="title"/></td>
						</tr>
						<tr>
							<td>代理金额</td>
							<td><s:textfield id="payNum" name="payNum"/></td>
						</tr>
						
						<tr>
							<td>直推金额</td>
							<td><s:textfield id="zhiNum" name="zhiNum"/></td>
						</tr>
						<tr>
							<td>业务提成代数</td>
							<td><s:textfield id="yeDai" name="yeDai"/></td>
						</tr>
						<tr>
							<td>业务提成百分数</td>
							<td><s:textfield id="yeNum" name="yeNum"/></td>
						</tr>
						
						
	
						<tr>
							<td colspan="2">
								<input type="submit" value=" 修改 "/>
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