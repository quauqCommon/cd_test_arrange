<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>角色列表</title>
</head>
<script>
	$(function() {
		findRoleList();
	});
	function findRoleList() {
		var obj = $("#list");
		var url = "test/role/roleList";
		var columns = [ {
			"data" : "id"
		}, {
			"data" : "name"
		} , {
			"data" : "sign"
		}, {
			"data" : "description"
		}];
		var data="";
		findList(obj, url, data, columns);
	}
</script>
<body>
	<table id="list" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>名称</th>
				<th>标志</th>
				<th>描述</th>
			</tr>
		</thead>
	</table>
</body>
</html>