$(function() {
	// UI init
	// toastr init
	toastrInit();

	// hideMainLoading();
	// 注册表单事件，提交后返回提示信息，提交后页面跳转
	initNsForm();

	// 初始化page页面，dataTables分页
	initNsPage();

	$('#J_Dialog_main').on('hide', function() {
		$(this).removeData("modal");
	});
	$('#J_Dialog_main').on('shown', function() {
		initNsForm();
	});
	// dialog
	// cd($$("#mainFrame")[0].contentWindow);
	/*
	 * $('#J_Dialog_main').on('show', function() {
	 * //alert($("#J_Dialog_main").find("form").size());
	 * $("#J_Dialog_main").find(".form-horizontal").validate();
	 * $("#J_Dialog_main").find(".ns-submit").click(function(){
	 * submit_SUI(obj_form); }); });
	 */

});

function initNsPage() {
	$(document).ready(function() {
		var datatables = $(".ns-dataTable");
		if (datatables.length > 0) {
			$(".ns-dataTable").on('', function() {

			}).DataTable({
				'language' : {
					'sProcessing' : '处理中',
					'sLengthMenu' : '_MENU_',// '显示_MENU_ 项结果',
					'sZeroRecords' : '没有匹配结果',
					'sInfo' : '显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项',
					'sInfoFiltered' : '（结果从 _MAX_ 条数据中过滤所得）',
					'sInfoEmpty' : '(由 _MAX_ 项结果过滤)',
					'sInfoPostFix' : '',
					'sSearch' : '搜索： ',
					'sUrl' : '',
					'sEmptyTable' : '表中数据为空',
					'sLoadingRecords' : '载入中...',
					'sInfoThousands' : ',',
					'oPaginate' : '',
					'oAria' : {
						'sSortAscending' : '以升序排列此列',
						'sSortDescending' : '以降序排列此列'
					},
					'oPaginate' : {
						'sPrevious' : '上一页',
						'sNext' : '下一页',
						'sFirst' : '首页',
						'sLast' : '末页'
					}
				},
				'bProcessing' : true,
				// 'scrollY':500,
				'scrollX' : true,
				'bScrollCollapse' : true,
				'bStateSave' : true
			});
		}
	});
}

function initNsForm() {
	var jzptht_submitObjs = $(".ns-submit");// document.getElementByClassName('bby-submit');
	for (var i = 0; i < jzptht_submitObjs.length; i++) {
		try {
			var obj = jzptht_submitObjs[i];
			var obj_form = obj.closest("form");
			$(obj).click(function() {
				submit_SUI(obj_form);
			});
		} catch (e) {
		}
	}
}

function ns_bt_submit(btn) {
	var obj_form = $(btn).closest("form");
	submit_SUI(obj_form);
}

/**
 * 表单提交方法
 * 
 * @param s_form
 * @author NineSoft
 */
function submit_SUI(s_form) {
	showMainLoading();
	$.ajax({
		cache : true,
		type : "POST",
		url : $(s_form).attr("action"),
		data : $(s_form).serialize(),// 你的formid
		async : false,
		datatype : "json",
		error : function(data) {
			alertMsgError(data);
			hideMainLoading();
		},
		success : function(datastr) {
			var data = $.parseJSON(datastr);
			var statusCode = data.statusCode;
			var returnType = data.returnType;
			switch (statusCode) {
			case '100':
				alertMsgSuccess(data.message);
				break;
			case '200':
				alertMsgInfo(data.message);
				break;
			case '300':
				alertMsgWarning(data.message);
				break;
			case '400':
				alertMsgError(data.message);
				break;
			default:

			}
			switch (returnType) {
			case 'forward':
				window.location.href = $(s_form).attr("forward");
				break;
			case 'refresh':
				window.location.reload();
				break;
			default:
			}
			hideMainLoading();
			/*
			 * if(data.returnType == 'forward'){ window.location.href =
			 * $(s_form).attr("forward"); } if(data.returnType == 'refresh'){
			 * window.location.reload(); } hideMainLoading();
			 */
		}
	});
}

/**
 * 
 * @param pageid
 *            SUI分页器所在div的ID
 * @param pageSize
 *            每页的大小
 * @param pageCount
 *            数据总条数
 * @param currentPage
 *            当前页数
 */
function page_SUI(pageid, pageSize, totalCount, pageNumber, pageSize) {
	$('#' + pageid).pagination(
			{
				displayInfoType : 'itemsCount',
				itemsCount : totalCount,
				pageSize : pageSize,
				currentPage : parseInt(pageNumber),
				styleClass : [ 'pagination-large' ],
				showCtrl : true,
				displayPage : parseInt(pageSize),
				onSelect : function(num) {
					showMainLoading();
					window.location.href = $("#" + pageid).attr("page_action")
							+ "&page_currentPage=" + num;
				}
			});
}

function showMainLoading() {
	window.parent.showLoading();
}

function hideMainLoading() {
	window.parent.hideLoading();
}

function alertMsgInfo(msg) {
	window.parent.toastr.info(msg);
}

function alertMsgSuccess(msg, title) {
	window.parent.toastr.success(msg, title);
}

function alertMsgError(msg) {
	window.parent.toastr.error(msg);
}

function alertMsgWarning(msg) {
	window.parent.toastr.error(msg);
}

function toastrInit() {
	window.parent.toastr.options = {
		"positionClass" : "toast-top-full-width",
		"timeOut" : "600000"
	};
}

function sysInfoAlert(msg) {
	window.parent.toastr.options = {
		"positionClass" : "toast-bottom-right",
		"timeOut" : "0"
	};
	window.parent.toastr.info(msg);
	toastrInit();
}