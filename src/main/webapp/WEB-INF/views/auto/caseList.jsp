<%--
  Created by IntelliJ IDEA.
  Case: cd
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
            findCaseList();
        });
        function findCaseList() {
            var obj = $("#list");
            var url = "test/case/caseList";
            var columns = [ {
                "data" : "id"
            },{
                "targets" : -1,//编辑
                "data" : null,
                "width":"200px",
                "render" : function(data) {
                    var str = "<a href='test/page/auto/baseCaseList?caseId="+data.id+ "' class='link'>"+data.name+"</a>";
                    return str;
                }
            }, {
                "data" : "comment"
            }, {
                "data" : "projectName"
            }, {
                "data" : "userName"
            },{
                    "targets" : -1,//编辑
                    "data" : null,
                    "render" : function(data) {
                        var str = "";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='showUpdateCasePanel(this);'>编辑</a>";
                        str += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' style='cursor:pointer;' onclick='deleteCase(this);'>删除</a>";
                        return str;
                    }
                }];
            var data = {
                "name":$("#txtCaseName").val()
            };
            findList(obj, url, data, columns);
        }
        
        function showInsertCasePanel(){
        	$("#btnUpdateCase").hide();
    		$("#btnAddCase").show();
    		$("#btnCopyCase").hide();
    		$("#btnCopyCheckCase").hide();
    		$("#caseModalTitle").text("Case添加");
            $("#caseModal").modal("show");
        }
        function insertCase(){
            $.ajax({
                type : 'POST',
                url : "test/case/insertCase",
                data : {
                	"name" : $("#txtCaseName").val(),
    				"comment" : $("#txtCaseComment").val(),
    				"projectId" : $("#secProject").val(),
    				"category" : $("#secCategory").val()
                },
                success : function(data) {

                    if (data > 0) {
                        alert("添加成功");
                        findCaseList();
                    }
                }
            });
        }
        function deleteCase(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/case/deleteCase?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findCaseList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findCaseList();
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
            <label class="label">用户名：</label><input type="text" class="form-control search-control" id="txtSearchName" onkeyup="findCaseList();"/>
        </div>
    </div>
    <div class="search-line">
        <div class="main-content">
            <label class="label">IP：</label><input type="text" class="form-control search-control"  id="txtSearchIp" onkeyup="findCaseList();"/>
        </div>
    </div>
    <div class="clear"></div>
    <hr/>
    <div class="main-content center">
        <input type="button" id="btnSearch" onclick="findCaseList();" value="查询" class="btn"/>
    </div>
</div>
<div class="main-container">
    <span class="glyphicon glyphicon-plus add" onclick="showInsertCasePanel();"></span>
    <table id="list" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Case名称</th>
            <th>描述</th>
            <th>项目</th>
            <th>所属用户</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<div class="modal fade" id="caseModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="caseModalTitle">Case编辑</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" id="txtCaseId" />
				<div class='main-content' id="caseNameContainer">
					<lable class="label">Case名称</lable>
					<input type='text' id="txtCaseName" maxLength="40"  class="form-control"/>
				</div>
				<div class='main-content' ID="caseCommentContainer">
					<lable class="label">Case描述</lable>
					<textarea id="txtCaseComment" style="width:300px;height:45px;" maxLength="255" class="form-control" ></textarea>
				</div>
				<div class='main-content'>
					<lable class="label">所属项目</lable>
					<select id="secProject" class="form-control"></select>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertCase();" id="btnAddCase">确定</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateCase();" id="btnUpdateCase">确定</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="copyCase();" id="btnCopyCase">确定</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="copyCheckCase();" id="btnCopyCheckCase">确定</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>

