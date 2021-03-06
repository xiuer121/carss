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
			<div class="box2" panelTitle="财务帐号修改" roller="true">
			

				
<s:form id="commitForm" action="bank-update!update" method="post">
	<s:hidden name="id"/>
	
					<table class="tableStyle" formMode="true">
						<tr>
							<td>银行名称</td>
							<td><s:textfield id="title" name="one.title" cssStyle="width:600px;"/></td>
						</tr>
						<tr>
							<td>卡号</td>
							<td><s:textfield id="cardNo" name="one.cardNo" cssStyle="width:600px;"/></td>
						</tr>
						<tr>
							<td>开户人</td>
							<td><s:textfield id="personName" name="one.personName" cssStyle="width:600px;"/></td>
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