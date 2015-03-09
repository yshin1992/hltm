<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manage_index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

		<!-- 可选的Bootstrap主题文件（一般不用引入） -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">

		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="js/jquery-1.11.2.js"></script>

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
  <div class="col-md-1 col-md-offset-11"><a href="loginout">注销</a></div>
    <div class="col-md-offset-4 col-md-8">
     <h1>欢迎你，管理员${sessionScope.user.name }</h1>
    </div>
    
    <div class="col-md-offset-5 col-md-7"><h3>功能菜单</h3></div>
    <div class="col-md-offset-4 col-md-4">
    	<ul class="nav nav-pills nav-stacked">
    		<li class="active"><a href="manager/animation_add">增加</a></li>
    		<li class="active"><a href="manager/anmList">查看</a></li>
    		<li class="active"><a href="manager/animation_add">更新</a></li>
    		<li class="active"><a href="manager/animation_add">删除</a></li>
    	</ul>
    </div>
    <hr/>
  </body>
</html>
