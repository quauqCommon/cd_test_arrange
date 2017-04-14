<%--
  Created by IntelliJ IDEA.
  DataMap: CEIS
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
            findDataMapList();
        });
        function findDataMapList() {
            var obj = $("#list");
            var url = "test/dataMap/dataMapList";
            var columns = [{
                "data" : "id"
                },
                {
                    "data" : "name"
                },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "defaultContent" : "<span class='glyphicon glyphicon-pencil' onclick='showUpdateDataMapPanel(this)' style='cursor:pointer;'>"
                    + "</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-trash'  style='cursor:pointer;' onclick='deleteDataMap(this);'></span>"
                }];
            var data = {
                "name":$("#txtDataMapName").val()
            };
            findList(obj, url, data, columns);
        }
        function showInsertDataMapPanel(){
            $("#btnAddDataMap").show();
            $("#btnUpdateDataMap").hide();
            $("#dataMapModal").modal("show");
        }
        function insertDataMap(){
            $.ajax({
                type : 'POST',
                url : "test/dataMap/insertDataMap",
                data : {
                    "dataMap.name" : $("#txtDataMapName").val(),
                    "dataMap.key" : $("#txtDataMapKey").val(),
                    "dataMap.category" : $("#secCategory").val(),
                    "dataMap.scriptId" : $("#txtscriptId").val()
                },
                success : function(data) {
                    if (data > 0) {
                        alert("添加成功");
                        findDataMapList();
                    }
                }
            });
        }
        function deleteDataMap(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/dataMap/deleteDataMap?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findDataMapList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findDataMapList();
                    }
                });
            }
        }
    </script>
    <style>

    </style>
</head>
<body>
${scriptId}
<div class="search-box">
    <div class="search-line">
        <div class="main-content">
            <label class="label">用户名：</label><input type="text" class="form-control search-control" id="txtSearchName" onkeyup="findDataMapList();"/>
        </div>
    </div>
    <div class="search-line">
        <div class="main-content">
            <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findDataMapList();"/>
        </div>
    </div>
    <div class="clear"></div>
    <hr/>
    <div class="main-content center">
        <input type="button" id="btnSearch" onclick="findDataMapList();" value="查询" class="btn"/>
    </div>
</div>
<div class="main-container">
    <span class="glyphicon glyphicon-plus add" onclick="showInsertDataMapPanel();"></span>
    <table id="list" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>序号</th>
            <th>DataMap名称</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<div class="modal fade" id="dataMapModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="dataMapModalTitle">脚本添加</h4>
            </div>
            <div class="modal-body">
                <input type="hidden" id="txtDataMapId" />
                <input type="hidden" id="txtScriptId" value="${scriptId}"/>
                <div class='main-content'>
                    <label>名称</label>
                    <input type='text' class="form-control" id="txtDataMapName" />
                </div>
                <div class='main-content'>
                    <label>Key</label>
                    <input type='text' class="form-control"  id="txtDataMapKey" />
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
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addDataMap();" id="btnAddDataMap">确定</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateDataMap();" id="btnUpdateDataMap">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

