<%--
  Created by IntelliJ IDEA.
  Script: cd
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
            findScriptList();
        });
        function findScriptList() {
            var obj = $("#list");
            var url = "test/script/scriptList";
            var columns = [{
                "data" : "id"
                },
                {
                    "targets" : -1,//编辑
                    "data" : null,
                    "width":"200px",
                    "render" : function(data) {
                        var str = "<a href='test/page/auto/dataMapList?scriptId="+data.id+ "' class='link'>"+data.name+"</a>";
                        return str;
                    }
                },
                {
                    "data" : "content"
                },
                {
                    "data" : "comment"
                },
                {
                    "data" : "category"
                },
                {
                    "data" : "selfCategory"
                },
                {
                    "data" : "scriptName"
                },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "defaultContent" : "<span class='glyphicon glyphicon-pencil' onclick='showUpdateScriptPanel(this)' style='cursor:pointer;'>"
                    + "</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-trash'  style='cursor:pointer;' onclick='deleteScript(this);'></span>"
                }];
            var data = {
                "name":$("#txtScriptName").val()
            };
            findList(obj, url, data, columns);
        }
        function showInsertScriptPanel(){
            $("#btnAddScript").show();
            $("#btnUpdateScript").hide();
            $("#scriptModal").modal("show");
        }
        function insertScript(){
            $.ajax({
                type : 'POST',
                url : "test/script/insertScript",
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
                        findScriptList();
                    }
                }
            });
        }
        function deleteScript(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/script/deleteScript?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findScriptList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findScriptList();
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
            <label class="label">用户名：</label><input type="text" class="form-control search-control" id="txtSearchName" onkeyup="findScriptList();"/>
        </div>
    </div>
    <div class="search-line">
        <div class="main-content">
            <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findScriptList();"/>
        </div>
    </div>
    <div class="clear"></div>
    <hr/>
    <div class="main-content center">
        <input type="button" id="btnSearch" onclick="findScriptList();" value="查询" class="btn"/>
    </div>
</div>
<div class="main-container">
    <span class="glyphicon glyphicon-plus add" onclick="showInsertScriptPanel();"></span>
    <table id="list" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>序号</th>
            <th>Script名称</th>
            <th>内容</th>
            <th>描述</th>
            <th>类别</th>
            <th>子类</th>
            <th>项目名称</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<div class="modal fade" id="scriptModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="scriptModalTitle">脚本添加</h4>
            </div>
            <div class="modal-body">
                <input type="hidden" id="txtScriptId" />
                <div class='maincontent'>
                    <label>脚本名称</label>
                    <input type='text' class="form-control" id="txtScriptName" />
                </div>
                <div class='maincontent'>
                    <label>内容</label>
                    <input type='text' class="form-control"  id="txtScriptContent" />
                </div>
                <div class='maincontent'>
                    <label>描述</label>
                    <input type='text' class="form-control"  id="txtScriptComment" />
                </div>
                <div class='maincontent'>
                    <label>类型</label>
                    <select id="secCategory" class="form-control"  onchange="changeSelfCategory(this)">
                        <option value="1">接口</option>
                        <option value="2">数据库</option>
                    </select>
                </div>
                <div class='maincontent'>
                    <label>子类</label>
                    <select id="secSelfCategory" class="form-control" >
                        <option value="1">Post/Sql语句</option>
                        <option value="2">Get/存储过程</option>
                    </select>
                </div>
                <div class='maincontent'>
                    <label>所属项目</label>
                    <s:select id="secProject"  list="scriptList" listKey="id" listValue="name" headerValue='请选择' headerKey='0' onchange="changeParentGroup(this)" cssClass="form-control" />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addScript();" id="btnAddScript">确定</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateScript();" id="btnUpdateScript">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

