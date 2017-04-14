<%--
  Created by IntelliJ IDEA.
  Computer: cd
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
            findComputerList();
        });
        function findComputerList() {
            var obj = $("#list");
            var url = "test/computer/computerList";
            var columns = [ {
                "data" : "id"
            }, {
                "data" : "name"
            } , {
                "data" : "ip"
            }, {
                "data" : "userName"
            }, {
                "data" : "password"
            }, {
                "data" : "category"
            },
                {
                    "targets" : -1,//编辑
                    "data" : null,
                    "render" : function(data) {
                        var str = "";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='showUpdateComputerPanel(this);'>编辑</a>";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='deleteComputer(this);'>删除</a>";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='showCommandPanel(this);'>执行脚本</a>";
                        return str;
                    }
                }];
            var data = {
                "name":$("#txtComputerName").val()
            };
            findList(obj, url, data, columns);
        }
        function showInsertComputerPanel(){
            $("#btnAddComputer").show();
            $("#btnUpdateComputer").hide();
            $("#computerModal").modal("show");
        }
        function insertComputer(){
            $.ajax({
                type : 'POST',
                url : "test/computer/insertComputer",
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
                        findComputerList();
                    }
                }
            });
        }
        function deleteComputer(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/computer/deleteComputer?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findComputerList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findComputerList();
                    }
                });
            }
        }
        function showCommandPanel(obj){

        }
    </script>
    <style>

    </style>
</head>
<body>
    <div class="search-box">
        <div class="search-line">
            <div class="main-content">
                <label class="label">用户名：</label><input type="text" class="form-control search-control"  id="txtSearchName" onkeyup="findComputerList();"/>
            </div>
        </div>
        <div class="search-line">
            <div class="main-content">
                <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findComputerList();"/>
            </div>
        </div>
        <div class="clear"></div>
        <hr/>
        <div class="main-content center">
            <input type="button" id="btnSearch" onclick="findComputerList();" value="查询" class="btn"/>
        </div>
    </div>
    <div class="main-container">
        <span class="glyphicon glyphicon-plus add" onclick="showInsertComputerPanel();"></span>
        <table id="list" class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>机器名</th>
                <th>IP</th>
                <th>登录名</th>
                <th>密码</th>
                <th>系统</th>
                <th>操作</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="modal fade" id="computerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="computerModalTitle">机器新增</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="txtComputerId" />
                    <div class='main-content'>
                        <span>机器名称</span>
                        <input type='text' id="txtName" maxLength="50" class="form-control"/>
                    </div>
                    <div class='main-content'>
                        <span>IP</span>
                        <input type='text' id="txtIp" maxLength="50" class="form-control"/>
                    </div>
                    <div class='main-content'>
                        <span>用户名</span>
                        <input type='text' id="txtUserName" maxLength="50" class="form-control"/>
                    </div>
                    <div class='main-content'>
                        <span>密码</span>
                        <input type='text' id="txtPassword" class="form-control" />
                    </div>
                    <div class='main-content'>
                        <span>系统</span>
                        <select id="secCategory" class="form-control">
                            <option value="1">Linux</option>
                            <option value="2">Windows</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertComputer();" id="btnAddComputer">确定</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateComputer();" id="btnUpdateComputer">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
