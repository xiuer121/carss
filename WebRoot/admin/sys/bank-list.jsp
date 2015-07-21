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
			<div class="box2" panelTitle="财务帐号" roller="true">
	
				<table class="tableStyle">
					<tr>
						<th class="dd2">
							编号
						</th>
						<th class="dd2">
							银行名称
						</th>
						<th class="dd2">
							卡号
						</th>
						<th class="dd2">
							开户人
						</th>
						<th class="dd2">
							操作
						</th>
					</tr>
	<c:forEach items="${bankList}" var="o">
					<tr>
						<td class="dd2">
								${o.id}
							</td>
							<td class="dd2">
								${o.title}
							</td>
							<td class="dd2">
								${o.cardNo}
							</td>
							<td class="dd2">
								${o.personName}
							</td>
							<td class="dd2">
								<a href="bank-update!show.action?id=${o.id}">
									<span class="icon_edit">修改</span>
								</a>
								<a href="bank-list!del.action?id=${o.id}">
									<span class="icon_delete">删除</span>
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