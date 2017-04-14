<%--
  Created by IntelliJ IDEA.
  CaseScript: cd
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
        	setBaseCaseName();
        	findProjectList();
            findCaseScriptList();
        });
        function findCaseScriptList() {
            $.ajax({
                type : 'POST',
                url : "test/caseScript/caseScriptList?baseCaseId="+$("#txtBaseCaseId").val(),
                success : function(data) {
                	
                    var caseScriptList=data["aaData"];
                    $("#caseScriptListContainer").empty();
                    var str="";
                    for(i=0;i<caseScriptList.length;i++){
                    	var caseScript=caseScriptList[i];
                    	str+="<div class='caseScriptContainer'>";
                    	str+="	<div class='caseScriptHeadContainer'>";
                    	str+=		caseScript["name"];
                    	str+="	</div>";
                    	str+="	<div class='caseScriptContentContainer'>";
                    	var dataMapList=caseScript["dataMapList"];
                    	str+="		<div class='main-content'>";
                    	for(j=0;j<dataMapList.length;j++){
                    		var dataMap=dataMapList[j];
                    		var caseData=dataMap["caseData"];
                    		var dataValue=caseData["dataValue"]==undefined?"":caseData["dataValue"];
                    		
                    		str+="		<div class='dataMapContainer'>";
                    		str+="			<label class='label'>"+dataMap["dataMapKey"]+"</label>"
                    		str+="			<input type='text' id='"+caseData["id"]+"' value='"+dataValue+"' class='form-control dataContainer_"+caseScript["id"]+"' />";
                    		str+="		</div>";
                    		
                    	}
                    	str+="		    <div class='clear'></div>"
                    	
                    	str+="		</div>";
                    	str+="	</div>";
                    	
                    	str+="</div>";
                    	str+="<div class='caseScriptOption'>";
                        str+="	<span class='glyphicon glyphicon-plus'></span>";
                        str+="	<span class='glyphicon glyphicon-floppy-save' onclick='updateCaseData("+caseScript["id"]+");'></span>";
                        str+="	<span class='glyphicon glyphicon-minus'></span>";
        				str+="</div>";
                    	
                    }
                    $("#caseScriptListContainer").append(str);
                }
            });
        }
        function updateCaseData(caseScriptId){
        	var jsonObject="[";
    		var i=0;
    		var len=$(".dataContainer_"+caseScriptId).length;
    		alert(len);
    		$(".dataContainer_"+caseScriptId).each(function(){
    			i++;
    			if(i==len){
    				jsonObject+="{'id':'"+$(this).attr("id")+"','dataValue':'"+$(this).val()+"'}";
    			}else{
    				jsonObject+="{'id':'"+$(this).attr("id")+"','dataValue':'"+$(this).val()+"'},";
    			}
    			
    		})
    		jsonObject+="]";
    		$.ajax({
    			type : 'POST',
    			url : "test/caseData/updateCaseData",
    			data:"dataJson="+jsonObject,
    			dataType:"json",
    			async : false,
    			success : function(data) {
    				if(data>0){
    					alert("更新成功");
    				}
    			}
    		});
        }
        function inserCaseData(caseScriptId){
        	alert(caseScriptId);
        	$(".dataContainer_"+caseScriptId).each(function(){
        		alert($(this).attr("id"));
        	});
        }
        function showInsertCaseScriptPanel(){
            $("#btnAddCaseScript").show();
            $("#btnUpdateCaseScript").hide();
            $("#caseScriptModal").modal("show");
        }
        function insertCaseScript(){
            $.ajax({
                type : 'POST',
                url : "test/caseScript/insertCaseScript",
                data : {
                    "name" : $("#txtCaseScriptName").val(),
                    "comment" : $("#txtCaseScriptComment").val(),
                    "scriptId" : $("#secScript").val(),
                    "baseCaseId" : $("#txtBaseCaseId").val()
                },
                success : function(data) {
                    if (data > 0) {
                        alert("添加成功");
                        findCaseScriptList();
                    }
                }
            });
        }
        function deleteCaseScript(obj){
            if(confirm("确定要删除")){
                $.ajax({
                    type : 'POST',
                    url : "test/caseScript/deleteCaseScript?id="+ $(obj).parent("td").siblings().eq(0).text(),
                    async : false,
                    success : function(data) {
                        if (data > 0) {
                            alert("删除成功");
                            findCaseScriptList();
                        }
                    },
                    error : function() {
                        alert("删除失败,请联系开发人员");
                        findCaseScriptList();
                    }
                });
            }
        }
        function changeScript(obj){
            var arr=$(obj).find("option:selected").text().split("_");
            if($(obj).val()>0){
                $("#txtCaseScriptName").val(arr[0]);
                $("#txtCaseScriptComment").val(arr[1]);
            }else{
                $("#txtCaseScriptName").val("");
                $("#txtCaseScriptComment").val("");
            }
        }
    </script>
    <style>

    </style>
</head>
<body>


<div class="main-container">
	<div id="menu-container">
		<span class="glyphicon glyphicon-plus add" style="top:8px;right:15px;" onclick="showInsertCaseScriptPanel();"></span>
		<ol class="breadcrumb">
			<li><a href="#" id="breadCaseName">Home</a></li>
			<li class="active"><a href="#" id="breadBaseCaseName">breadBaseCaseName</a></li>
		</ol>
	</div>
    
    <div class="clear main-content"></div>
    
    <div id="caseScriptListContainer">
    	
    </div>
</div>
<div class="modal fade" id="caseScriptModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="caseScriptModalTitle">脚本添加</h4>
            </div>
            <div class="modal-body">
                <input type="hidden" id="txtCaseScriptId" />
                <input type="hidden" id="txtBaseCaseId" value="${baseCaseId}"/>
                <div class='main-content'>
					<lable class="label">所属项目</lable>
					<select id="secProject" class="form-control" onchange="changeProject(this)"/>
				</div>
				<div class='main-content'>
					<lable class="label">父级组</lable>
					<select id="secParentGroup" onchange="changeGroup(this)" class="form-control"></select>
					
				</div>
				<div class='main-content'>
					<lable class="label">组</lable>
					<select id="secGroup" onchange="showScriptList(this)" class="form-control"></select>
					
				</div>
				<div class='main-content'>
					<lable class="label">Script</lable>
					<select id="secScript" onchange="changeScript(this)" class="form-control"></select>
				</div>
				<div class='main-content'>
					<lable class="label">CaseScript名称</lable>
					<input type='text' id="txtCaseScriptName" class="form-control" />
				</div>
				<div class='main-content'>
					<lable class="label">描述</lable>
					<input type='text' id="txtCaseScriptComment" class="form-control" />
				</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertCaseScript();" id="btnAddCaseScript">确定</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateCaseScript();" id="btnUpdateCaseScript">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

