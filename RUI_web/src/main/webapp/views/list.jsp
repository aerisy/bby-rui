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
		<div class="page-header">
		<h1>用户管理  <small>在这里，你可以对系统用户进行添加、修改、删除等操作</small></h1>
		</div>
			<div class="row">
			<div class="col-md-6" >
					<button id="J_addsuppliers" data-toggle="modal"
						data-target="#J_Dialog_main"
						data-remote="way.do?page&v=3&p=addUserinfo" data-width="large"
						data-backdrop="static" class="btn btn-primary icon icon-plus-sign">添加用户</button>
					<a href="javascript:void(0);" data-toggle="modal"
						data-remote="way.do?page&p=icons" data-target="#J_Dialog_main"
						data-width="large" data-title="图标展示" class="btn btn-primary">ICONS</a>
			</div>
			</div>
			<table id="dtable" class="table table-bordered ns-dataTable " >
				<thead>
					<tr>
						<th width="60px">ID</th>
						<th width="14%">姓名</th>
						<th width="70px">性别</th>
						<th width="10%">籍贯</th>
						<th width="10%">联系电话</th>
						<th width="10%">身份证</th>
						<th width="10%">家庭住址</th>
						<th width="">备注</th>
						<th width="12%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${alllist}" varStatus="i" var="l">
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
								data-title="修改用户信息" class="btn btn-xs btn-warning">修改</a>
								<a href="javascript:void(0);" data-toggle="modal"
								data-remote="way.do?page&p=infoDialog_viewUser&id=${l.id }"
								data-target="#J_Dialog_main" data-width="small"
								class="btn btn-xs btn-info">查看</a> <!-- <div class="sui-btn-group">
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
			<label>
			</label>
			<script>
				$(document).ready(function(){
					$(".ns-dataTable").on('',function(){
						
					}).DataTable({
						'language':{
							'sProcessing':'处理中',
							'sLengthMenu':'_MENU_',//'显示_MENU_  项结果',
							'sZeroRecords':'没有匹配结果',
							'sInfo':'显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项',
							'sInfoFiltered':'（结果从 _MAX_ 条数据中过滤所得）',
							'sInfoEmpty':'(由 _MAX_ 项结果过滤)',
							'sInfoPostFix':'',
							'sSearch':'搜索： ',
							'sUrl':'',
							'sEmptyTable':'表中数据为空',
							'sLoadingRecords':'载入中...',
							'sInfoThousands':',',
							'oPaginate':'',
							'oAria':{
								'sSortAscending':'以升序排列此列',
								'sSortDescending':'以降序排列此列'
							},
							'oPaginate':{
								'sPrevious':'上一页',
								'sNext':'下一页',
								'sFirst':'首页',
								'sLast':'末页'
							}
						},
						'bProcessing':true,
						//'scrollY':500,
						'scrollX':true,
						'bScrollCollapse':true,
						'bStateSave':true
					});
				});
			</script>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>