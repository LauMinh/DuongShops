<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<head>
<title>Thanh toan</title>

<style>
body {
	background-color: #F0F8FF; /* Thay đổi màu nền thành xanh */
	margin: 0; 
		}
.breadcrumb{
background-color: #F0F8FF;
}
.containers {
	margin-top: 170px;
	
}

.custom-well {
	width: 390px;
	height: 400px;
	margin-left: 2px;
	background-color: #fff; 
}

.well .login01 {
	display: block;
	margin-top: 10px;
}

.custom-input {
	width: 208px;
}

.login-bnt {
	width: 369px;
	color: #fff;
	background-color: #009900;
}
.container-bill-wrapper {
	border: 1px solid #ccc;
	padding: 10px;
	margin-bottom: 20px;
	width: 460px;
	margin-left: 458px;
	margin-top:-638px;
	border-radius: 5px;
	background-color: #fff;
}
table th {
padding: 9px; /* Khoảng cách 4px giữa các cột */
border-bottom: 1px solid #ccc;
}
table td {
			padding: 1px; /* Khoảng cách 8px giữa các cột */
			text-align: center; /* Căn giữa nội dung trong cột */
			border-bottom: 1px solid #ccc; /* Đường viền dưới 2px */
		}
h3{
text-align: center;
}
</style>
</head>
<body>
	<div class="containers">
		<div class="row">
			<div class="span9">
				<ul class="breadcrumb" style="width: 400px;">
					<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
					<li><a href="products.html">Chi tiết sản phẩm</a> <span class="divider">/</span></li>
					<li><a href="products.html">Giỏ hàng</a> <span class="divider">/</span></li>
					<li class="active">Đặt hàng</li>
				</ul>		
				<div class="row">
					<div class="span4">
						<div class="well custom-well">
							<h4 class="login01" style="text-align: center;">Cảm mơn bạn đã đặt hàng tại Dương Shop</h4>
							<span class="login01" style="text-align: center;">Hãy nhập
								đầy đủ thông tin</span>

							<form:form action="dat-hang" method="POST" modelAttribute="bills" class="form-horizontal">  
								<div class="control-group" style="margin-left: -53px;margin-top: 20px;">
									<label class="control-label">Họ và tên <sup style="color: red;">*</sup></label>
									<div class="controls">
										<form:input type="text" class=" custom-input" placeholder=" Nhập họ tên" path="display_name" />  
									</div>
								</div>
								<div class="control-group" style="margin-left: -53px;">
									<label class="control-label">Email <sup style="color: red;">*</sup></label>
									<div class="controls">
										<form:input type="email" class=" custom-input" placeholder=" Nhập email" path="email" />
									</div>
								</div>
								<div class="control-group" style="margin-left: -53px;">
									<label class="control-label">Liên hệ <sup style="color: red;">*</sup></label>
									<div class="controls">
										<form:input type="text" class=" custom-input" placeholder=" Nhập số điện thoại" path="phone" />
									</div>
								</div>
								<div class="control-group" style="margin-left: -53px;">
									<label class="control-label">Địa chỉ <sup style="color: red;">*</sup></label>
									<div class="controls">
									<form:textarea path="address" rows="2" clos="10"/>
									</div>
								</div>
								<div class="control-group" style="margin-left: -53px;">
									<label class="control-label">Ghi chú </label>
									<div class="controls">
									<form:textarea path="note" rows="2" clos="10"/>
									</div>
								</div>
								<div class="control-group" style="margin-left: 81px;">
									<div class="controls">
										<input type="submit" name="submitAccount" value="Đặt hàng"
											class="shopBtn exclusive">
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="containers">
		<div class="row">
			<div class="span9">
				
				<!--Nội dung container hiển thị thông tin hóa đơn-->
				<div class="container-bill-wrapper">
					<div class="container-bill">
						<h3>Chi tiết hóa đơn</h3>
						<h5>Tổng tiền: <fmt:formatNumber type="number" groupingUsed="true" value="${TotalPriceCart}"/> ₫</h5>
						<!--Thêm thông tin chi tiết hóa đơn, ví dụ: các sản phẩm đã đặt hàng, số lượng, giá, v.v.-->
						<table>
							<thead>
								<tr>
									<th>Ảnh</th>
									<th>Tên</th>
									<th>Màu</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Size</th>
									<th>Tổng tiền</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="item" items="${ Cart }">
								<tr>
									 <td><img width="50" src="<c:url value="/assets/user/img/${ item.value.product.img }"/>" alt=""></td>
									 <td>${ item.value.product.name }</td>
									 <td><span class="shopBtn" style="background-color: ${item.value.product.code_color};"><span class="icon-ok"></span></span> </td>
									 <td><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.product.price}"/> ₫</td>
									 <td>${ item.value.quanty }</td>
									 <td>${ item.value.product.sizes} </td>
									 <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.totalPrice }"/> ₫</td>
								</tr>
							</c:forEach>
							</tbody>
							
						</table>
					</div>
				</div>
				<!--Form điền thông tin đặt hàng-->
				<!--... (code HTML của form đã được cung cấp trong câu trước) ...-->
			</div>
		</div>
	</div>
</body>
