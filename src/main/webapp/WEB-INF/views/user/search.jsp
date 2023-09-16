<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>

<head>
    <title>Tìm kiếm sản phẩm</title>
   
<style >
.pull-right011 {
	position: absolute;
	color:#DC143C;
	top: 325px;
	left: 14px;
	font-size: 12px;
	text-decoration: line-through;
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
</style>   
   
</head>
<body>
<div class="containers" style="margin-top: 200px;">
    <!-- Nội dung của trang tìm kiếm -->
    <h3>Kết quả tìm kiếm cho: ${searchKeyword}</h3>
    <c:if test="${products != null && not empty products}">
       <hr class="soften" />
			<div class="row-fluid">

				<c:if test="${ products.size() > 0 }">
					<ul class="thumbnails">

						<c:forEach var="item" items="${ products }" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<div class="discount-badge-highlight">-29%</div>
									<div class="discount-badge-highlight01"></div>
									<a class="zoomTool" href="#" ><span
										class="icon-search"></span> BẤM XEM</a> <a
										href="chi-tiet-san-pham/${ item.id_product }"><img
										src="<c:url value="/assets/user/img/${item.img}"/>" alt=""></a>
									<div class="caption">
										<h5>${item.name}</h5>
										<h4 style="overflow: auto;">				
											<a class="defaultBtn pull-right" href="product_details.html"
												title="Bấm Xem" ><span class="icon-zoom-in"></span></a>
											 <span class="pull-left" style="margin-top: 10px; color: #DC143C;"><fmt:formatNumber
													type="number" groupingUsed="true" value="${item.price}" />₫</span>
											<span class="pull-right011">300,000₫</span>
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
    </c:if>
</body>