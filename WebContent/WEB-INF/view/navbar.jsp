<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<!--------------------------------------------------------------------------------->
<script src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<!--------------------------------------------------------------------------------->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap-select.min.css">
<script src="<%=basePath%>js/bootstrap-select.js"></script>
<!--------------------------------------------------------------------------------->
<link rel="stylesheet"
	href="<%=basePath%>css/navbar/chartist-custom.css">
<link rel="stylesheet" href="<%=basePath%>css/navbar/main.css">
<link rel="stylesheet"
	href="<%=basePath%>css/navbar/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>css/navbar/style.css">
<link rel="stylesheet" href="<%=basePath%>css/table.css">
<!--------------------------------------------------------------------------------->
<link rel="stylesheet" href="<%=basePath%>css/toastr.css" />
<script src="<%=basePath%>js/toastr.js"></script>
<!--------------------------------------------------------------------------------->
<link rel="stylesheet" href="<%=basePath%>css/jquery-confirm.css" />
<script src="<%=basePath%>js/jquery-confirm.js"></script>
<!--------------------------------------------------------------------------------->
<script src="<%=basePath%>js/jquery.bootstrap.wizard.js"></script>
<script src="<%=basePath%>js/vue.js"></script>
<script src="<%=basePath%>js/jquery.slimscroll.min.js"></script>
<script src="<%=basePath%>js/klorofil-common.js"></script>
<!--------------------------------------------------------------------------------->
<link rel="stylesheet" href="<%=basePath%>css/jquery.datetimepicker.css" />
<script type="text/javascript"
	src="<%=basePath%>js/jquery.datetimepicker.full.js"></script>
<!--------------------------------------------------------------------------------->
<script type="text/javascript"
	src="<%=basePath%>js/user/updatePassword.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<nav id="navbar" class="navbar navbar-default navbar-fixed-top"
			style=" background-color: #13599d;">
		<div
			style="width: auto; float: left; line-height: 78px; margin: 0 0 0 30px; font-size: 30px; color: white;">
			人力资源管理</div>
		<div id="navbar-menu">
			<ul style="margin: 0 0 0 20px;" class="nav navbar-nav navbar-left">
				<li class="dropdown" style="float: left;"><a href="#"><span>首页</span>
				</a></li>

				<li class="dropdown" style="float: left;"><a href="<%=basePath%>user/"> <span>人事管理</span></a>

				<li class="dropdown" style="float: left;"><a href="<%=basePath%>manager/"> <span>人员档案</span>

				</a></li>
				<li class="dropdown" style="float: left;"><a
					href="<%=basePath%>user/User_skipToUser"> <span>用户</span>
				</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" style="margin: 0 0px 0 0">
				<!--  -->
				<!--  -->
				<!--  -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-user-circle"></i> <span
						id="USER_NAME"><%=request.getSession().getAttribute("user_name")%></span> <i
						class="icon-submenu lnr lnr-chevron-down"></i>
				</a>
					<ul class="dropdown-menu">
						<li data-toggle="modal" data-target="#updatePassword"><a
							href="#"> <i class="lnr lnr-lock"></i> <span>修改密码</span>
						</a></li>

						<li><a href="<%=basePath%>user/User_logout"> <i

								class="lnr lnr-exit"></i> <span>退出登录</span>
						</a></li>
					</ul></li>
				<!--  -->
			</ul>
		</div>
		</nav>
	<!-------------------------------------------------修改密码---------------------------------------------------------------  -->
		<div class="modal fade" id="updatePassword" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">修改用户</h4>
					</div>
					<div class="modal-body">
						<div id="passwordLoadingDiv"
							style="width: 319px; margin: 0 auto; display: none;">
							<img alt="" src="<%=basePath%>img/loading.gif">
						</div>
						<div id="passwordContent">
							<label>原始密码：</label> <input id="oldPassword" type="password"
								class="form-control" placeholder="请输入旧密码"> <label>新密码：</label>
							<input id="newPassword" type="password" class="form-control"
								placeholder="请输入新密码"> <label>再次输入：</label> <input
								id="newPasswordAgain" type="password" class="form-control"
								placeholder="再次输入新密码">
						</div>
					</div>
					<div class="modal-footer">
						<button onclick="showPwContent()" type="button"
							class="btn btn-default" data-dismiss="modal">关闭</button>
						<button id="updatePwBtn" onclick="updatePw()" type="button"
							class="btn btn-primary">修改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- -------------------------------------------------修改密码成功--------------------------------------------------------------- -->		
	</div>
</body>
<style>
#wrapper nav>div>ul>li>a {
	color: white;
}

td {
	line-height: 33px !important;
	vertical-align: middle !important;
}

th {
	line-height: 34px !important;
	vertical-align: middle !important;
}

td i {
	line-height: 33px !important;
}

td button i {
	line-height: 20px !important;
}

td .label {
	line-height: 33px !important;
}

table select {
	text-align: center !important;
}

table select {
	margin: auto;
}
</style>
<script>
	
</script>
</html>