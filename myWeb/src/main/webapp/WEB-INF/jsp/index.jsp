<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/blog/css/home.css">
<link rel="stylesheet"
	href="resource/bootstrap-3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="resource/bootstrap-3.3.7/css/mystyle.css" />
<link rel="stylesheet" href="resource/bootstrap-3.3.7/css/style.css" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

</head>
<body background="${pageContext.request.contextPath}/blog/images/background.jpg">
	<%@ include file="common/head.jsp"%>
	<div id="main" class="main">
	<input hidden id="isArticleClass" value="1"/>
	<div class="mytitle">
		<h1>CJYBLOG</h1>
		<h3>DEBUG!!!!</h3>
	</div>
	<div class="main_content">
		<div class="main_left">
			<%@ include file="leftPage.jsp"%>

		</div>
		<div class="main_right" id="contentShow">
			<%@ include file="blogList.jsp"%>
			<%@ include file="articleComments.jsp"%>
		</div>

	</div>
<%@ include file="common/tail.jsp"%>
	</div>
</body>

</html>