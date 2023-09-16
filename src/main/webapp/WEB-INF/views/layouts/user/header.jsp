<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<head>
<decorator:head />
<style>
.logo img {
	width: 210px;
	height: 61px;
	margin-top: -90px;
	background: #fff;
}

.offerNoteWrapper .dotmark {
	color: #ff0000; /* Điều chỉnh màu sắc của văn bản */
	font-size: 16px; /* Điều chỉnh kích thước phông chữ */
	font-weight: bold; /* Điều chỉnh độ đậm của phông chữ */
}

.logo {
	margin-top: 0px; /* Khoảng cách từ logo đến phía trên cùng */
}

.navbar {
	margin-top: 3px;
}

.navbar-search input {
	margin-top: -60px;
	margin-left: -50px;
	width: 330px;
	height: 30px;
	
}
.search-query {
  border-radius: 5px;
}
.fixed-header {
 background: #fff;
  position: fixed;
  position: fixed; top: 37px;
  z-index: 9999;
  height: 70px;
  width: 942px;
  top: 98.6px; 
  left: 50%; 
  transform: translate(-50%, -50%); 
 }
 .row{
padding-top: 8px;

}
.nav-collapse {
    background-color: #ff0000;
    border-radius: 0;
 
</style>

</head>

<header id="header" class="fixed-header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="index.html"> <img
					src="<c:url value='/assets/user/img/LoGoDuongShop02.png' />"
					alt="bootstrap sexy shop">
				</a>
			</h1>
		</div>
		<!-- tim kiem -->
	<div class="span4">
    <form action="<c:url value='/tim-kiem/'/>" class="navbar-search pull-left" method="get">
    <input type="text" name="q" placeholder="Nhập tên sản phẩm..." class="search-query span2" style="border-radius: 20px;">
    <!-- Thêm nút tìm kiếm -->
    <button type="submit" class="btn btn-primary" style="border-radius: 20px; margin-top: -100px; margin-left: 205px;">
        <!-- Thêm icon tìm kiếm từ Font Awesome -->
        <i class="icon-search"></i> Tìm kiếm
    </button>
</form>
</div>
		<div class="span4 alignR" style="position: relative; top: -58px;">
	<p>
		<br> <strong> Gọi mua hàng (24/7) : 091929394959 </strong><br>
		<br>
	</p>
	<a href="<c:url value='/gio-hang/'/>">
    <span class="btn btn-mini">[ 
        <c:if test="${empty Cart}">
            0
        </c:if>
        <c:if test="${not empty Cart}">
            ${TotalQuantyCart}
        </c:if>
    ] <span class="icon-shopping-cart"></span></span> - 
    <span class="badge badge-warning">
        <c:if test="${empty Cart}">
            0 ₫
        </c:if>
        <c:if test="${not empty Cart}">
            <fmt:formatNumber type="number" groupingUsed="true" value="${TotalPriceCart}"/> ₫
        </c:if>
    </span>
</a>
</div>
	</div>

	<!--
Thanh điều hướng
-->
	<div class="navbar" >
		<div class="navbar-inner" style="position: relative; top: -39px;">
			<div class="container" >
				<a data-target=".nav-collapse" data-toggle="collapse"
					class="btn btn-navbar"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="nav-collapse">
					<ul class="nav">
			  <li class="active"><a href="<c:url value='trang-chu' />">Trang chủ	</a></li>
			  <li class=""><a href="#>">Sản phẩm</a></li>
			  <li class=""><a href="3">Bài viết</a></li>
			  <li class=""><a href="#">Liên hệ</a></li>
			  <li class=""><a href="#">Hỗ trợ</a></li>
			  <select
				class="loc" style="position: relative; top: 5px; margin-left: 300px;">
				<option>A - Z</option>
				<option>Cao - Thấp</option>
			</select>
			</ul>

				</div>
			</div>
		</div>
	</div>

</header>

