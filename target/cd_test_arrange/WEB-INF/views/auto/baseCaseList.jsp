<%--
  Created by IntelliJ IDEA.
  BaseCase: cd
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
            findBaseCaseList();
        });
        function findBaseCaseList() {
            var obj = $("#list");
            var url = "test/baseCase/baseCaseList?caseId="+$("#txtCaseId").val();
            var columns = [{
                "data" : "id"
                },{
                    "data" : "name"
                },{
                    "data" : "baseCaseKey"
                },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "defaultContent" : "<span class='glyphicon glyphicon-pencil' onclick='showUpdateBaseCasePanel(this)' style='cursor:pointer;'>"
                    + "</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-trash'  style='cursor:pointer;' onclick='deleteBaseCase(this);'></span>"
                }];
            var data = {
                "name":$("#txtBaseCaseName").val()
            };
            findList(obj, url, data, columns);
        }
        function showInsertBaseCasePanel(){
            $("#btnAddBaseCase").show();
            $("#btnUpdateBaseCase").hide();
            $("#baseCaseModal").modal("show");
        }
        function insertBaseCase(){
            $.ajax({
                type : 'POST',
                url : "test/baseCase/insertBaseCase",
                data : {
                    "name" : $("#txtBaseCaseName").val(),
                    "baseCasekey" : $("#txtBaseCaseKey").val(),
                    "category" : $("#secCategory").val(),
                    "scriptId" : $("#txtScriptId").val()
                },
                success : function(data) {
                    if (data > 0) {
                        alert("添加成功");
                        findBaseCaseList();
                    }
                }
            });
        }
        function deleteBaseCase(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/baseCase/deleteBaseCase?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findBaseCaseList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findBaseCaseList();
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
            <label class="label">用户名：</label><input type="text" class="form-control search-control" id="txtSearchName" onkeyup="findBaseCaseList();"/>
        </div>
    </div>
    <div class="search-line">
        <div class="main-content">
            <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findBaseCaseList();"/>
        </div>
    </div>
    <div class="clear"></div>
    <hr/>
    <div class="main-content center">
        <input type="button" id="btnSearch" onclick="findBaseCaseList();" value="查询" class="btn"/>
    </div>
</div>
<div class="main-container">
    <span class="glyphicon glyphicon-plus add" onclick="showInsertBaseCasePanel();"></span>
    <table id="list" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>序号</th>
            <th>BaseCase名称</th>
            <th>BaseCaseKey</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<div class="modal fade" id="baseCaseModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="baseCaseModalTitle">脚本添加</h4>
            </div>
            <div class="modal-body">
                <input type="hidden" id="txtBaseCaseId" />
                <input type="hidden" id="txtCaseId" value="${caseId}"/>
                <div class='main-content'>
                    <label>名称</label>
                    <input type='text' class="form-control" id="txtBaseCaseName" />
                </div>
                <div class='main-content'>
                    <label>Key</label>
                    <input type='text' class="form-control"  id="txtBaseCaseKey" />
                </div>
                <div class='main-content'>
                    <label>类型</label>
                    <select id="secCategory" class="form-control"  onchange="changeSelfCategory(this)">
                        <option value="1">参数</option>
                        <option value="2">返回值</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertBaseCase();" id="btnAddBaseCase">确定</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateBaseCase();" id="btnUpdateBaseCase">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

