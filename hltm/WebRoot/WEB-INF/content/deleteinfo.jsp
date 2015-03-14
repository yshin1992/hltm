<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deleteinfo.jsp' starting page</title>
    
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
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://www.mysite.org/mytablib" prefix="pe" %>
	<style>
	table{
		width:100%;
	}
	td{
		padding:2px;
	}
	</style>
  </head>
  
  <body>
    <pe:leadhead/>
    <div class="col-md-10 col-md-offset-1">
    	<input type="checkbox" id="selectAll" />全选
    </div>
    <div class="col-md-5 col-md-offset-1">
    <form method="post">
    <table class="table-bordered">
    	<c:forEach items="${anmList }" var="ani">
    	<tr><td>
    		<input type="checkbox" name="ids"  id="check${ani.aiid }" value="${ani.aiid }"/>${ani.name }	
    	</td></tr>
    	</c:forEach>
    </table>
    </form>
    </div>
    <div class="col-md-10 col-md-offset-1">
    	<button type="button" id="anti" class="btn btn-primary">反选</button>&nbsp;&nbsp;
    	<button type="button" id="deleteBtn" class="btn btn-primary">删除</button>
    </div>
    <script type="text/javascript">
    	$("#selectAll").click(function(){
    		 if ($(this).is(":checked")) {
    			 //这里若用attr("checked", true)会存在bug
                 $("[name='ids']:checkbox").prop("checked", true);
             } else {
                 $("[name='ids']:checkbox").prop("checked", false);
             }
    	});
    	$("[name='ids']:checkbox").click(function(){
    		$("#selectAll").prop("checked",false);
    	});
    	$("#anti").click(function(){
    		//获取选中的checkbox
    		var checked=$("input[name='ids']:checked");
    		//获取未被选中的checkbox
    		var unchecked=$("input[name='ids']").not("input:checked");
    		//下面两行是设置反选操作
    		$(checked).prop("checked",false);
    		$(unchecked).prop("checked",true); 
    	});
    	$("#deleteBtn").click(function(){
    		var checked=$("input[name='ids']:checked");
    		if(checked.length>0){
    			$("form").attr("action","manager/animation_delete");
    			$("form").submit();
    		}
    		else{
    			alert("至少选择一项");
    		}
    		
    	});
    </script>
  </body>
</html>
