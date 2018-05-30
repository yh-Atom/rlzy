<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path+ "/";

%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>登录页面</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/user/login.js"></script>

</head>
<body>
	<div class="bg center-block">
	<br>	
	<h2 class="text-center" style="color: white;">人创天地有限公司账目管理系统</h2>

<title>用户登录界面</title>
<!--------------------------------------------------------------------------------->
<script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<!--------------------------------------------------------------------------------->
<link rel="stylesheet" href="<%=basePath%>css/login.css">
<script src="<%=basePath%>js/user/login.js"></script>
<!-------------------------------------------z-------------------------------------->
<link rel="stylesheet" href="<%=basePath%>css/toastr.css">
<script src="<%=basePath%>js/toastr.js"></script>
<!--------------------------------------------------------------------------------->
</head>
<body>
<div class="contain center-block">
	<!-- 导航 -->
	<nav id="navbar" class="navbar navbar-default navbar-fixed-top" 
	 style=" background-color: #13599d;">
		<div style="width: auto; float: left; line-height: 78px; margin: 0 0 0 30px; font-size: 30px; color: white;">
			人力资源管理</div>
	</nav>
	</div>
	
</body>
</html>