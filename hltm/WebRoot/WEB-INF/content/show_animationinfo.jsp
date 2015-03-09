<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show_animationinfo.jsp' starting page</title>
    
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
    <div class="col-md-10 col-md-offset-1">
				<h2 class="h2">
					基本信息
				</h2>
			</div>

			<div class="col-md-offset-1 col-md-10">
				<div class="col-md-4 form-group">
					<label class="control-label col-md-4">
						名称：
					</label>
					<div class="col-md-8" id="ani_name">${requestScope.animation.name }
					</div>
				</div>
				<div class="col-md-4 form-group">
					<label class="control-label col-md-4">
						发行时间：
					</label>
					<div class="col-md-8" id="ani_time"><fmt:formatDate value="${requestScope.animation.time }" pattern="yyyy-MM-dd"/>
					</div>
				</div>
				<div class="col-md-4 form-group">
					<label class="control-label col-md-4">
						地区：
					</label>
					<div class="col-md-8" id="ani_zone">${requestScope.animation.zone }
					</div>
				</div>
			</div>

		<div class="col-md-10 col-md-offset-1">
				<h2 class="h2">
					图片
				</h2>
				<div class="col-md-12">
					<img src="${requestScope.animation.imgpath }"/>
				</div>
			</div>
		<div class="col-md-10 col-md-offset-1">
				<h2 class="h2">
					简介
				</h2>
			</div>
		<div class="col-md-10 col-md-offset-1">
				<h3 class="h3">
					详细介绍
				</h3>
				<div class="col-md-12">
				<div id="ani_details">${requestScope.animation.details }
				</div>
				</div>

			</div>
			<div class="col-md-10 col-md-offset-1">
				<h3 class="h3">
					人物介绍
				</h3>
				<div class="col-md-12">
				<div id="ani_roles">${requestScope.animation.roles }
				</div>
				</div>
			</div>
			<div class="col-md-10 col-md-offset-1">
				<h3 class="h3">
					CAST
				</h3>
				<div class="col-md-12">
				<div id="ani_cast">${requestScope.animation.cast }
				</div>
				</div>
			</div>
			<div class="col-md-10 col-md-offset-1">
				<h3 class="h3">
					STAFF
				</h3>
				<div class="col-md-12">
				<div id="ani_staff">${requestScope.animation.staff }
				</div>
				</div>
			</div>
  </body>
</html>
