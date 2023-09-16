<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>

<style>
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

body {
	margin-top: 169px; 
	background-color: #F0F8FF;
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
	color:#DC143C;
	top: 324px;
	left: 14px;
	font-size: 12px;
	text-decoration: line-through;
}
.zoomTool {
    color: #fff; 
    background-color: #008000; 
    
}
.well-small{
overflow-x: hidden;
}
</style>
</head>
<body>
	
	<div class="well well-small">
		<div class="row">
			<span style="margin-left: 25px;">Danh sách sản phẩm</span> 
			
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
									<a class="defaultBtn pull-right" href="product_details.html"
												title="Bấm xem" ><span class="icon-zoom-in"></span></a>
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
