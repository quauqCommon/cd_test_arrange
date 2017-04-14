<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->


<head>


<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>Arrange</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<meta name="MobileOptimized" content="320">

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN THEME STYLES -->

<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages/tasks.css" rel="stylesheet" type="text/css" />
<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color" />

<link href="assets/plugins/jauery-datatable/css/dataTables.bootstrap.min.css" type="text/css" />
<link href="assets/plugins/bootstrap-dialog/css/bootstrap-dialog.css" type="text/css" />
<link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->

<link rel="shortcut icon" href="app/img/favicon.ico" />





<!-- 天气插件 By YC -->
<script>(function(T,h,i,n,k,P,a,g,e){g=function(){P=h.createElement(i);a=h.getElementsByTagName(i)[0];P.src=k;P.charset="utf-8";P.async=1;a.parentNode.insertBefore(P,a)};T["ThinkPageWeatherWidgetObject"]=n;T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});T[n].l=+new Date();if(T.attachEvent){T.attachEvent("onload",g)}else{T.addEventListener("load",g,false)}}(window,document,"script","tpwidget","//widget.thinkpage.cn/widget/chameleon.js"))</script>
<script>tpwidget("init", {
    "flavor": "bubble",
    "location": "WX4FBXXFKE4F",
    "geolocation": "disabled",
    "position": "top-right",
    "margin": "3px 150px",
    "language": "zh-chs",
    "unit": "c",
    "theme": "black",
    "uid": "UF0D8D5132",
    "hash": "d838236d9f8499b5a4d8b5af7d6c9093"
});
tpwidget("show");</script>


