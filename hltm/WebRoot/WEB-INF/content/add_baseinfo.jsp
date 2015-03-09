<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://www.mysite.org/mytablib" prefix="pe"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>添加信息页面</title>

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
		
		 <script src="js/nicEdit.js" type="text/javascript"></script>
	</head>

	<body>
		<form class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="col-md-11 col-md-offset-1">
				<h2 class="h2">
					基本信息
				</h2>
			</div>

			<div class="col-md-offset-1 col-md-10">
				<div class="col-md-4 form-group">
					<label class="control-label col-md-4">
						名称：
					</label>
					<div class="col-md-8">
						<input type="text" class="form-control" placeholder="名称"
							name="ani_name" />
					</div>
				</div>
				<div class="col-md-4 form-group">
					<label class="control-label col-md-4">
						发行时间：
					</label>
					<div class="col-md-8">
						<input type="text" class="form-control" placeholder="例:1992-10-02"
							name="ani_time" />
					</div>
				</div>
				<div class="col-md-4 form-group">
					<label class="control-label col-md-4">
						地区：
					</label>
					<div class="col-md-8">
						<select name="ani_zone" class="form-control">
							<pe:zone />
						</select>
					</div>
				</div>
			</div>

			<div class="col-md-10 col-md-offset-1">
				<h2 class="h2">
					图片
				</h2>
				<div class="col-md-12">
					<input type="file" name="file"/>
				</div>
			</div>
		<div class="col-md-11 col-md-offset-1">
				<h2 class="h2">
					简介
				</h2>
			</div>
		<div class="col-md-11 col-md-offset-1">
				<h3 class="h3">
					详细介绍
				</h3>
				<div class="col-md-12">
				<div id="area">
					<textarea rows="15" cols="100" id="details"></textarea>
				</div>
				</div>

			</div>
			<div class="col-md-11 col-md-offset-1">
				<h3 class="h3">
					人物介绍
				</h3>
				<div class="col-md-12">
				<div id="area">
					<textarea rows="15" cols="100" id="roles"></textarea>
				</div>
				</div>
			</div>
			<div class="col-md-11 col-md-offset-1">
				<h3 class="h3">
					CAST
				</h3>
				<div class="col-md-12">
				<div id="area">
					<textarea rows="15" cols="100" id="cast"></textarea>
				</div>
				</div>
			</div>
			<div class="col-md-11 col-md-offset-1">
				<h3 class="h3">
					STAFF
				</h3>
				<div class="col-md-12">
				<div id="area">
					<textarea rows="15" cols="100" id="staff"></textarea>
				</div>
				</div>
			</div>
			<div class="col-md-offset-1 col-md-11">
				<button class="btn btn-primary" onclick="doIt();">提交</button>
			</div>
			<input type="hidden" name="ani_details" id="details_hid"/>
			<input type="hidden" name="ani_roles" id="rols_hid"/>
			<input type="hidden" name="ani_staff" id="staff_hid"/>
			<input type="hidden" name="ani_cast" id="cast_hid"/>
		</form>
		
<script type="text/javascript" src="js/nicEdit.js"></script> <script type="text/javascript">
//<![CDATA[
	var editor=new Array();
 	bkLib.onDomLoaded(function() {
 		editor[0]=new nicEditor({iconsPath : 'js/nicEditorIcons.gif'}).panelInstance('details').nicInstances[0];
 		editor[1]=new nicEditor({iconsPath : 'js/nicEditorIcons.gif'}).panelInstance('roles').nicInstances[0];
 		editor[2]=new nicEditor({iconsPath : 'js/nicEditorIcons.gif'}).panelInstance('cast').nicInstances[0];
 		editor[3]=new nicEditor({iconsPath : 'js/nicEditorIcons.gif'}).panelInstance('staff').nicInstances[0];
 		});
//]]>
</script>
<script>
function doIt(){
	$("#details_hid").val(editor[0].getContent());
	$("#roles_hid").val(editor[1].getContent());
	$("#cast_hid").val(editor[2].getContent());
	$("#staff_hid").val(editor[3].getContent());
	$("form").attr("action","manager/animation_add");
	$("form").submit();
}
</script>
	</body>
</html>
