<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

		<!-- 可选的Bootstrap主题文件（一般不用引入） -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">

		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="js/jquery-1.11.2.js"></script>

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="bootstrap/js/bootstrap.min.js"></script>
	<%@ taglib uri="http://www.mysite.org/mytablib" prefix="pe" %>
	<style>
	img{
		margin:10px;
	}
	hr{
		border: 1px dashed lightgray;
		width:100%
	}
	div.hr{
		height:auto;
		margin:-5px;
	}
	</style>
  </head>
  
  <body>
  <pe:leadhead/>
    <div class="col-md-10 col-md-offset-1">
    <div class="col-md-12 hr"><hr/></div>
    <c:forEach var="anm" items="${requestScope.anmList }">
    	<div class="col-md-9"><img src="img/index/circle.jpg"/>
    		<a href="manager/animation_update?index=${anm.aiid }">${anm.name }
    		</a>
    		</div>
    	<div class="col-md-3">上次编辑于2015-3-12 23:12:22</div>
    	<div class="col-md-12 hr"><hr/></div>
    </c:forEach>
    </div>
  </body>
</html>
