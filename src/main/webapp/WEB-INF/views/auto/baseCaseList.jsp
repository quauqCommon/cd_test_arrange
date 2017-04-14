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
        	setCaseName();
        	findProjectList();
            findBaseCaseList();
        });
        function findBaseCaseList() {
            var obj = $("#list");
            var url = "test/baseCase/baseCaseList?caseId="+$("#txtCaseId").val();
            var columns = [{
                "data" : "id"
                },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "width":"200px",
                    "render" : function(data) {
                        var str = "<a href='test/page/auto/caseScriptList?baseCaseId="+data.id+ "' class='link'>"+data.name+"</a>";
                        return str;
                    }
                },
				{
					"data" : "comment"
				},
				{
					"data" : "groupName"
				},
				{
					"data" : "parentGroupName"
				},
				{
					"data" : "projectName"
				},
				{
					"data" : "userName"
				},
				{
					"data" : "status"
				},
				{
					"data" : "kind"
				},
				{
					"data" : "sort"
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
    				"comment" : $("#txtBaseCaseComment").val(),
    				"groupId" : $("#secGroup").val(),
    				"projectId" : $("#secProject").val(),
    				"status" : $("#secBaseCaseStatus").val(),
    				"kind" : $("#secKind").val(),
    				"caseId":$("#txtCaseId").val()
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
        
        
        function showBaseCaseList(obj) {
    		$.ajax({
    			type : 'POST',
    			url : "test/baseCase/baseCaseList?groupId=" + $(obj).val(),
    			async : false,
    			success : function(data) {
    				var obj = data["aaData"];
    				$("#secBaseCase").empty();
    				$("#secBaseCase").append("<option value='0'>新增基础case</option>")
    				for (i = 0; i < obj.length; i++) {
    					var object = obj[i];
    					$("#secBaseCase").append("<option value='"+object["id"]+"'>" + object["name"] + "_" + object["comment"] + "</option>")
    				}
    			}
    		});
    	}
        function changeBaseCase(obj){
        	var arr=$(obj).find("option:selected").text().split("_");
        	if($(obj).val()>0){
        		$("#txtBaseCaseName").val(arr[0]);
				$("#txtBaseCaseComment").val(arr[1]);
        	}else{
        		$("#txtBaseCaseName").val("");
				$("#txtBaseCaseComment").val("");
        	}
        }
    </script>
    <style>

    </style>
</head>
<body>
<ol class="breadcrumb">
			<li class="active"><a href="#" id="breadCaseName">Home</a></li>
		</ol>
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
			<th>Case名称</th>
			<th>描述</th>
			<th>组</th>
			<th>父级组</th>
			<th>项目</th>
			<th>用户</th>
			<th>状态</th>
			<th>前后台</th>
			<th>Sort</th>
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
				<h4 class="modal-title" id="baseCaseModalTitle">BaseCase编辑</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" id="txtBaseCaseId" />
				<input type="hidden" id="txtCaseId" value="${caseId}"/>
				<div class='main-content'>
					<lable class="label">所属项目</lable>
					<select id="secProject" class="form-control" onchange="changeProject(this);">
					</select>
				</div>
				<div class='main-content'>
					<lable class="label">父级组</lable>
					<select id="secParentGroup" onchange="changeGroup(this);" class="form-control"></select>
				</div>
				<div class='main-content'>
					<lable class="label">组</lable>
					<select id="secGroup" onchange="showBaseCaseList(this);" class="form-control"></select>
				</div>
				<div class='main-content' id="baseCaseContainer">
					<lable class="label">BaseCase选择</lable>
					<select id="secBaseCase" onchange="changeBaseCase(this)" class="form-control">
						<option value='0'>新增基础case</option>
					</select>
				</div>
				<div  class='main-content'>
					<lable class="label">状态</lable>
					<select id="secBaseCaseStatus" class="form-control" class="form-control">
						<option value="2">打开</option>
						<option value="1">关闭</option>
					</select>
				</div>
				<div  class='main-content'>
					<lable class="label">前台Or后台</lable>
					<select id="secKind" class="form-control" class="form-control">
						<option value="2">后台</option>
						<option value="1">前台</option>
					</select>
				</div>
				<div class='main-content'>
					<lable class="label">BaseCase名称</lable>
					<input type='text' id="txtBaseCaseName" class="form-control"/>
				</div>
				<div class='main-content'>
					<lable class="label">描述</lable>
					<input type='text' id="txtBaseCaseComment"  class="form-control"/>
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

