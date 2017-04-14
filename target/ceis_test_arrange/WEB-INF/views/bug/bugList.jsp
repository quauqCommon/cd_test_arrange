<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bug列表</title>
<script>
	$(function() {
		findBugList();
	});
	function findBugList() {
		var obj = $("#list");
		var url = "test/bug/bugList";
		var columns = [ {
			"data" : "id"
		}, {
			"data" : "bug_id"
		}, {
			"data" : "severity"			
		}, {
			"data" : "priority"			
		}, {
			"data" : "bug_title"			
		}, {
			"data" : "creater"			
		}, {
			"data" : "assign"			
		}, {
			"data" : "solvers"			
		}, {
			"data" : "solution"			
		}, {
			"data" : "modify_date"			
		}, {
			"data" : "status"			
		}];
		var data = {
				"status":$("#txtContent").val()
		};
		findList(obj, url, data, columns);
		//固定写法
	}
	function deleteBug(id){
		alert(id);
	}
</script>
</head>
<body>
	<input type="text" id="txtContent" onkeyup="findBugList();"/>
	<table id="list" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>id</th>
				<th>bugID</th>
				<th>严重程度</th>
				<th>优先级</th>
				<th>Bug标题</th>
				<th>创建者</th>
				<th>指派给</th>
				<th>解决者</th>
				<th>解决方案</th>
				<th>修改日期</th>
				<th>状态</th>

			</tr>
		</thead>
	</table>
</body>
</html>