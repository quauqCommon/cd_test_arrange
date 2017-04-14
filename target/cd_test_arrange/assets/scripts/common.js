/**
 * created by wangyp
 */


function findList(o,u,d,c){
	$(o).DataTable({
		"ordering" :false,
		"destroy":true,
		"searching":false,
		"serverSide":true,
		"ajax" : {
			"type":"post",
			"url":u,
			"data":d,
		},
		"columns" : c,
				"aoColumnDefs" : [ {
					sDefaultContent : '',
					aTargets : [ '_all' ]
				} ],
				"oLanguage" : {
					"sLengthMenu" : "每页显示 _MENU_ 条记录",
					"sZeroRecords" : "抱歉， 没有找到",
					"sInfo" : "从 _START_ 到 _END_ 共 _TOTAL_ 条数据",
					"sInfoEmpty" : "没有数据",
					"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
					"oPaginate" : {
						"sFirst" : "首页",
						"sPrevious" : "上一页",
						"sNext" : "后一页",
						"sLast" : "尾页"
					}
				}
	});
}
$(function(){
    $(document).on("click",".link",function(e){
        e.preventDefault();
        var url = this.href;
        if (url != null && url != 'javascript:;') {
            $.get(url, function(data) {
                $('#main-content').html("<div style='height:50px;'></div>"+data);//By yc
            });
        }
    });
});