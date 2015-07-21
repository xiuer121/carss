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
		
		<!--文本编辑器start-->
		<script type="text/javascript" src="../../js/xheditor/xheditor-zh-cn.min.js"></script>
		<script type=text/javascript>
			$(document).ready(function(){
				//设置编辑器
				$("#detail").xheditor(
					true, { tools: "full", skin: "default" }
				);

				$("#property").xheditor(
					true, { tools: "full", skin: "default" }
				);
			});
		</script>
		<!--文本编辑器end-->
		
	</head>
	
	<body>
		<div id="scrollContent">
		
			<div class="box2" panelTitle="添加商品" roller="true">
	
<s:form id="commitForm" action="product-add!add.action" method="post" enctype="multipart/form-data">
					
						
						<table class="tableStyle" formMode="true">
					
							<tr>
								<th colspan="4">添加商品</th>
							</tr>

							<tr>
								<td width="10%">产品名称：</td>
								<td width="40%">
									<s:textfield id="title" name="title"/>
								</td>
								
								<td width="10%">产品编号：</td>
								<td width="40%">
									<s:textfield id="productNo" name="productNo"/>
								</td>
							</tr>
							
							
							<tr>
								
								<td>规格：</td>
								<td><s:textfield id="format" name="format"/></td>
							
								<td>产品价格：</td>
								<td><s:textfield id="price" name="price"/>(*必填)</td>
								<!-- 
								
								<td>产品图片：</td>
								<td><s:file id="file" name="file" /></td>
								 -->
							</tr>
							<tr>
								<td>描述：</td>
								<td colspan="3">
									<s:textfield id="description" name="description" cssStyle="width:100%;"/>
								</td>
							</tr>
							
							<tr>
								<td>详情：</td>
								<td colspan="3">
									<s:textarea id="detail" name="detail" cssStyle="width:95%;height:200px;"/>
								</td>
							</tr>
							
							<tr>
								<td>属性：</td>
								<td colspan="3">
									<s:textarea id="property" name="property" cssStyle="width:95%;height:200px;"/>
								</td>
							</tr>

							<tr>
								<td colspan="4">
									<div style="color:red;text-align:center">
										<s:actionerror/>
										<s:fielderror/>
									</div>
								</td>
							</tr>

							<tr>
								<td colspan="4">
									<input type="submit" value=" 提 交 "/>
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