<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
<script>
	$(function() {
		findUserList();
	});
	function findUserList() {
		var obj = $("#list");
		var url = "test/user/userList";
		var columns = [ {
			"data" : "id"
		}, {
			"data" : "name"
		} ,
		{
			"targets" : -1,//编辑
			"data" : null,
			"defaultContent" : "<span class='glyphicon glyphicon-pencil' onclick='showUpdateClientPanel(this)' style='cursor:pointer;'>"
					+ "</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-trash'  style='cursor:pointer;' onclick='deleteClient(this);'></span>"
		}];
		var data = {
			"name":$("#txtUserName").val()
		};
		findList(obj, url, data, columns);
	}
	function showInsertUserPanel(){
		$("#btnUpdateUser").hide();
		$('#userModal').modal('show');
	}
	function insertUser(){
		$.ajax({
			type : 'POST',
			url : "test/user/insertUser",
			data : {
				"name" : $("#txtName").val(),
				"password" : $("#txtPassword").val()
			},
			success : function(data) {
				if (data > 0) {
					alert("添加成功");
					findUserList();
				}
			}
		});
	}
</script>
<style>

</style>
</head>
<body>
	<div class="search-box">
		<input type="text" id="txtUserName" onkeyup="findUserList();"/>
	</div>
	<div class="main-container">
		<span class="glyphicon glyphicon-plus add" onclick="showInsertUserPanel();"></span>
		<table id="list" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>用户名</th>
					<th>操作</th>
				</tr>
			</thead>
		</table>
	</div>
	<div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="userModalTitle">用户新增</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="txtUserId" />
					<div class='main-content'>
						<span class="label">用户名</span>
						<input type='text' id="txtName" maxLength="50"/>
					</div>
					<div class='main-content'>
						<span class="label">密码</span>
						<input type='text' id="txtPassword" />
					</div>
				</div>
				<div class="modal-footer">
					
					<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertUser();" id="btnAddUser">确定</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateUser();" id="btnUpdateUser">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>