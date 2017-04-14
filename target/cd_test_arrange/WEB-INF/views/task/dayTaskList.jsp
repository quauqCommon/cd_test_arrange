<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>每日任务列表</title>
<script>
	$(function() {
		finddayTaskList();
	});
	function finddayTaskList() {
		var obj = $("#list");
		var url = "test/dayTask/dayTaskList";
		var columns = [ {
//			"data" : "id"
//		}, {
//			"data" : "week"
//		},{
			"data" : "content"			
		}];
		var data = {
			"week":$('#week').val()
			};
		findList(obj, url, data, columns);
	}
</script>
</head>
<body>
	<select id = "week"  style = " width : 200px;" class = "form-control search-control" onchange = "finddayTaskList();" >
	  <option value ="周一">周一</option>
	  <option value ="周二">周二</option>
	  <option value="周三">周三</option>
	  <option value="周四">周四</option>
	  <option value="周五">周五</option>
	</select>

<!--<input type="text" id="week" onkeyup="finddayTaskList();"/>  -->	
	<table id="list" class="table table-striped table-bordered">
		<thead>
			<tr>
<!-- 			<th>ID</th>
				<th>星期</th>    -->
				<th>任务内容</th>
			</tr>
		</thead>
	</table>
</body>
</html>