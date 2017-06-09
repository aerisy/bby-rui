<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">信息服务系统</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="htUserInfo.do?method=home" target="mainFrame">首页 <span class="sr-only">(current)</span></a></li>
				<c:forEach var="menu" items="${parentMenus }">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">${menu.resourceName }<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<c:forEach var="m" items="${menu.set }">
							<li><a href="${m.resourceUrl }" target="mainFrame">${m.resourceName }</a></li>
						</c:forEach>
						<!-- <li class="divider"></li> -->
					</ul>
				</li>
				</c:forEach>
			</ul>
			<!-- <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form> -->
			<ul class="nav navbar-nav navbar-right">
			
				<li><a href="#">未读消息 <span class="badge">${wdxxCount }</span></a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">个人中心
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">个人设置</a></li>
						<li><a href="#">密码修改</a></li>
						<li class="divider"></li>
						<li><a href="#">退出</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>