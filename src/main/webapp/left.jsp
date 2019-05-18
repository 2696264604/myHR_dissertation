<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>" />
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<LINK href="css/style_cn.css" type=text/css rel=stylesheet>
<LINK href="css/leftPage.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript>
	function forward(url) {
		parent.frames["mainFrame"].location.href = url;
	}
	function show(num, state, msize) {
		if (state == 1) {
			document.getElementById("tr0_" + num).state = "0";
			document.getElementById("tr1_" + num).style.display = "";
		} else {
			document.getElementById("tr0_" + num).state = "1";
			document.getElementById("tr1_" + num).style.display = "none";
		}
		hide(num, msize);
	}
	function hide(num, msize) {
		for (var i = 0; i < msize; i++) {
			if (i != num) {

				var state = document.getElementById("tr0_" + i).state;
				if (state != 1) {
					document.getElementById("tr0_" + i).state = "1";
					document.getElementById("tr1_" + i).style.display = "none";
					var src = document.getElementById("img_" + i).src;
					document.getElementById("img_" + i).src = src.substr(0, src
							.lastIndexOf("/"))
							+ "/zhankai.png";
				}
			}
		}
	}
</SCRIPT>
</head>
<body>
	<TABLE class=bigtable cellSpacing=0 cellPadding=0 width=156 border=0>
		<!-- title -->
		<TBODY>
			<TR>
				<TD class=buttom_lr_line width="100%" background=images/zcdbtbj.png
					height=30>
					<DIV class=divfont align=center>操作菜单</DIV>
				</TD>
			</TR>
			<TR>
				<!--  内容及下环线开始   -->
				<TD width="100%">
					<!--  循环主menu开始   --> <shiro:hasAnyRoles
						name="admin,personnel,staff">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_0 onClick="show('0',this.state,'9');" state="1">
									<TD class=buttom_lr_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack onClick="">我的人事</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_0 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_0 style="DISPLAY: none">
									<TD class=buttom_lr_line02 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line02
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed02><a href="${pageContext.request.contextPath}/systemManagement/userManagement.do" 
																		target="mainFrame">员工信息</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line03
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																			</div>
																	</TD>
																	<TD class=unnamed03><a href="sale/dev.html"
																		target="mainFrame">员工合同</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line04
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																			</div>
																	</TD>
																	<TD class=unnamed04><a href="sale/dev.html"
																		target="mainFrame">员工调动</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line05
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																			</div>
																	</TD>
																	<TD class=unnamed05><a href="sale/dev.html"
																		target="mainFrame">员工工资</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line06
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																			</div>
																	</TD>
																	<TD class=unnamed06><a href="sale/dev.html"
																		target="mainFrame">员工考勤</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line07
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																			</div>
																	</TD>
																	<TD class=unnamed07><a href="sale/dev.html"
																		target="mainFrame">员工培训</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line08
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																			</div>
																	</TD>
																	<TD class=unnamed08><a href="sale/dev.html"
																		target="mainFrame">员工效绩</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>

									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel,staff">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_1 onClick="show('1',this.state,'9');" state="1">
									<TD class=buttom_lr_line1
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack1 onClick="">基础资料</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_1 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_1 style="DISPLAY: none">
									<TD class=buttom_lr_line11 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line11
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed11><a href="sale/list.html"
																		target="mainFrame">机构管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line12
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed12><a href="sale/dev.html"
																		target="mainFrame">合同工资设置</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line13
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed13><a href="sale/dev.html"
																		target="mainFrame">人事权限设定</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_2 onClick="show('2',this.state,'9');" state="1">
									<TD class=buttom_lr_line9
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack9 onClick="">招聘选拔</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_2 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_2 style="DISPLAY: none">
									<TD class=buttom_lr_line91 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line91
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed91><a href="sale/list.html"
																		target="mainFrame">人员需求流程</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line92
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed92><a href="sale/dev.html"
																		target="mainFrame">人员需求审批</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line93
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed93><a href="sale/dev.html"
																		target="mainFrame">需求流程监控</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line93
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed93><a href="sale/dev.html"
																		target="mainFrame">需求申请查询</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line94
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed94><a href="sale/dev.html"
																		target="mainFrame">招聘计划</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line95
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed95><a href="sale/dev.html"
																		target="mainFrame">招聘计划审批</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line96
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed96><a href="sale/dev.html"
																		target="mainFrame">计划流程监控</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line97
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed97><a href="sale/dev.html"
																		target="mainFrame">招聘计划查询</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_3 onClick="show('3',this.state,'9');" state="1">
									<TD class=buttom_lr_line2
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack2 onClick="">人事档案</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_3 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>

								<TR id=tr1_3 style="DISPLAY: none">
									<TD class=buttom_lr_line21 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line21
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed21><a href="sale/list.html"
																		target="mainFrame">人员需求流程</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line22
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed22><a href="sale/dev.html"
																		target="mainFrame">人员需求审批</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line23
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed23><a href="sale/dev.html"
																		target="mainFrame">需求流程监控</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line24
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed24><a href="sale/dev.html"
																		target="mainFrame">需求申请查询</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line25
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed25><a href="sale/dev.html"
																		target="mainFrame">招聘计划</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line26
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed26><a href="sale/dev.html"
																		target="mainFrame">招聘计划审批</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line27
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed27><a href="sale/dev.html"
																		target="mainFrame">计划流程监控</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line28
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed28><a href="sale/dev.html"
																		target="mainFrame">招聘计划查询</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>

									</TD>
								</TR>

							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="personnel">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_4 onClick="show('4',this.state,'9');" state="1">
									<TD class=buttom_lr_line3
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack3 onClick="">人事调动</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_4 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_4 style="DISPLAY: none">
									<TD class=buttom_lr_line31 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line31
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed31><a href="sale/list.html"
																		target="mainFrame">员工调动</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line32
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed32><a href="sale/dev.html"
																		target="mainFrame">员工离职</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line33
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed33><a href="sale/dev.html"
																		target="mainFrame">员工复职</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_5 onClick="show('5',this.state,'9');" state="1">
									<TD class=buttom_lr_line4
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack4 onClick="">培训发展</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_5 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_5 style="DISPLAY: none">
									<TD class=buttom_lr_line41 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line41
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed41><a href="sale/list.html"
																		target="mainFrame">培训计划</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line42
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed42><a href="sale/dev.html"
																		target="mainFrame">培训考勤</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line43
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed43><a href="sale/dev.html"
																		target="mainFrame">培训机构</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line44
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed44><a href="sale/dev.html"
																		target="mainFrame">培训讲师</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line45
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed45><a href="sale/dev.html"
																		target="mainFrame">培训课件</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line46
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed46><a href="sale/dev.html"
																		target="mainFrame">培训协议</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line47
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed47><a href="sale/dev.html"
																		target="mainFrame">培训效绩</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel,staff">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_6 onClick="show('6',this.state,'9');" state="1">
									<TD class=buttom_lr_line5
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack5 onClick="">考勤管理</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_6 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_6 style="DISPLAY: none">
									<TD class=buttom_lr_line51 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line51
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed51><a href="sale/list.html"
																		target="mainFrame">考勤数据采集</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line52
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed52><a href="sale/dev.html"
																		target="mainFrame">考勤记录</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line53
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed53><a href="sale/dev.html"
																		target="mainFrame">出差管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line54
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed54><a href="sale/dev.html"
																		target="mainFrame">休假管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line55
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed55><a href="sale/dev.html"
																		target="mainFrame">加班管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel,staff">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_7 onClick="show('7',this.state,'9');" state="1">
									<TD class=buttom_lr_line6
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack6 onClick="">绩效考核</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_7 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_7 style="DISPLAY: none">
									<TD class=buttom_lr_line61 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line61
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed61><a href="sale/list.html"
																		target="mainFrame">绩效等级维护</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line62
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed62><a href="sale/dev.html"
																		target="mainFrame">考核数据采集</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line63
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed63><a href="sale/dev.html"
																		target="mainFrame">考核管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line64
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed64><a href="sale/dev.html"
																		target="mainFrame">奖惩管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles> <shiro:hasAnyRoles name="admin,personnel">
						<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
							border=0>
							<TBODY>
								<TR id=tr0_8 onClick="show('8',this.state,'9');" state="1">
									<TD class=buttom_lr_line7
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';"
										background=images/zlmbtbj.png height=22>
										<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
											border=0 height="24" style="">
											<TBODY>
												<TR>
													<TD width=23 height=22>
														<DIV align=center>
															<IMG height=17 src="images/khgl.png" width=17>
														</DIV>
													</TD>
													<TD class=fBlack7 onClick="">系统管理</TD>
													<TD width=25>
														<DIV align=center>
															<IMG id=img_8 src="images/zhankai.png">
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR id=tr1_8 style="DISPLAY: none">
									<TD class=buttom_lr_line71 style="BACKGROUND-COLOR: #fafcff">
										<TABLE class=buttom_line71
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<TBODY>
												<TR>
													<TD onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<TABLE cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<TBODY>
																<TR>
																	<TD width=23 height=23>
																		<DIV align=center>
																			<IMG height=17 src="images/khbf.png" width=17>
																		</DIV>
																	</TD>
																	<TD class=unnamed71><a href="sale/list.html"
																		target="mainFrame">企业档案</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line72
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed72><a href="sale/dev.html"
																		target="mainFrame">部门管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line73
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed73><a href="sale/dev.html"
																		target="mainFrame">职位管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line74
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed74><a href="sale/dev.html"
																		target="mainFrame">角色管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line75
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<!-- href="${pageContext.request.contextPath}/roles/findAll.do"  href="jsp/systemManagement/user_management.html"-->
																	<TD class=unnamed75><a href="${pageContext.request.contextPath}/systemManagement/userManagement.do" 
																		target="mainFrame">用户管理</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line76
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed76><a href="${pageContext.request.contextPath}/user/findAll.do"
																		target="mainFrame">待办事件</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line77
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed77><a href="sale/dev.html"
																		target="mainFrame">日志查询</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<table class=buttom_line78
											onMouseOver="this.style.cursor='hand';"
											onmouseout="this.style.cursor='auto';" cellSpacing=0
											cellPadding=0 width=152 align=center border=0>
											<tbody>
												<tr>
													<td onMouseOver="this.className='bgstyle1';" onclick=""
														onmouseout="this.className='bgstyle';"
														background=images/zcdbj.png height=23>
														<table cellSpacing=0 cellPadding=0 width="90%"
															align=center border=0>
															<tbody>
																<tr>
																	<td width=23 height=23>
																		<div align=center>
																			<img height=17 src="images/khbf.png" width=17>
																		</div>
																	</TD>
																	<TD class=unnamed78><a href="sale/dev.html"
																		target="mainFrame">初始化密码</a></TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</shiro:hasAnyRoles>
					 <!-- old --> 
					 <%-- <shiro:hasAnyRoles name="admin">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_0 onClick="show('0',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
										border=0 height="24" style="">
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/khgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">营销管理</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_0 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_0 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';" onclick=""
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khbf.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="sale/list.html"
																	target="mainFrame">销售机会管理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<table class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<tbody>
													<tr>
														<td onMouseOver="this.className='bgstyle1';" onclick=""
															onmouseout="this.className='bgstyle';"
															background=images/zcdbj.png height=23>
															<table cellSpacing=0 cellPadding=0 width="90%"
																align=center border=0>
																<tbody>
																	<tr>
																		<td width=23 height=23>
																			<div align=center>
																				<img height=17 src="images/khbf.png" width=17>
																				</div>
																		</TD>
																		<TD class=unnamed1><a href="sale/dev.html"
																			target="mainFrame">客户开发计划</a></TD>
																	</TR>
																</TBODY>
															</TABLE>
														</TD>
													</TR>
											</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					</shiro:hasAnyRoles>  --%> <%-- 	<shiro:hasRole name="personnel">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_2 onClick="show('2',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="97%" align=center
										border=0>
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/xsgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">服务管理</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_2 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_2 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">

									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/wdzx.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="cust_service/add.html"
																	target="mainFrame">服务创建</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>

									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a
																	href="cust_service/dispatch.html" target="mainFrame">服务分配</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>



									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="cust_service/deal.html"
																	target="mainFrame">服务处理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>



									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a
																	href="cust_service/feedback.html" target="mainFrame">服务反馈</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>


								</TD>
							</TR>
						</TBODY>
					</TABLE>
					</shiro:hasRole> --%> <%-- <shiro:hasRole name="staff">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_3 onClick="show('3',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="97%" align=center
										border=0>
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/xsgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">统计报表</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_3 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_3 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';" onclick=""
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/wdzx.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="Report/contribution"
																	target="mainFrame">客户贡献分析</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="jfreechart/cons.html"
																	target="mainFrame">客户构成分析</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					</shiro:hasRole> --%>


				</TD>
			</TR>
		</TBODY>
	</TABLE>
	</TD>
	</TR>
	</TBODY>
	</TABLE>
	</TD>
	</TR>
	</TBODY>
	</TABLE>
	<!--  循环主menu结束   -->
	</TD>
	<!--  内容及下环线开始   -->
	</TR>
	</TBODY>
	</TABLE>
</body>
</html>