</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner">
			<!-- BEGIN LOGO -->
			<a class="navbar-brand" href="javascript:;">
				<H4>CEIS</H4>
			</a>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <img src="assets/img/menu-toggler.png" alt="" />
			</a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<ul class="nav navbar-nav pull-right">
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> 
						<img alt="" src="assets/img/avatar1_small.jpg" /> 
						<span class="name"> ${userInfo.name } </span> 
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="javascript:;" id="trigger_fullscreen"> <i class="fa fa-move"></i> 全屏
						</a></li>
						<li><a href="extra_lock.html"> <i class="fa fa-lock"></i> 锁屏
						</a></li>
						<li><a href="test/user/logout"> <i class="fa fa-key"></i> 退出
						</a></li>
					</ul></li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<ul class="page-sidebar-menu" id="page-sidebar-menu" >
					<li class="sidebar-toggler-wrapper">
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
						<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					</li>

					<li class="start active"><a href="test/page/dashboard" id="btn-dashboard"> <i class="fa fa-home"></i><span class="title"> 首页 </span><span class="selected"> </span>
					</a></li>
					<li class=""><a href="javascript:;"> <i class="fa fa-tasks"></i><span class="title"> 任务列表 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="test/page/taskList"> 任务列表 </a></li>
							<li><a href="test/page/dayTaskList"> 值班人任务提醒 </a></li>
						</ul></li>
						
					<li class=""><a href="javascript:;"> <i class="fa fa-bug"></i><span class="title"> BUG列表 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="test/page/bugList"> bug列表 </a></li>
							<li><a href="test/page/bugChart"> bug统计报表 </a></li>
						</ul>
					</li>

					<li class=""><a href="javascript:;"> <i class="fa fa-gears"></i><span class="title">日常工作 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="test/page/userList">工作安排 </a></li>
							<li><a href="test/page/roleList">基础测试 </a></li>
							<li><a href="javascript:;">随机测试</a></li>
							<li><a href="javascript:;">影响范围分析测试 </a></li>
						</ul></li>
					<li class=""><a href="javascript:;"> <i class="fa  fa-asterisk"></i><span class="title">接口自动化 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="test/page/auto/caseList" class="link">Case管理 </a></li>
							<li><a href="test/page/auto/projectList" class="link">项目管理 </a></li>
							<li><a href="test/page/auto/scriptList" class="link">脚本管理</a></li>
							<li><a href="javascript:;">Case维护 </a></li>
						</ul></li>
					<li class=""><a href="javascript:;"> <i class="fa  fa-asterisk"></i><span class="title">运维自动化 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="test/page/operation/computerList" class="link">机器管理 </a></li>
						</ul></li>
					<li class=""><a href="javascript:;"> <i class="fa fa-user"></i><span class="title">工作反馈 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="javascript:;">本周工作总结 </a></li>
							<li><a href="javascript:;">下周工作安排 </a></li>
							<li><a href="javascript:;">建议意见 </a></li></ul></li>
                    <li class=""><a href="javascript:;"> <i class="fa  fa-asterisk"></i><span class="title">信息维护 </span><span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="test/page/userList" class="link">部门人员 </a></li>
							<li><a href="test/page/roleList">内部事件 </a></li>
							<li><a href="javascript:;">批发商维护</a></li>
							<li><a href="javascript:;">Case维护 </a></li>
						</ul></li>
							<!-- 测试权限控制 -->
							<shiro:hasAnyRoles name="admin">
								<li>
									<a href="javascript:;">super_admin 拥有此角色</a>
									<shiro:hasPermission name="user:create">
										<a href="javascript:;">user:create 拥有此权限</a>
									</shiro:hasPermission>
								</li>
							</shiro:hasAnyRoles>

							<shiro:hasPermission name="user:update">
								<li><a href="javascript:;">user:update 拥有此权限</a></li>
							</shiro:hasPermission>

						</ul></li>

				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">Widget settings form goes here</div>
							<div class="modal-footer">
								<button type="button" class="btn blue">Save changes</button>
								<button type="button" class="btn default" data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->
				<div class="theme-panel hidden-xs hidden-sm" style="top:10px;">
					<div class="toggler"></div>
					<div class="toggler-close"></div>
					<div class="theme-options">
						<div class="theme-option theme-colors clearfix">
							<span> 主题颜色 </span>
							<ul>
								<li class="color-black current color-default" data-style="default"></li>
								<li class="color-blue" data-style="blue"></li>
								<li class="color-brown" data-style="brown"></li>
								<li class="color-purple" data-style="purple"></li>
								<li class="color-grey" data-style="grey"></li>
								<li class="color-white color-light" data-style="light"></li>
							</ul>
						</div>
						<div class="theme-option">
							<span> 布局 </span> <select class="layout-option form-control input-small">
								<option value="fluid">顺序</option>
								<option value="boxed">盒状</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 标题 </span> <select class="header-option form-control input-small">
								<option value="fixed">固定</option>
								<option value="default">默认</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 工具栏 </span> <select class="sidebar-option form-control input-small">
								<option value="fixed">固定</option>
								<option value="default">默认</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 工具栏位置 </span> <select class="sidebar-pos-option form-control input-small">
								<option value="left">左边</option>
								<option value="right">右边</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 页脚 </span> <select class="footer-option form-control input-small">
								<option value="fixed">固定</option>
								<option value="default">默认</option>
							</select>
						</div>
					</div>
				</div>
				<!-- END STYLE CUSTOMIZER -->
				<div  id="main-content"></div>
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">Copyright &copy; 2016-2017  测试部工作管理系统</div>
		
	</div>
	<!--[if lt IE 9]>
        <script src="assets/plugins/respond.min.js"></script>
        <script src="assets/plugins/excanvas.min.js"></script>
        <![endif]-->
	<script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

	<script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>

	<script src="assets/scripts/app.js" type="text/javascript"></script>
	<script type="text/javascript" src="app/js/index.js"></script>
	
	<script src="assets/plugins/jauery-datatable/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jauery-datatable/dataTables.bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap-dialog/js/bootstrap-dialog.js" type="text/javascript"></script>
	<script src="assets/scripts/common.js" type="text/javascript"></script>
	<!-- <script data-main="app/js/main" src="app/lib/requirejs/require.js"></script> -->
</body>
</html>