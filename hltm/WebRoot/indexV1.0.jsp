<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE HTML">
<html>
	<head>
		<base href="<%=basePath%>">
		<!-- 首页 -->
		<title>动漫下载-红旅动漫</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

		<!-- 可选的Bootstrap主题文件（一般不用引入） -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">

		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="js/jquery-1.11.2.js"></script>

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<style>
.ulstyle {
	background-color: #2095D7;
}

.ulstyle a {
	color: #fff;
}

/*背景颜色渐变*/
#search {
	height: 50px;
	vertical-align: middle;
	background-color: #2095D7;
	padding-top: 8px;
}

.tiplist {
	color: red;
	font-weight: bold;
	font-size: 15px;
}

.linear {
	FILTER: progid :     DXImageTransform.Microsoft.Gradient (    
		gradientType =     0, startColorStr =     #E3E3E3, endColorStr =    
		white );
	/*IE 6,7,8*/
	background: -ms-linear-gradient(top, #E3E3E3, #fff); /*IE 10*/
	background: -moz-linear-gradient(top, #E3E3E3, #fff); /*火狐*/
	background: -webkit-gradient(linear, 0%, 0%, 0%, 100%, from(#E3E3E3),
		to(#fff) ); /*safari 4-5,Chrome 1-9*/
	background: -webkit-linear-gradient(top, #E3E3E3, #fff);
	/*Safari5.1 Chrome 10+*/
	background: -o-linear-gradient(top, #fff, #0000ff); /*Opera 11.10+*/
}

.btncenter {
	vertical-align: middle;
	padding-top: 3px;
}

.tablefont {
	font-size: 10px;
}

.hr1 {
	border: 1px #e3e3e3 dashed;
	width: 100%;
	margin-top: 0px;
	margin-bottom: 0px;
}

.ulnav {
	background-color: #F0F0F0;
	color: lightgray;
	font-weight: bold;
}

.ulnav li {
	padding-left: 0px;
	padding-right: 0px;
	text-align: center;
	border-left: 1px solid lightgray;
}

.ulnav li a.moveon {
	background: -ms-linear-gradient(top, #E3E3E3, #fff); /*IE 10*/
	background: -moz-linear-gradient(top, #E3E3E3, #fff); /*火狐*/
	background: -webkit-gradient(linear, 0%, 0%, 0%, 100%, from(#E3E3E3),
		to(#fff) ); /*safari 4-5,Chrome 1-9*/
	background: -webkit-linear-gradient(top, #E3E3E3, #fff);
	/*Safari5.1 Chrome 10+*/
	background: -o-linear-gradient(top, #fff, #0000ff); /*Opera 11.10+*/
	color: red;
}

div.img {
	text-align: center;
	margin-top: 10px;
}

div.desc {
	font-weight: normal;
	font-size: 12px;
	margin: 10px 5px 10px 5px;
	padding: 0px;
	overflow: hidden;
}

.listTitle {
	font-size: 14px;
	font-weight: bold;
	color: darkgray;
	padding: 5px 0px;
}

.listItem {
	font-size: 13px;
	padding: 5px 0px;
}

.btn-list {
	height: 20px;
	width: 23px;
	padding: 0px 2px;
}

.alphaTitle {
	font-size: 13px;
	color: red;
	font-weight: bold;
	padding: 5px;
}

.listTable {
	border: 0px;
	width: 100%;
	font-size: 12px;
}

.listTable tr td {
	height: 20px;
	padding: 3px;
	width: 20%;
	overflow: hidden;
}

.listImage {
	margin: 5px;
}

.divhidden {
	height: 20px;
	overflow: hidden;
	float: left;
	font-size: 13px;
}
</style>
	</head>

	<body>
		<div class="container">
			<!-- 顶部的背景图片 -->
			<div class="row">
				<div class="col-md-offset-1 col-md-10">
					<img src="img/index/top_bg.gif" alt="top_bg" width="100%" />
				</div>
			</div>
			<!-- 导航 -->
			<div class="row">
				<div class="col-md-offset-1 col-md-10">
					<ul class="nav navbar-nav ulstyle">
						<li>
							<a class="active" href="#">首页</a>
						</li>
						<li>
							<a href="#">连载动漫</a>
						</li>
						<li>
							<a href="#">完结动漫</a>
						</li>
						<li>
							<a href="#">新番介绍</a>
						</li>
						<li>
							<a href="#">动漫新闻</a>
						</li>
						<li>
							<a href="#">动漫音乐</a>
						</li>
						<li>
							<a href="#">动漫美图</a>
						</li>
						<li>
							<a href="#">论坛</a>
						</li>
						<li>&nbsp;&nbsp;</li>
					</ul>
					
					<!-- 搜索框 -->
					<div id="search">
						<form class="form-inline">
							<div class="input-group">
							<div class="input-group-addon"><span class="glyphicon glyphicon-search" ></span></div>
								<input type="text" class="form-control" placeholder="动漫名称">
							</div>
							<button type="submit" class="btn btn-default">
								搜索
							</button>
						</form>
					</div>
				</div>
			</div>
			<!-- 字母索引 -->
			<div class="row">
				<div class="col-md-offset-1 col-md-10">
				<table class="table-bordered" style="width:100%;"><tr><td>&nbsp;
				<img src="img/index/btn-chrlist.gif"/>
				<% for(char i='A';i<='Z';i++) {%>
					<button type="button" class="btn btn-info navbar-btn" style="width:28px;padding:2px;"><%=i %></button>
				<%} %>
				</td></tr></table>
				</div>
			</div>
			<div class="row" style="margin-top:10px;">
				<div class="col-md-offset-1 col-md-8">
					<table class="table-bordered" style="width:100%;line-height:25px">
					<tr>
							<td>
								<div class="tiplist linear col-md-10">
									节目单 注意个别连载资源可能因日本TV停播或者字幕组片源问题,更新列表会有误差^o^
								</div>
								<div class="col-md-2 btncenter linear">
									<div class="col-md-6 col-md-offset-4">
										<button class="linear btn btn-default"
											style="height: 20px; font-size: 10px; padding: 2px;">
											更&nbsp;多&nbsp;&nbsp;&gt;&gt;
										</button>
									</div>
								</div>
								<div class="tiplist col-md-12 linear">
									2015年一月新番
								</div>
								<div class="col-md-12 tablefont">
									<div class="col-md-1">周三</div><div class="col-md-11">美男高中地球防卫部LOVE! 高达创战者 第二季 魔神之骨</div>
									<hr class="hr1"/>
								</div>
								<div class="col-md-12 tablefont">
									<div class="col-md-1">周四</div><div class="col-md-11">火影忍者 寄生兽 生命的准则 舰娘 新妹魔王的契约者 军人少女 血型君 第二季/血型君2</div>
									<hr class="hr1"/>
								</div>
								<div class="col-md-12 tablefont">
									<div class="col-md-1">周五</div><div class="col-md-11">幸腹涂鸦 偶像活动 铳皇无尽的法夫纳 高达G之复国运动 苍穹之法芙娜 东京食尸鬼第二季 路人女主的养成方法/不起眼女主角培育法 Pankis!2次元 宠物小精灵XY 四月是你的谎言</div>
									<hr class="hr1"/>
								</div>
							</td>
						</tr>
					</table>

					<table class="table-bordered" style="width:100%;margin-top:10px;">
						<tr>
							<td>
								<ul class="nav nav-tabs ulnav">
									<li class="col-md-3">
										<a class="moveon" href="#">新增连载动漫</a>
									</li>
									<li class="col-md-3">
										<a href="#">新增完结动漫</a>
									</li>
									<li class="col-md-3">
										<a href="#">热门连载动漫</a>
									</li>
									<li class="col-md-3">
										<a href="#">经典完结动漫</a>
									</li>
								</ul>
								
							<c:forEach items="{1,2}" varStatus="stauts">
								<div class="col-md-12">
								<c:forEach items="{1,2,3,4}" varStatus="stauts">
									<div class="col-md-3 img">
										<a href="#"><img src="img/index/xinliaoshi.jpg"
												 width="125" height="165" style="border:1px solid darkgray;"> </a>
										<div class="desc">
											<a href="#">动画心疗系/漫画心疗系</a>
										</div>
									</div>
								</c:forEach>
								</div>
							</c:forEach>
							</td>
						</tr>
					</table>
					<div class="col-md-2" style="padding:0px;margin-top:10px;">
						<table class="table-bordered" style="width:100%;">
							<tr>
								<td class="listTitle linear">2015一月新番排行</td>
							</tr>
								<c:forEach items="{1,2,3,4,5,6,7,8,9,10}" var="index" varStatus="status">
								<tr>
									<td class="listItem">
										<div class="divhidden">
											<button type="button" class="btn btn-info btn-list" >${status.count }.</button>
											<a href="#">东京食尸鬼第二季</a>
										</div>
									</td>
								</tr>
								</c:forEach>
						
						</table>
					</div>
					
					<div class="col-md-10" style="padding:0px;padding-left:10px;margin-top:10px;">
						<table class="table-bordered" style="width:100%;">
							<tr>
								<td>
									<div class="linear alphaTitle">字母 A - D</div>
									<table class="listTable">
									<c:forEach items="{1,2,3,4,5,6,7,8}">
										<tr>
											<td>
												<div class="divhidden">
													<img src="img/index/circle.jpg" class="listImage" />
													<a href="#">ARK9</a>
												</div>
												<hr class="hr1"/>
											</td>
											<td>
												<div class="divhidden">
													<img src="img/index/circle.jpg" class="listImage" />
													<a href="#">AKB0048</a>
												</div>
												<hr class="hr1"/>
											</td>
											<td>
												<div class="divhidden">
													<img src="img/index/circle.jpg" class="listImage" />
													<a href="#">阿滋漫画大王/阿兹漫画大王</a>
												</div>
													<hr class="hr1"/>
											</td>
											<td>
												<div class="divhidden">
													<img src="img/index/circle.jpg" class="listImage" />
													<a href="#">Angel Beats!</a>
												</div>
												<hr class="hr1"/>
											</td>
											<td>
												<div class="divhidden">
													<img src="img/index/circle.jpg" class="listImage" />
													<a href="#">机器化的妖精们</a>
												</div>
												<hr class="hr1"/>
											</td>
											</tr>
											</c:forEach>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-md-2" style="padding-left:0px;">
					<table class="table-bordered" style="width:100%">
						<tr>
							<td class="listTitle linear" style="padding-left:10px;color:darkgray">
								动漫更新列表
							</td>
						</tr>
						<tr>
							<td>
							<% for(int i=0;i<40;i++){ %>
								<div class="divhidden" style="padding-top:5px;height:30px;">
									<img src="img/index/liststyle.jpg"/><a href="#">新妹魔王的契约者第9集更新</a>
								</div>
								<hr class="hr1" />
							<%} %>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
