<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/source/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p><security:authentication property="principal.username"/></p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/aside/redirect"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cogs">
			</i><span>系统管理</span> <span class="pull-right-container">
				<i class="fa fa-angle-left pull-right"></i></span>
			</a>
				<ul class="treeview-menu">
					<security:authorize access="hasRole('ROLE_MANAGER1')">
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/user/redirect1"> <i
							class="fa fa-circle-o"></i> 一级审核
					</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_MANAGER2')">
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/user/redirect2"> <i
							class="fa fa-circle-o"></i> 二级审核
					</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_MANAGER3')">
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/user/redirect3">
							<i class="fa fa-circle-o"></i> 三级审核
					</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_MANAGER4')">
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/user/redirect4"> <i
							class="fa fa-circle-o"></i> 四级审核
					</a></li>
					</security:authorize>
					<security:authorize access="hasAnyRole('ROLE_MANAGER1','ROLE_MANAGER2','ROLE_MANAGER3','ROLE_MANAGER4')">
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/sysLog/getSysLogs"> <i
							class="fa fa-circle-o"></i> 处理日志
					</a></li>
					</security:authorize>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>申请</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/information/redirect1">
							<i class="fa fa-circle-o"></i> 请假申请表
					</a></li>
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/information/getInformations?account=<security:authentication property="principal.username"/>">
						<i class="fa fa-circle-o"></i> 查看进度
					</a></li>
				</ul></li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>