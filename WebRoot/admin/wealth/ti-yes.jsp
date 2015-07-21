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
		
			<div class="box2" panelTitle="审核提现" roller="true">
	
<s:form id="commitForm" action="ti-yes!commit" method="post">
	<s:hidden name="id"/>

					<table class="tableStyle" formMode="true">
					
						<tr>
							<th colspan="2">审核提现</th>
						</tr>
					
						<tr>
							<td>编号：</td>
							<td>${xu.id}</td>
						</tr>
						<tr>
							<td>会员编号：</td>
							<td>${xu.member.loginName}</td>
						</tr>
						<tr>
							<td>提现方式：</td>
							<td>
								<c:if test="${xu.type==10}">银行卡</c:if>
								<c:if test="${xu.type==20}">财付通</c:if>
							</td>
						</tr>
						
						<tr>
							<td>提现额：</td>
							<td>${xu.num}</td>
						</tr>
						<tr>
							<td>手续费：</td>
							<td>${xu.fei}</td>
						</tr>
						<tr>
							<td>实付金额：</td>
							<td><font color="red">${xu.shi}</font></td>
						</tr>
					
						
					<c:if test="${xu.type==10}">
						<tr>
							<td>开户行：</td>
							<td>${xu.bankName}</td>
						</tr>
						<tr>
							<td>开户行地址：</td>
							<td>${xu.bankAddress}</td>
						</tr>
						<tr>
							<td>卡号：</td>
							<td>${xu.bankCardNo}</td>
						</tr>
						<tr>
							<td>开户名：</td>
							<td>${xu.bankPersonName}</td>
						</tr>
					</c:if>	
						
					<c:if test="${xu.type==20}">
						<tr>
							<td>财付通号码：</td>
							<td>${xu.caifuNo}</td>
						</tr>
						<tr>
							<td>财付通姓名：</td>
							<td>${xu.caifuPersonName}</td>
						</tr>
					</c:if>	
						
						<tr>
							<td>状态：</td>
							<td>
								<c:if test="${xu.state==10}">未审</c:if>
								<c:if test="${xu.state==20}">审核通过</c:if>
								<c:if test="${xu.state==30}">驳回</c:if>
							</td>
						</tr>
						
						<tr>
							<td>提现时间：</td>
							<td>${xu.tiDate}</td>
						</tr>
						
						<tr>
							<td colspan="2">
								<div style="color: red;text-align:center;">
									<s:actionerror/>
									<s:fielderror/>
								</div>
							</td>
						</tr>
						
				
						<tr>
							<td colspan="2">
								<c:if test="${xu.state==10}">
									<input type="submit" value=" 审核提现" />
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