<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>信息业务服务平台</title>
<jsp:include page="include.jsp"></jsp:include>
</head>
<body>
	<div class="content">
		<div class="container">
			<div class="grid-demo">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div id="carousel-example-generic" class="carousel slide" 
							data-ride="carousel" style="height: 300px;">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner center" role="listbox" style="height: 300px;">
								<div class="item active">
									<img
										src=http://localhost:8080/ywlz_sui/image/1.png alt="Pictures">
									<div class="carousel-caption">this is picture1</div>
								</div>
								<div class="item">
									<img
										src="http://localhost:8080/ywlz_sui/image/2.jpg" alt="Pictures">
									<div class="carousel-caption">.this is picture2.</div>
								</div>
								<div class="item">
									<img
										src="http://localhost:8080/ywlz_sui/image/3.jpg" alt="Pictures3">
									<div class="carousel-caption">.this is picture4.</div>
								</div>
								<div class="item">
									<img
										src="http://localhost:8080/ywlz_sui/image/4.jpg"  alt="Pictures3">
									<div class="carousel-caption">.this is picture4.</div>
								</div>
							</div>

							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-generic"
								role="button" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<h2>本月案件统计</h2>
						<div id="main_Echart" style="width: 550px; height: 300px;"></div>
					</div>
					<div class="col-md-6">
						<h2>最新系统公告</h2>
						<div class="panel panel-default">
							<!-- Default panel contents -->
							<!-- <div class="panel-heading">Panel heading</div>
							<div class="panel-body">
								<p>...</p>
							</div> -->

							<!-- Table -->
							<%--<table class="table">
								<thead>
									<tr>
										<th class="bgs-clabel">通知标题</th>
										<th width="160px" class="bgs-clabel">发布时间</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${page.list}" var="e" varStatus="i">
										<tr align="center">
											<td><a href="javascript:void(0);" data-toggle="modal"
												data-remote="sys.do?method=viewInfoReply&id=${e.id}"
												data-target="#J_Dialog_main" data-width="large"
												data-title="系统通知查看">${e.infoTitle }</a></td>
											<td><fmt:formatDate value="${e.createTime }"
													pattern="yyyy-MM-dd HH:mm:ss" /></td>
										</tr>
									</c:forEach>
									<tr align="center">
										<td class="bgs-clabel" colspan="2"><a href="sys.do?method=querySysInfo">查看更多</a></td>
									</tr>
								</tbody>
							</table>--%>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<h2>本月案件分布</h2>
						<div id="main_Echart2" style="width: 550px; height: 300px;"></div>
					</div>
					<div class="col-md-6">
						<div class=" ">
							<a href="way.do?page&v=3&p=list" class="btn btn-primary">用户管理页面页面</a>
							<a href="way.do?page&v=3&p=addBgs_ifm" class="btn btn-primary">报告书申请演示</a>
							<a href="way.do?page&v=3&p=pdfviewer" class="btn btn-primary">PDF在线预览</a>
							<a href="way.do?page&v=3&p=camera" class="btn btn-primary">高拍仪控件展示</a>
							<a href="javascript:void(0);" data-toggle="modal"
								data-remote="way.do?page&p=icons" data-target="#J_Dialog_main"
								data-width="large" data-title="图标展示" class="btn primary"
								data-whatever="@twbootstrap">ICONS</a>
						</div>
						<div>
							<ul>
								<li><i class="typcn typcn-adjust-brightness"></i>1</li>
								<li><i class="typcn typcn-adjust-contrast"></i>1</li>
								<li><i class="typcn typcn-anchor-outline"></i>1</li>
								<li><i class="typcn typcn-anchor"></i>1</li>
								<li><i class="typcn typcn-archive"></i>1</li>
								<li><i class="typcn typcn-arrow-back-outline"></i>1</li>
								<li><i class="typcn typcn-arrow-back"></i>1</li>
								<li><i class="typcn typcn-arrow-down-outline"></i>1</li>
								<li><i class="typcn typcn-arrow-down-thick"></i>1</li>
								<li><i class="typcn typcn-arrow-down"></i>1</li>
								<li><i class="typcn typcn-arrow-forward-outline"></i>1</li>
								<li><i class="typcn typcn-arrow-forward"></i>1</li>
								<li><i class="typcn typcn-arrow-left-outline"></i>1</li>
								<li><i class="typcn typcn-arrow-left-thick"></i>1</li>
							</ul>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					var myChart = echarts.init(document
							.getElementById('main_Echart'), 'vintage');
					var myChart2 = echarts.init(document
							.getElementById('main_Echart2'), 'vintage');
					//var myChart = echarts.init($("#main_Echart"));
					var option = {
						tooltip : {},
						legend : {
							data : [ '刑事案件', '数据案件' ]
						},
						xAxis : {
							data : [ '雁塔分局', '碑林分局', '新城分局', '莲湖分局' ]
						},
						yAxis : {},
						series : [ {
							name : '刑事案件',
							type : 'bar',
							data : [ 100, 392, 78, 239 ]
						}, {
							name : '数据案件',
							type : 'bar',
							data : [ 231, 134, 210, 87 ]
						} ]
					};
					myChart.setOption(option);
					var option2 = {
						tooltip : {},
						legend : {
							data : [ '刑事案件' ]
						},
						series : [ {
							name : '案件类型分布',
							type : 'pie',
							redius : '55%',
							roseType : 'angle',
							data : [ {
								value : 15,
								name : '重大毒品犯罪'
							}, {
								value : 43,
								name : '严重暴力犯罪'
							}, {
								value : 8,
								name : '黑社会性质的组织犯罪'
							}, {
								value : 11,
								name : '危害国家安全犯罪'
							}, {
								value : 23,
								name : '利用电信实施的重大犯罪'
							}, {
								value : 31,
								name : '其他严重危害社会的犯罪'
							} ],
							label : {
								normal : {
									textStyle : {
										color : 'rgb(255,255,255,0.3)'
									}
								}
							},
							labelLine : {
								normal : {
									textStyle : {
										color : 'rgb(255,255,255,0.3)'
									}
								}
							},
						} ]
					};
					myChart2.setOption(option2);
				</script>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
