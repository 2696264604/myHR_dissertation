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
<title>用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			<td class="page_title">系统设置</td>
			<td class="page_title_middle">&nbsp;</td>
			<td width=3><IMG height=32 src="images/m_mpr.gif" width=3></td>
		</tr>
	</table>
	<p style="font-size: 11px;">角色等级说明: 1-系统管理员 2-高管 3-职员</p>
	<table class="query_form_table" cellSpacing=1 cellPadding=1
		style="text-align: center;">
		<tr>
			<td width=100% height=30 align=left
				background="images/m_table_top.jpg" colspan="6"><strong>&nbsp;用户管理</strong>
				<a href="${pageContext.request.contextPath}/systemManagement/addUser.do" target="mainFrame"><input class="common_button" type="button"
					value="新增"></a></td>
		</tr>
		<tr>
			<th id="firstth">编号</th>
			<th>用户名</th>
			<th>角色等级</th>
			<th>状态</th>
			<th>操作</th>
		</tr>


		<c:forEach items="${pageinfo.list}" var="user">
			<tr>
				<td>${user.usrId}</td>
				<td>${user.usrName}</td>
				<td>${user.usrRoleId}</td>
				<td><c:if test="${user.usrFlag==1}">
				正常
				</c:if> <c:if test="${user.usrFlag==0}">
				不正常
			    </c:if>
			    </td>
			    <c:choose>
			   <%--  <c:when test="${sessionScope.user.usrRoleId==1}">
					<td class="list_data_op">
						<img onClick="to('sysUser/${user.usrId}/editorUser');" title="编辑"
						src="images/bt_edit.gif" class="op_button" /> 
						<img onClick="to('sysUser/${user.usrId}/${pageinfo.pageNum}/${pageinfo.total}/deleteUser');" title="删除"
						src="images/bt_del.gif" class="op_button" />
					</td>
				</c:when> --%>
				<c:when test="${sessionScope.user.usrName==user.usrName}">
					<td class="list_data_op">
						<img onClick="to('sysUser/${user.usrId}/editorUser');" title="编辑"
						src="images/bt_edit.gif" class="op_button" /> 
						<img onClick="to('sysUser/${user.usrId}/${pageinfo.pageNum}/${pageinfo.total}/deleteUser');" title="删除"
						src="images/bt_del.gif" class="op_button" />
					</td>
				</c:when>
				<c:when test="${sessionScope.user.usrRoleId<user.usrRoleId}">
					<td class="list_data_op">
						<img onClick="to('sysUser/${user.usrId}/editorUser');" title="编辑"
						src="images/bt_edit.gif" class="op_button" /> 
						<img onClick="to('sysUser/${user.usrId}/${pageinfo.pageNum}/${pageinfo.total}/deleteUser');" title="删除"
						src="images/bt_del.gif" class="op_button" />
					</td>
				</c:when>
				<c:otherwise>
					<td class="list_data_op"></td>
				</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5">共${pageinfo.total}条记录 每页 5 条
				第${pageinfo.pageNum}页 <a href="sysUser/1/showAllUser">首页</a> <c:choose>
					<c:when test="${pageinfo.hasPreviousPage}">
						<a href="sysUser/${pageinfo.prePage}/showAllUser">上一页</a>
					</c:when>
					<c:otherwise>
						<font color="#ABA8AB">上一页</font>
					</c:otherwise>
				</c:choose> <c:choose>
					<c:when test="${pageinfo.hasNextPage}">
						<a href="sysUser/${pageinfo.nextPage}/showAllUser">下一页</a>
					</c:when>
					<c:otherwise>
						<font color="#ABA8AB">下一页</font>
					</c:otherwise>
				</c:choose> <a href="sysUser/${pageinfo.pages}/showAllUser">尾页</a>
			</td>
		</tr>

	</table>
	<br />
</body>
</html>