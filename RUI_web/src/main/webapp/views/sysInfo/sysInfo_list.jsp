<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>系统公告</title>
<jsp:include page="../include.jsp"></jsp:include>
</head>
<body>
	<div class="content">
		<div class="container">
			<div class="msg msg-block ">
				<button id="J_addsuppliers" data-toggle="modal"
					data-target="#J_Dialog_main"
					data-remote="way.do?page&v=3&p=addUserinfo" data-width="large"
					data-backdrop="static" class="btn btn-primary icon icon-plus-sign">发布通知</button>
			</div>
			<table class="table table-bordered ns-dataTable" width="100%">
				<thead>
					<tr>
						<th width="20px">ID</th>
						<th width="">标题</th>
						<th width="20%">发布时间</th>
						<th width="15%">发布用户</th>
						<th width="20%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.list}" varStatus="i" var="e">
						<tr>
							<td>${i.index+1 }</td>
							<td>${e.infoTitle }</td>
							<td><fmt:formatDate value="${e.createTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td>${e.userName }</td>
							<td>
								<!-- <a data-toggle="tooltip" data-placement="bottom"
									title="删除用户，删除后不可恢复！">删除</a> --> <!-- <a href="javascript:void(0);" class="sui-btn btn-small btn-danger"><i class="sui-icon icon-plus-sign"></i>删除</a> -->
								<a href="javascript:void(0);" data-toggle="modal"
								data-remote="way.do?page&p=infoDialog&id=${e.id }"
								data-target="#J_Dialog_main" data-width="large"
								data-title="修改用户信息" class="btn btn-small btn-warning">修改</a> <a
								href="javascript:void(0);" data-toggle="modal"
								data-remote="sys.do?method=viewInfoReply&id=${e.id}"
								data-target="#J_Dialog_main" data-width="large"
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
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>