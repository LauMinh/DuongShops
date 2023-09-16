<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<head>
<meta charset="UTF-8">
<title>Tất cả sản phẩm</title>
</head>
<body>
<div class="well well-small">
		<div class="row">
			<span style="margin-left: 25px;">Danh sách sản phẩm</span> <select
				class="pull-right">
				<option>A - Z</option>
				<option>Cao - Thấp</option>
			</select>
		</div>


		<c:if test="${ productPaginate.size() > 0 }">
			<div class="row-fluid">
				<ul class="thumbnails">

					<c:forEach var="item" items="${ productPaginate }" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
							<div class="discount-badge-highlight">-29%</div>
									<div class="discount-badge-highlight01"></div>
								<a href="product_details.html" class="overlay"></a> <a
									class="zoomTool" href="product_details.html"
									title="add to cart"><span class="icon-search"></span> BẤM XEM</a> <a href="<c:url value="/chi-tiet-san-pham/${item.id_product}"/>">
									<img src="<c:url value='/assets/user/img/${ item.img }'/>" alt=""style="width: 275px; height: 289px;"></a>
								<div class="caption cntr">
									<p>${item.name}</p>
									<p>
										<strong class="pull-left" style="position: relative; top: 19px; color:#DC143C"><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />₫</strong>
												<span class="pull-right01">300,000₫</span>
									</p>
									<h4>
										<a class="shopBtn pull-right" href="#" title="Thêm vào giỏ hàng" style="background-color: #008000; color: #fff;"> Thêm </a>
									</h4>
									<br class="clr">
								</div>
							</div>
						</li>

						<c:if
							test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == productPaginate.size() }">
				</ul>
			</div>

			<c:if test="${ (loop.index + 1) < productPaginate.size() }">
				<div class="row-fluid">
					<ul class="thumbnails">
			</c:if>
		</c:if>

		</c:forEach>

		</c:if>

	</div>
	<div class="pagination">
	<c:forEach var="item" begin="1" end="${paginateInfor.totalPage}" varStatus= "loop">
	 <c:if test="${(loop.index) == paginateInfor.currentPage}">
	  <a href="<c:url value="/san-pham/${idCategory }/${ loop.index }"/>" class="active">${loop.index}</a>
	 	</c:if>
	 	<c:if test="${(loop.index) != paginateInfor.currentPage }">
	  <a href="<c:url value="/san-pham/${idCategory }/${ loop.index }"/>" >${loop.index}</a>
	 	</c:if>

	</c:forEach>
	</div>
</body>
