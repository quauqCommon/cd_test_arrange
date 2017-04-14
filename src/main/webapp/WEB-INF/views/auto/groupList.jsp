<%--
  Created by IntelliJ IDEA.
  Group: cd
  Date: 2017/3/24
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        $(function() {
        	findParentGroupList();
            findGroupList();
        });
        function findGroupList() {
            var obj = $("#list");
            var url = "test/group/groupList?projectId="+$("#txtProjectId").val();
            var columns = [ {
                "data" : "id"
            }, {
                "data" : "name"
            } , {
                "data" : "code"
            }, {
                "data" : "parentGroupName"
            },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "render" : function(data) {
                        var str = "";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='showUpdateGroupPanel(this);'>编辑</a>";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='deleteGroup(this);'>删除</a>";
                        str+= "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' value='manage/initGroup?groupId="+data.id+"'  class='link'>组管理</a>";
                        return str;
                    }
                }];
            var data = {
                "name":$("#txtGroupName").val()
            };
            findList(obj, url, data, columns);
        }
        function findParentGroupList(){
        	$.ajax({
        		type : 'POST',
        		url : "test/group/groupList?parentGroupId=-1&projectId="+$("#txtProjectId").val(),
        		async : false,
        		success : function(data) {
        			var parentGroupList=data["aaData"];
        			$("#secParentGroup").append("<option value='-1'>顶级</option>");
        			for(i=0;i<parentGroupList.length;i++){
        				var parenGroup=parentGroupList[i];
        				$("#secParentGroup").append("<option value='"+parenGroup["id"]+"'>"+parenGroup["name"]+"</option>");
        				
        			}
        			
        		}
        	});
        }
        function showInsertGroupPanel(){
            $("#btnAddGroup").show();
            $("#btnUpdateGroup").hide();
            $("#groupModal").modal("show");
        }
        function insertGroup(){
            $.ajax({
                type : 'POST',
                url : "test/group/insertGroup",
                data : {
                	"name" : $("#txtGroupName").val(),
					"projectId" : $("#txtProjectId").val(),
					"parentGroupId" : $("#secParentGroup").val(),
					"code" : $("#txtGroupCode").val()
                },
                success : function(data) {

                    if (data > 0) {
                        alert("添加成功");
                        findGroupList();
                    }
                }
            });
        }
        function deleteGroup(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/group/deleteGroup?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findGroupList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findGroupList();
                    }
                });
            }
        }
    </script>
    <style>

    </style>
</head>
<body>
<div class="search-box">
    <div class="search-line">
        <div class="main-content">
            <label class="label">用户名：</label><input type="text" class="form-control search-control" id="txtSearchName" onkeyup="findGroupList();"/>
        </div>
    </div>
    <div class="search-line">
        <div class="main-content">
            <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findGroupList();"/>
        </div>
    </div>
    <div class="clear"></div>
    <hr/>
    <div class="main-content center">
        <input type="button" id="btnSearch" onclick="findGroupList();" value="查询" class="btn"/>
    </div>
</div>
<div class="main-container">
    <span class="glyphicon glyphicon-plus add" onclick="showInsertGroupPanel();"></span>
    <table id="list" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Group名称</th>
            <th>Code</th>
            <th>父级组</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<div class="modal fade" id="groupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="groupModalTitle">Group编辑</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" id="txtGroupId" /> <input type="hidden" id="txtProjectId" value="${projectId}" />
				<div class='main-content'>
					<lable class="label">Group名称</lable>
					<input type='text' id="txtGroupName"  class="form-control"/>
				</div>
				<div class='main-content'>
					<lable class="label">Group Code</lable>
					<input type='text' id="txtGroupCode"  class="form-control"/>
				</div>
				<div class='main-content'>
					<lable class="label">父级组</lable>
					<select id="secParentGroup" class="form-control">
					
					</select>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertGroup();" id="btnAddGroup">确定</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateGroup();" id="btnUpdateGroup">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

</div>
</body>
</html>

