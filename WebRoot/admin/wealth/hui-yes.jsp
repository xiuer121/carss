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
		
			<div class="box2" panelTitle="有效审核" roller="true">
	
<s:form id="commitForm" action="hui-yes!commit" method="post">
	<s:hidden name="id"/>

					<table class="tableStyle" formMode="true">
					
						<tr>
							<th colspan="2">有效审核</th>
						</tr>
					
						<tr>
							<td>提交会员：</td>
							<td>${xu.member.loginName}</td>
						</tr>
						<tr>
							<td>提交时间：</td>
							<td>${xu.commitDate}</td>
						</tr>
						<tr>
							<td>汇款人帐号：</td>
							<td>${xu.bankName}</td>
						</tr>
						<tr>
							<td>汇款人姓名：</td>
							<td>${xu.personName}</td>
						</tr>
						
						<tr>
							<td>汇款时间：</td>
							<td>${xu.huiDate}</td>
						</tr>
						<tr>
							<td>金额：</td>
							<td>
								${xu.num}
							</td>
						</tr>
						<tr>
							<td>状态：</td>
							<td>
								<c:if test="${xu.type==10}">未审</c:if>
								<c:if test="${xu.type==20}">无效</c:if>
								<c:if test="${xu.type==30}">有效</c:if>
							</td>
						</tr>
						
						<tr>
							<td colspan="2">
								<div style="color: red;text-align:center;">
									<div style="color:red;text-align:center">
										<s:actionerror/>
										<s:fielderror/>
									</div>
								</div>
							</td>
						</tr>
						
				
						<tr>
							<td colspan="2">
								<c:if test="${xu.type==10}">
									<input type="submit" value=" 有效审核 " />
									<input type="reset" value=" 重 置 " />
								</c:if>
							</td>
						</tr>
				
						
					</table>

				</s:form>
				
				
			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>