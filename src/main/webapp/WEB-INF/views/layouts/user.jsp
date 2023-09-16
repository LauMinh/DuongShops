<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><decorator:title default="Maxter-layout" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value='/assets/user/css/bootstrap.css' />"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value='/assets/user/style.css' />" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value='/assets/user/font-awesome/css/font-awesome.css' />"
	rel="stylesheet">

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value='assets/user/ico/favicon.ico' />">
<decorator:head />
<style>
.topNav {
  background-color: #0F3460; /* Màu nền mới */
  margin-top: -3px;
}
 .topNav a {
    color: #fff; 
  }
       
</style>
</head>
<body>
	<!-- 
	Phần tiêu đề trên
-->

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<c:if test="${empty LoginInfor }">
					<a href="#"><span class="icon-user"></span> Tài khoản</a>
					</c:if>
					<c:if test="${not empty LoginInfor }">
					 <a href="#"><span class="icon-user"></span> ${LoginInfor.display_name}</a>
					</c:if>
					
					<c:if test="${not empty LoginInfor }">
					<a href="<c:url value='/dang-xuat' />"><span class="icon-pinterest-sign"></span> Đăng xuất</a>
					</c:if>
					<c:if test="${empty LoginInfor }">
					 <a href="<c:url value='dang-ky' />"><span class="icon-edit"></span> Đăng ký </a>
						<a href="<c:url value='dang-nhap' />"> <span class="icon-edit"></span> Đăng nhập</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<!--
Phần tiêu đề thấp hơn 
-->
	<div class="container">
		<div id="gototop"></div>

		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>

		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>

	</div>
	
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src=" <c:url value="/assets/user/js/jquery.js" />"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js" />"></script>
	<script src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js" />"></script>
	<script src="<c:url value="/assets/user/js/shop.js" /> "></script>
	
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>
