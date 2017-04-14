<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务列表</title>
<script>
	$(function() {
		findTaskList();
	});
	function findTaskList() {
		var obj = $("#list");
		var url = "test/task/taskList";
		var columns = [ {
			"data" : "id"
		}, {
			"data" : "title"
		},{
			"data" : "content"			
		},{
			"targets" : -1,//编辑
			"data" : null,
			"render" : function(data) {
				var str="";
				str+="<a href='javascript:void(0);' onclick='deleteTask("+data.id+")'>删除</a>";
				return str;
			}
			
		}];
		var data = "";
		findList(obj, url, data, columns);
	}
	function deleteTask(id){
		alert(id);
	}
</script>
</head>
<body>
	<table id="list" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>任务</th>
				<th>内容</th>
				<th>操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>