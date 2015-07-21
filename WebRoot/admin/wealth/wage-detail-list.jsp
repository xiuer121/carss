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
			<div class="box2" panelTitle="奖金日汇总" roller="true">
			
<s:form name="showTable" method="post">
	<s:hidden id="page" name="view.currentPage" />
	
				<table class="tableStyle">
						<tr>
								
							<th>产生时间</th>
								
							<th>拨出比</th>
							
							<th>激活人数</th>
							<th>激活业绩</th>
							<th>推荐奖</th>	
							<th>报单奖</th>	
							<th>代数奖</th>
							<th>重消奖</th>
						
							<th>实发奖金</th>
								
						</tr>
<c:forEach items="${view.records}" var="o">
								<tr>
									<td>
										<fmt:formatDate value="${o.commitDate}" type="date" pattern="yyyy-MM-dd" />
									</td>
									
									<td>
										<fmt:formatNumber value="${o.wageNum/o.activeYe}" type="percent"/>
									</td>
								
									<td>
										${o.activeNum}
									</td>
									<td>
										${o.activeYe}
									</td>

									<td>${o.wage1}</td>
									<td>${o.wage2}</td>
									<td>${o.wage3}</td>
									<td>${o.wage4}</td>
								
									<td>
										${o.wageNum}
									</td>
									
								</tr>
</c:forEach>
								<tr>
								
									<td style="background-color:#ccc">
										汇总
									</td>
									<td style="background-color:#ccc">
										<fmt:formatNumber value="${wageNumAll/activeYeAll}" type="percent"/>
									</td>
									<td style="background-color:#ccc">
										${activeNumAll}
									</td>
									<td style="background-color:#ccc">
										${activeYeAll}
									</td>

									<td style="background-color:#ccc">${wage1All}</td>
									<td style="background-color:#ccc">${wage2All}</td>
									<td style="background-color:#ccc">${wage3All}</td>
									<td style="background-color:#ccc">${wage4All}</td>
								
									<td style="background-color:#ccc">
										${wageNumAll}
									</td>
									
								</tr>
				</table>
				
				<%@ include file="../fenye.jsp"%>
				
</s:form>
			</div>
		</div>
	<!--代码高亮end-->
	</body>
</html>