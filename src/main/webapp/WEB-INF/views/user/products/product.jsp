<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>

<style>
.product-content {
	overflow-x: hidden;
}
body{
background-color: #F0F8FF;
}
.breadcrumb{
background-color: #F0F8FF;
}
.zoomTool {
	color: #fff;
	background-color: #008000;
}
</style>
<script>
	function redirectToCart() {
		window.location.href = "/gio-hang/";
	}
</script>

</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product-content"
		style="position: relative; top: 159px;">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<h3>
						<p>Danh mục sản phẩm</p>
					</h3>

					<c:forEach var="item" items="${categorys}">
						<li><a href="<c:url value='/san-pham/${item.id}'/>"><span
								class="icon-chevron-sign-right"></span>${item.name}</a></li>
						<li>
					</c:forEach>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Giảm sốc</h2>
				<p>
					Chỉ áp dụng khi đặt hàng trực tuyến <br> <br> <a
						class="defaultBtn" href="#">Bấm Vào </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value='/assets/user/img/paypal.jpg' />"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Sản phẩm sắp ra mắt <br>
				<small>Bấm để xem</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> BẤM XEM</a>
						<img
							src="<c:url value='/assets/user/img/giay-adidas-prophere-triple-white-trang-full-rep-11-dep-chat08.jpg' />"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">XEM</a> <span
									class="pull-right">200.000đ</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							><span class="icon-search"></span> BẤM XEM</a>
						<img
							src="<c:url value='/assets/user/img/giay-converse-run-star-motion-1-png.png' />"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">XEM</a> <span
									class="pull-right">200.000đ</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>
			<!-- <Slides> -->
		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li><a href="products.html">Sản phẩm</a> <span class="divider">/</span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img
										src="<c:url value="/assets/user/img/${product.img }"/>" alt=""
										style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${product.name}</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm" method="get"
							action="<c:url value='/AddCart/${product.id_product}'/>">
							<div class="control-group">
								<label class="control-label"><span><fmt:formatNumber
											type="number" groupingUsed="true" value="${ product.price }" />₫</span></label>
								<div class="controls">
									<input type="number" min="0" value="0" class="span6">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><span>Màu</span></label>
								<div class="controls">
									<select class="span11">
										<option>Đỏ</option>
										<option>Xanh lá</option>
										<option>Xanh dương</option>
										<option>Đen</option>
										<option>Vàng</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label"><span>Sizes</span></label>
								<div class="controls">
									<select class="span11">
										<option>Size 37</option>
										<option>Size 38</option>
										<option>Size 39</option>
										<option>Size 40</option>
									</select>
								</div>
							</div>

							<p>${product.title}</p>

							<button type="submit" class="shopBtn" style="position: relative; background-color: #008000;">
								<span class=" icon-shopping-cart"></span> Thêm giỏ hàng
							</button>
							<button type="submit" class="shopBtn" onclick="redirectToCart() ">
							<span class="icon-shopping-cart"></span> Mua ngay
							</button>

						</form>

					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Chi
							tiết sản phẩm</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Sản phẩm
							liên quan </a></li>

				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">

						<table class="table table-striped">
							<tbody>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Màu:</td>
									<td class="techSpecTD2">${product.name_color}</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Sizes:</td>
									<td class="techSpecTD2">37, 38, 39, 40, 41</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Hỗ trợ:</td>
									<td class="techSpecTD2">0919293949</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Thương hiệu:</td>
									<td class="techSpecTD2"></td>
								</tr>
							</tbody>
						</table>
						${product.details}
					</div>
					<div class="tab-pane fade" id="profile">
						<c:set var="counlist" value="${ productByIDCategory.size()} " />
						<c:if test="${productByIDCategory.size() > 5}">
							<c:set var="counlist" value="4" />
						</c:if>
						<c:forEach var="item" items="${productByIDCategory}" begin="1"
							end="${counlist}" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value="/assets/user/img/${item.img }"/>"
										alt="">
								</div>
								<div class="span6">
									<h5>${item.name}</h5>
									<p>${item.title}</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3>
											<fmt:formatNumber type="number" groupingUsed="true"
												value="${ product.price }" />
											₫
										</h3>
										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Thêm giỏ hàng</a> <a
												href="product_details.html" class="shopBtn"style="position: relative; background-color: #008000;">Xem</a>
										</div>
									</form>
								</div>
							</div>
							<hr class="soft" />
						</c:forEach>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
