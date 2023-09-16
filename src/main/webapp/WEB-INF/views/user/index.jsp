<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<head>
<title>Trang Chủ</title>

<style>
.discount-badge {
	position: absolute;
	top: 2px;
	left: 2px;
	background-color: #FFFF00;
	color: #DC143C;
	padding: 5px;
	font-weight: bold;
	border-radius: 100%;
}

.discount-badge-highlight {
	position: absolute;
	top: 4px;
	left: -7px;
	background-color: #C41E3A;
	color: #fff;
	padding: 0;
	height: 20px;
	width: 65px;
	border-radius: 2px 10px 10px 2px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.discount-badge-highlight01 {
	position: absolute;
	top: 6px;
	left: -7px;
	background-color: #C41E3A;
	color: #fff;
	padding: 0;
	height: 25px;
	width: 5px;
	border-radius: 0 10px 0 10px;
}

.pull-right01 {
	position: absolute;
	color: #DC143C;
	top: 250px;
	left: 15px;
	font-size: 12px;
	text-decoration: line-through;
}
.zoomTool {
	color: #fff;
	background-color: #008000;
}
    .image-container img {
        margin-left: 200px;
    }
body {
	background-color: #F0F8FF;
}

.container{
	
}
</style>

</head>
<body>
	<!-- 
Body Section 
-->

	<div class="row" style="position: relative; top: 190px;">
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
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
						<c:forEach var="item" items="${slides}" varStatus="index">
							<c:if test="${index.first}">
								<div class="item active">
							</c:if>
							<c:if test="${not index.first}">
								<div class="item">
							</c:if>
							<img style="width: 100%;height: 100%;"
								src="<c:url value='/assets/user/img/slide/${item.img}'/>"
								alt="bootstrap ecommerce templates">
							<div class="carousel-caption">
								<h4>${item.caption}</h4>
								<p>
									<span>${item.content}</span>
								</p>
							</div>
					</div>
					</c:forEach>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản phẩm mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
						<c:if test="${products.size() > 0}">
							<div class="item active">
								<ul class="thumbnails">
									<c:forEach var="item" items="${products}" varStatus="loop">
										<li class="span3">
											<div class="thumbnail">
												<div class="discount-badgenew">Mới</div>
												<a class="zoomTool" href="product_details.html"
													><span class="icon-search"></span>
													BẤM XEM</a> <a href="product_details.html"><img
													src="<c:url value="/assets/user/img/${item.img}"/>"
													alt=""></a>
												<div class="discount-badge">Mới</div>
											</div>
										</li>
										<c:if
											test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
								</ul>
							</div>
							<c:if test="${ (loop.index + 1) < products.size() }">
								<div class="item">
									<ul class="thumbnails">
							</c:if>
						</c:if>
						</c:forEach>
						</c:if>
					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>

				</div>
			</div>

		</div>
		<!--
	Sản phẩm nổi bật
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"
					title="View more">Xem thêm <span class="icon-plus"></span></a> Sản
				phẩm nổi bật
			</h3>
			<hr class="soften" />
			<div class="row-fluid">

				<c:if test="${ products.size() > 0 }">
					<ul class="thumbnails">

						<c:forEach var="item" items="${products}" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<div class="discount-badge-highlight">-29%</div>
									<div class="discount-badge-highlight01"></div>
									<a class="zoomTool" href="#" title="add to cart"><span
										class="icon-search"></span> BẤM XEM</a> <a
										href="chi-tiet-san-pham/${item.id_product}"><img
										src="<c:url value="/assets/user/img/${item.img}"/>" alt=""></a>
									<div class="caption">
										<h5>${item.name}</h5>
										<h4 style="overflow: auto;">				
											<a class="defaultBtn pull-right" href="product_details.html"
												title="Bấm Xem" ><span class="icon-zoom-in"></span></a>
											 <span class="pull-left" style=" margin-top: 10px; 20px; color: #DC143C;"><fmt:formatNumber
													type="number" groupingUsed="true" value="${item.price}" />₫</span>
											<span class="pull-right01">300,000₫</span>
										</h4>
									</div>
								</div>
							</li>

							<c:if
								test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
					</ul>
					<c:if test="${ (loop.index + 1) < products.size() }">
						<ul class="thumbnails">
					</c:if>
				</c:if>

				</c:forEach>

				</c:if>
			</div>
		</div>

		<!-- <Siêu slae> -->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="#">Xem thêm <span
					class="icon-plus"></span></a> Siêu slae
			</h3>
			<hr class="soften" />
			<div class="row-fluid">

				<c:if test="${ products.size() > 0 }">
					<ul class="thumbnails">

						<c:forEach var="item" items="${ products }" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<div class="discount-badge-highlight">-29%</div>
									<div class="discount-badge-highlight01"></div>
									<a class="zoomTool" href="#" title="add to cart"><span
										class="icon-search"></span> BẤM XEM</a> <a
										href="chi-tiet-san-pham/${ item.id_product }"><img
										src="<c:url value="/assets/user/img/${ item.img }"/>" alt=""></a>
									<div class="caption">
										<h5>${ item.name }</h5>
										<h4 style="overflow: auto;">				
											<a class="defaultBtn pull-right" href="product_details.html"
												title="Bấm Xem" ><span class="icon-zoom-in"></span></a>
											 <span class="pull-left" style=" margin-top: 10px; 20px; color: #DC143C;"><fmt:formatNumber
													type="number" groupingUsed="true" value="${ item.price }" />₫</span>
											<span class="pull-right01">300,000₫</span>
										</h4>
									</div>
								</div>
							</li>

							<c:if
								test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
					</ul>
					<c:if test="${ (loop.index + 1) < products.size() }">
						<ul class="thumbnails">
					</c:if>
				</c:if>

				</c:forEach>

				</c:if>
			</div>
			<hr>

		</div>	
	</div>
	<section class="our_client" style="margin-top: 50px; margin-left -15px;margin-right:-4 ;">
	<h4 class="title cntr"><span class="text">Các thương hiệu</span></h4>
	
		<div class="row">
		<div class="image-container">
    <div class="span2">
        <a href="#"><img alt="" src="<c:url value='/assets/user/img/eme-4Vans.png' />" width="100" height="100"></a>
    </div>
    <div class="span2">
        <a href="#"><img alt="" src="assets/user/img/eme-6Converse.png" width="100" height="100"></a>
    </div>
    <div class="span2">
        <a href="#"><img alt="" src="assets/user/img/eme-2Adidas.png" width="100" height="100"></a>
    </div>
    <div class="span2">
        <a href="#"><img alt="" src="assets/user/img/eme-1nike.png" width="100" height="100"></a>
    </div>
    </div>
</div>
	</section>
</body>


