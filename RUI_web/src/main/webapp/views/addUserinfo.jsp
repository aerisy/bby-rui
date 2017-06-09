<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal-content">
	<div class="modal-header">
		<button type="button" data-dismiss="modal" aria-hidden="true"
			class="close">×</button>
		<h4 id="myModalLabel" class="modal-title">添加新用户</h4>
	</div>
	<form class="form-horizontal" data-toggle='validate'
		action="way.do?addUserinfo" method="post" id="adduserinfoForm">
		<div class="modal-body">
		
			<!-- <div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3"
						placeholder="Email">
				</div>
			</div> -->
			<div class="form-group">
				<div class="alert alert-success alert-small col-md-10 col-md-offset-1">
					<strong>请填写</strong> <kbd>用户基本</kbd>信息后保存
				</div>
				<div class="alert alert-success col-md-10 col-md-offset-1">
					<p class="text-primary">请填写用户基本信息后保存</p>
				</div>
				<div class="alert alert-success alert-inline  ">
					<p class="text-success">请填写用户基本信息后保存</p>
				</div>
				<div class="alert alert-success alert-inline  ">
					<p class="text-success">请填写用户基本信息后保存</p>
				</div>
				<div class="row">
					<p class="text-info">请填写用户基本信息后保存</p>
				</div>
				<div class="row">
					<p class="text-warning">请填写用户基本信息后保存</p>
				</div>
				<div class="row">
					<p class="text-danger">请填写用户基本信息后保存</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">姓名：</label>
				<div class="col-sm-8">
					<input class="form-control" type='text' name="name"
						data-rule-required='true' />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-8">
					<input class="form-control" type="password" name="password"
						data-rule-minlength='6'> 
				</div>
				<div class="col-sm-2 error-container"></div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">性别：</label>
				<div class="col-sm-8">
					<label class="radio-inline"> <input checked="checked"
						name="sex" type="radio" data-rules="required" value="男"><span>男</span>
					</label> <label class="radio-inline"> <input name="sex"
						type="radio" data-rules="required" value="女"><span>女</span>
					</label>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">联系电话：</label>
				<div class="col-sm-8">
					<input class="form-control" type='text' name="tel"
						data-rules="required|maxlength=20" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">身份证：</label>
				<div class="col-sm-8">
					<input class="form-control" type='text' name="idcard"
						data-rules="required|maxlength=30" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">籍贯：</label>
				<div class="col-sm-8">
					<input class="form-control" type='text' name="city"
						data-rules="required|maxlength=20" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">家庭住址：</label>
				<div class="col-sm-8">
					<input class="form-control" type='text' name="address"
						data-rules="required|maxlength=100" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">备注：</label>
				<div class="col-sm-8">
					<textarea class='form-control' data-rules='maxlength=300'
						name="desc"></textarea>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button type="reset" id="loading_on"
				class="btn btn-primary btn-large">重置</button>
			<button type="button" class="btn btn-primary btn-large ns-submit" onclick="ns_bt_submit(this);">保存用户</button>
		</div>
	</form>
</div>