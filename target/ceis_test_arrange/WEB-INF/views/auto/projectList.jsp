<%--
  Created by IntelliJ IDEA.
  Project: CEIS
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
            findProjectList();
        });
        function findProjectList() {
            var obj = $("#list");
            var url = "test/project/projectList";
            var columns = [ {
                "data" : "id"
            }, {
                "data" : "name"
            } , {
                "data" : "comment"
            }, {
                "data" : "userName"
            },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "render" : function(data) {
                        var str = "";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='showUpdateProjectPanel(this);'>编辑</a>";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='deleteProject(this);'>删除</a>";
                        return str;
                    }
                }];
            var data = {
                "name":$("#txtProjectName").val()
            };
            findList(obj, url, data, columns);
        }
        function showInsertProjectPanel(){
            $("#btnAddProject").show();
            $("#btnUpdateProject").hide();
            $("#projectModal").modal("show");
        }
        function insertProject(){
            $.ajax({
                type : 'POST',
                url : "test/project/insertProject",
                data : {
                    "name" : $("#txtName").val(),
                    "ip" : $("#txtIp").val(),
                    "userName" : $("#txtUserName").val(),
                    "password" : $("#txtPassword").val(),
                    "category" : $("#secCategory").val()
                },
                success : function(data) {

                    if (data > 0) {
                        alert("添加成功");
                        findProjectList();
                    }
                }
            });
        }
        function deleteProject(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/project/deleteProject?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findProjectList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findProjectList();
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
            <label class="label">用户名：</label><input type="text" class="form-control search-control" id="txtSearchName" onkeyup="findProjectList();"/>
        </div>
    </div>
    <div class="search-line">
        <div class="main-content">
            <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findProjectList();"/>
        </div>
    </div>
    <div class="clear"></div>
    <hr/>
    <div class="main-content center">
        <input type="button" id="btnSearch" onclick="findProjectList();" value="查询" class="btn"/>
    </div>
</div>
<div class="main-container">
    <span class="glyphicon glyphicon-plus add" onclick="showInsertProjectPanel();"></span>
    <table id="list" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Project名称</th>
            <th>描述</th>
            <th>所属用户</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<div class="modal fade" id="projectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="projectModalTitle">机器新增</h4>
            </div>
            <div class="modal-body">
                <input type="hidden" id="txtProjectId" />
                <div class='main-content'>
                    <span class="label">机器名称</span>
                    <input type='text' id="txtName" maxLength="50" class="form-control"/>
                </div>
                <div class='main-content'>
                    <span class="label">IP</span>
                    <input type='text' id="txtIp" maxLength="50" class="form-control"/>
                </div>
                <div class='main-content'>
                    <span class="label">用户名</span>
                    <input type='text' id="txtUserName" maxLength="50" class="form-control"/>
                </div>
                <div class='main-content'>
                    <span class="label">密码</span>
                    <input type='text' id="txtPassword" class="form-control" />
                </div>
                <div class='main-content'>
                    <span class="label">系统</span>
                    <select id="secCategory" class="form-control">
                        <option value="1">Linux</option>
                        <option value="2">Windows</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertProject();" id="btnAddProject">确定</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateProject();" id="btnUpdateProject">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

