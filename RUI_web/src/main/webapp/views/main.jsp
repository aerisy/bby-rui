<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<script type="text/javascript" src="sui/js/jquery.min.js"></script>
<script type="text/javascript" src="sui/sui3/js/sui.js"></script>
<script type="text/javascript" src="sui/js/toastr/toastr.js"></script>
<script type="text/javascript" language="javascript">
	$(function(){
		$('.navbar-nav li').on('click', function() {
			var navlist = $(this).parent().children();
			$(navlist).each(function(i){
				$(this).removeClass("active");
			});
			$(this).addClass("active");
		});
	});

	function showLoading() {
		$("#Sys_loading").modal("show");
	}

	function hideLoading() {
		$("#Sys_loading").modal("hide");
	}

	function iFrameHeight() {
		var tHeight = 0;
		var ifm = document.getElementById("mainFrame");
		var subWeb = document.frames ? document.frames["mainFrame"].document
				: ifm.contentDocument;
		if (ifm != null && subWeb != null) {
			tHeight = subWeb.body.scrollHeight;
		}
		ifm.height = document.documentElement.clientHeight - 44;
		if (ifm.height < tHeight) {
			ifm.height = tHeight;
		}
	}
	/* function iframeAutoHeight() {
		var iframe = document.getElementById("mainFrame");
		var theight = 0;
		if (navigator.userAgent.indexOf("MSIE") > 0
				|| navigator.userAgent.indexOf("rv:11") > 0
				|| navigator.userAgent.indexOf("Firefox") > 0) {
			theight = iframe.contentWindow.document.body.scrollHeight;
		} else {
			theight = iframe.contentWindow.document.documentElement.scrollHeight;
		}
		//theight = theight + 60;
		if (iframe.height > theight && iframe.height < 500) {
			iframe.height = 500;
		}
		iframe.height = iframe.height + 60;
	} */
</script>
<link href="sui/sui3/js/sui.css" rel="stylesheet">
<link href="sui/js/toastr/toastr.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 70px;
}

.load_dialog {
	border: 0px;
	border-radius: 10px;
	background-color: #ccffff;
}

.load_dialog_content {
	padding: 5px 0;
}

.load_label {
	text-align: center;
}

.sk-three-bounce {
  margin: 10px auto;
  width: 80px;
  text-align: center; }
  .sk-three-bounce .sk-child {
    width: 20px;
    height: 20px;
    background-color: #333;
    border-radius: 100%;
    display: inline-block;
    -webkit-animation: sk-three-bounce 1.4s ease-in-out 0s infinite both;
            animation: sk-three-bounce 1.4s ease-in-out 0s infinite both; }
  .sk-three-bounce .sk-bounce1 {
    -webkit-animation-delay: -0.32s;
            animation-delay: -0.32s; }
  .sk-three-bounce .sk-bounce2 {
    -webkit-animation-delay: -0.16s;
            animation-delay: -0.16s; }

@-webkit-keyframes sk-three-bounce {
  0%, 80%, 100% {
    -webkit-transform: scale(0);
            transform: scale(0); }
  40% {
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes sk-three-bounce {
  0%, 80%, 100% {
    -webkit-transform: scale(0);
            transform: scale(0); }
  40% {
    -webkit-transform: scale(1);
            transform: scale(1); } }

</style>
<title>首页</title>
</head>
<body style="padding-top: 41px;">
	<div class="content">
		<div class="content-inner">
			<div class="sui-container">
				<jsp:include page="nav.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<iframe name="mainFrame" id="mainFrame" src="myindex"
		frameborder="0" scrolling="no" height="100%" width="100%"
		onload="javascript:iFrameHeight();"></iframe>
	<div class="modal fade" id="Sys_loading" tabindex="-1" role="dialog"
		data-backdrop="static" data-width="200" aria-hidden="true"
		data-keyboard="false">
		<div class="modal-dialog load_dialog">
			<div class="modal-content load_dialog_content">
				<div class="sk-three-bounce">
					<div class="sk-child sk-bounce1"></div>
					<div class="sk-child sk-bounce2"></div>
					<div class="sk-child sk-bounce3"></div>
				</div>
				<div class="load_label">加载中，请稍后......</div>
			</div>
		</div>
	</div>
</body>
</html>