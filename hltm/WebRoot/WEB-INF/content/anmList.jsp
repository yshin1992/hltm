<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://www.mysite.org/mytablib" prefix="pe" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'anmList.jsp' starting page</title>

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
<style>
div.img{
	border:1px solid lightgray;
	padding:2px;
}
</style>
</head>

<body>
	<pe:leadhead/>
	<div class="col-md-10 col-md-offset-1">
		<c:forEach items="${requestScope.anmList }" var="anm">
			<div class="col-md-3">
				<div class="img"><a href="manager/animation_show?index=${anm.aiid }"><img src="${anm.imgpath }" width="100%" height="150px" /></a></div>
				<div class="col-md-12" style="text-align:center;font-weight:bold"><a href="manager/animation_show?index=${anm.aiid }">${anm.name }</a></div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
