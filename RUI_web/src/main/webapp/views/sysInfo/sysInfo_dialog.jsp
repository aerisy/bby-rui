<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal-content">
	<div class="modal-header">
		<button type="button" data-dismiss="modal" aria-hidden="true"
			class="close">×</button>
		<h4 id="myModalLabel" class="modal-title">${sys.infoTitle }
			<small><fmt:formatDate value="${sys.createTime }"
					pattern="yyyy-MM-dd HH:mm" /></small> <small>${sys.userName }</small>
		</h4>
	</div>
	<div class="modal-body">
		<div class="row">
			<div class="col-md-12">${sys.infoContent }</div>
			<div class="col-md-12"><h5><span class="label label-default">回复内容：</span></h5></div>
		</div>
		<div class="row">
			<div class="col-md-10  col-md-offset-1">
				<c:forEach items="${page.list}" var="e" varStatus="i">
					<div class="alert alert-success text-default" role="alert">
						<i class="typcn typcn-user alert-icon"></i>
						<div class="alert-content">
							<h6 style="margin:5px 0;"><fmt:formatDate value="${e.createTime }" pattern="yyyy-MM-dd HH:mm:ss" /> &nbsp;&nbsp; ${e.username }</h6>
							${e.replyContent }
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- 		<div class="panel panel-info">
			<div class="panel-body">
				<div class="row">
				</div>
			</div>
			</div> -->
	</div>
	<div class="modal-footer">
		<form action="sys.do?method=saveReply" data-toggle='validate'>
			<div class="form-group">
				<input type="hidden" id="DD" name="infoid" value="${sys.id}">
				<input type="hidden" name="infouser" value="${sys.createUser}">
				<input type="text" class="form-control" name="replyContent" placeholder="请输入回复内容" data-rule-required='true' data-rule-minlength='6'>
			</div>
			<button type="button" class="btn btn-primary btn-large" onclick="ns_bt_submit(this)">回复</button>
		</form>
	</div>
</div>