<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>   
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<head>
<title>Giỏ hàng</title>

<style>
.containers {
  margin-top: 170px;
}
 .error-message {
        
        color: red;
        padding: 5px;
        margin-bottom: 10px;
        z-index: 9999;
    }
  body {
	background-color: #F0F8FF; /* Thay đổi màu nền thành xanh */
	
		}
.breadcrumb{
background-color: #F0F8FF;
}
.well-small{
background-color: #fff;
}
</style>

</head>
<body>
<div class="containers">
<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Giỏ hàng</li>
    </ul>
	<div class="well well-small">
		<h3>Giỏ hàng <small class="pull-right">
            <c:if test="${not empty Cart}">
                ${TotalQuantyCart} Sản phẩm trong giỏ hàng
            </c:if>
            <c:if test="${empty Cart}">
                0 Sản phẩm trong giỏ hàng
            </c:if>
        </small></h3>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>Hình ảnh</th>
                  <th>Tên</th>
                  <th>Màu sắc</th>
                  <th>Giá bán</th>
                  <th>Số lượng </th>
                  <th>Size</th>
                  <th>Xóa </th>
                  <th>Tổng tiền</th>
				</tr>
              </thead>
              <tbody>
              
				<c:forEach var="item" items="${ Cart }">
					<tr>
	                  <td><img width="100" src="<c:url value="/assets/user/img/${ item.value.product.img }"/>" alt=""></td>
	                  <td>${ item.value.product.name }</td>
	                  <td><span class="shopBtn" style="background-color: ${item.value.product.code_color};"><span class="icon-ok"></span></span> </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.product.price}"/> ₫</td>
	                  <td>
						<input type="number" min="0" max="100" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${item.key}" size="16" type="text" value="${ item.value.quanty }">
						<button data-id="${ item.key }" class="btn btn-mini btn-danger edit-cart" type="button" style="margin-top: -16px;">
	                  		<span class="icon-edit"></span>
	                  	</button>
					  </td>
	                  <td>
	                  	${ item.value.product.sizes}
	                  </td>
	                  <td>
	                  	<a href="<c:url value="/DeleteCart/${ item.key }"/>" class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-remove"></span>
	                  	</a>
	                  </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.totalPrice }"/> ₫</td>
	                </tr>
				</c:forEach>
                
				</tbody>
            </table><br/>
			
	<a href="products.html" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Tiếp tục mua sắm </a>
	<a href="<c:url value='/dat-hang' />" class="shopBtn btn-large pull-right">Đi tới đặt hàng <span class="icon-arrow-right"></span></a>

</div>
</div>
</div>
</div>

<content tag="script">
<script >
$(".edit-cart").on("click", function(){
    var id = $(this).data("id");
	var quanty = $("#quanty-cart-"+id).val();
	 window.location = "EditCart/"+id+"/"+quanty; 
});
</script>
</content>

</body>