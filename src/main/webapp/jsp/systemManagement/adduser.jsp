<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CRM</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/test1.css" rel="stylesheet" type="text/css">
<script src="script/common.js"></script>
</head>
<body>
	<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<TD class="page_title">系统设置</TD>
			<TD class="page_title_middle">&nbsp;</TD>
			<TD width=3><IMG height=32
				src="${pageContext.request.contextPath}/images/m_mpr.gif" width=3></TD>
		</tr>
	</table>

	<form action="sysUser/addUser" method="post" onsubmit="return check()">
		<table class="query_form_table" cellSpacing=1 cellPadding=1>
			<tr>
				<td width=100% height=30 align=left
					background="images/m_table_top.jpg" colspan="6"><strong>&nbsp;<a
						href="sys/adduser">新建用户</a></strong></td>
			</tr>
			<tr>
				<th>用户编号</th>
				<td><input type="text" name="usrId" /></td>
				<th>用户名</th>
				<td><input type="text" name="usrName" size="20" id="txt" /></td>
			</tr>
			<tr>
				<th>用户密码</th>
				<td><input type="text" name="usrPassword" id="pwd" /><span
					class="red_star">*</span></td>
				<th>用户状态</th>
				<td><input type="text" name="usrFlag" value="1" /><span
					class="red_star">*</span></td>
			</tr>
			<tr>
				<th>用户权限等级</th>
				<td colspan="3"><select name="usrRoleId">
					<c:if test="${sessionScope.user.usrRoleId!=2}">
						<option value="2">2</option>
					</c:if>
						<option value="3">3</option>
						<option value="4">4</option>
				</select><span class="red_star">*</span></td>
			</tr>
			<tr>
				<th>创建人</th>
				<td><input value="" readonly size="20" /><span
					class="red_star">*</span></td>
			</tr>
			<tr>
				<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
					<a href="user/help"> 
					<input class="common_button" type="button" value="帮助"></a> &nbsp;&nbsp;&nbsp; 
					<a href="sysUser/1/showAllUser"> 
					<input class="common_button" type="button" value="返回"></a> &nbsp;&nbsp; 
					<input	type="submit" value="保存">
				</td>
			</tr>
		</table>
	</form>
	<br />
</body>
</html>