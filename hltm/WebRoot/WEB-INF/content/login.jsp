<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  	<div class="col-md-6 col-md-offset-5"><h3 class="h3">用户登录</h3></div>
    <form action="login" method="post" class="form-horizontal">
    <div class="col-md-6 col-md-offset-3">
				<div class="form-group">
					<label class="col-md-2 control-label">
						用户名:
					</label>
					<div class="col-md-10">
						<input type="text" class="form-control" placeholder="用户名"
						name="name" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">
						密码:
					</label>
					<div class="col-md-10">
					<input type="password" class="form-control" placeholder="******"
						name="pass" />
						</div>
				</div>
				<div class="col-md-offset-3 col-md-3" >
				<input type="submit" class="form-control" value="提交">
				</div>
				<div class="col-md-offset-1 col-md-3" >
				<input type="reset" class="form-control" value="重置"/>
				</div>
    </div>
    
    </form>
  </body>
</html>
