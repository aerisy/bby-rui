<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LIST页面</title>
<jsp:include page="include.jsp"></jsp:include>
</head>
<body>
	<div class="content">
		<div class="container">
			<div class="msg msg-block ">
				<button id="J_addsuppliers" data-toggle="modal"
					data-target="#J_Dialog_main"
					data-remote="way.do?page&v=3&p=addUserinfo" data-width="large"
					data-backdrop="static" class="btn btn-primary icon icon-plus-sign">添加用户</button>
				<a href="javascript:void(0);" data-toggle="modal"
					data-remote="way.do?page&p=icons" data-target="#J_Dialog_main"
					data-width="large" data-title="图标展示" class="btn btn-primary">ICONS</a>
			</div>
			<div id="J_addsuppliersDialog" tabindex="-1" role="dialog"
				class="modal hide fade" data-addsupplierurl="http://"
				data-getsuppliersurl="http://xxx">
				<div class="modal-dialog">
					<jsp:include page="addUserinfo.jsp"></jsp:include>
				</div>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th width="20px">ID</th>
						<th width="14%">姓名</th>
						<th width="30px">性别</th>
						<th width="10%">籍贯</th>
						<th width="10%">联系电话</th>
						<th width="10%">身份证</th>
						<th width="10%">家庭住址</th>
						<th width="">备注</th>
						<th width="12%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.list}" varStatus="i" var="l">
						<tr>
							<td>${l.id }</td>
							<td>${l.name }</td>
							<td>${l.sex }</td>
							<td>${l.city }</td>
							<td>${l.tel }</td>
							<td>${l.idcard }</td>
							<td>${l.address }</td>
							<td>${l.desc }</td>
							<td>
								<!-- <a data-toggle="tooltip" data-placement="bottom"
									title="删除用户，删除后不可恢复！">删除</a> --> <!-- <a href="javascript:void(0);" class="sui-btn btn-small btn-danger"><i class="sui-icon icon-plus-sign"></i>删除</a> -->
								<a href="javascript:void(0);" data-toggle="modal"
								data-remote="way.do?page&p=infoDialog&id=${l.id }"
								data-target="#J_Dialog_main" data-width="large"
								data-title="修改用户信息" class="btn btn-small btn-warning">修改</a> <a
								href="javascript:void(0);" data-toggle="modal"
								data-remote="way.do?page&p=infoDialog_viewUser&id=${l.id }"
								data-target="#J_Dialog_main" data-width="small"
								class="btn btn-small btn-info">查看</a> <!-- <div class="sui-btn-group">
										<button class="sui-btn btn-success">E</button>
										<button class="sui-btn btn-danger" title="delete">D</button>
										<button class="sui-btn">P</button>
										<button class="sui-btn">W</button>
									</div> -->
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- <table class="ns-tablegrid" >
			</table> -->
			
			
			<!-- <script type="text/javascript">
				var table = $(".ns-tablegrid");
				alert('${page_list}');
				table.GM({
							supportRemind : false,
							supportDrag : false,
							gridManagerName : 'test',
							//			,disableCache:true
							isCombSorting : true,
							height : 'auto',
							supportAjaxPage : false,
							supportAutoOrder : false,
							supportCheckbox : false,
							supportSorting : true,
							ajax_data : '${page_list}',
							//ajax_url : 'way.do?userlist',
							//		,ajax_url: 'http://127.0.0.1:1314/learnLinkManager/getLearnLinkList'
							//			,ajax_headers: {'header-test': 'baukh'}
							ajax_type : 'POST',
							query : {
								pluginId : 1
							},
							pageSize : 20,
							columnData : [
									{
										key : 'name',
										remind : 'the name',
										width : '100px',
										text : '名称',
										sorting : ''
									},
									{
										key : 'sex',
										text : '性别'
									},
									{
										key : 'password',
										remind : 'the url',
										text : '密码'
									},
									{
										key : 'city',
										remind : 'the createDate',
										width : '100px',
										text : '创建时间',
										sorting : 'DESC',
									/* template : function(createDate,
											rowObject) {
										return new Date(createDate)
												.format('YYYY-MM-DD HH:mm:ss');
									} */
									},
									{
										key : 'address',
										remind : 'the lastDate',
										width : '100px',
										text : '最后修改时间',
										sorting : '',
									/* template : function(lastDate,
											rowObject) {
										return new Date(lastDate)
												.format('YYYY-MM-DD HH:mm:ss');
									} */
									},
									{
										key : 'action',
										remind : 'the action',
										width : '100px',
										text : '操作',
										template : function(action, rowObject) {
											return '<span class="plugin-action edit-action" learnLink-id="'+rowObject.id+'">编辑</span>'
													+ '<span class="plugin-action del-action" learnLink-id="'+rowObject.id+'">删除</span>';
										}
									} ]
							// 分页前事件
							,
							pagingBefore : function(query) {
								console.log(this.ajax_url);
								console.log('pagingBefore', query);
							}
							// 分页后事件
							,
							pagingAfter : function(data) {
								console.log('pagingAfter', data);
							}
							// 排序前事件
							,
							sortingBefore : function(data) {
								this.refresh(true,function(){alert(1)});
								
								console.log('sortBefore', data);
							}
							// 排序后事件
							,
							sortingAfter : function(data) {
								console.log('sortAfter', data);
							}
							// 宽度调整前事件
							,
							adjustBefore : function(event) {
								console.log('adjustBefore', event);
							}
							// 宽度调整后事件
							,
							adjustAfter : function(event) {
								console.log('adjustAfter', event);
							}
							// 拖拽前事件
							,
							dragBefore : function(event) {
								console.log('dragBefore', event);
							}
							// 拖拽后事件
							,
							dragAfter : function(event) {
								console.log('dragAfter', event);
							}
						});

				// 日期格式化,不是插件的代码,只用于处理时间格式化

				// 绑定搜索事件
				document
						.querySelector('.search-action')
						.addEventListener(
								'click',
								function() {
									var _query = {
										name : document
												.querySelector('[name="name"]').value,
										info : document
												.querySelector('[name="info"]').value,
										url : document
												.querySelector('[name="url"]').value
									};
									table.GM('setQuery', _query).GM(
											'refreshGrid', function() {
												console.log('搜索成功...');
											});
								});

				// 绑定重置
				document.querySelector('.reset-action').addEventListener(
						'click', function() {
							document.querySelector('[name="name"]').value = '';
							document.querySelector('[name="info"]').value = '';
							document.querySelector('[name="url"]').value = '';
						});
			</script> -->
			<div class="pagination" id="bby_page"
				page_action="way.do?page&v=3&p=list_SUI3PAGE">
				<input type="hidden" name="pageCount"> <input type="hidden"
					name="totalCount"> <input type="hidden" name="pageNumber">
			</div>
			<script>
				page_SUI("bby_page", "${page.pageSize}", "${page.totalCount}",
						"${page.pageNumber}", "${page.pageSize}");
			</script>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>