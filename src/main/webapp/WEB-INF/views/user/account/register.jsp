<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>   
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<head>
<title>Đăng ký tài khoản</title>

<style >
.containers {
  margin-top: 170px;
  
}
 .custom-well {
        width: 390px;
        height: 500px;
        margin-left: 340px;
    }
.well .login01 {
display: block;
margin: 0 auto;
}
.custom-input {
  width: 358px;
}
.login-bnt{
 width: 369px;
 color:#fff;
 background-color: #009900;
}
</style>
</head>
<body>
<div class="containers">
<div class="row">
	<div class="span9">
    <ul class="breadcrumb" style="width: 300px;">
		<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Đăng ký</li>
    </ul>
	<h2 class="siginin" style="font-size: 25px;"> Đăng ký</h2>	
	
	
	<div class="row">
		<div class="span4">
			<div class="well custom-well" >
			<h4 class="login01" style="text-align: center;">Tạo tài khoản của bạn trên Dương Shop</h4>
			<span class="login01" style="text-align: center;">Hãy nhập đầy đủ thông tin</span>
			
			<form:form action="dang-ky" method="POST" modelAttribute="user">  
			  <div class="control-group" style="margin-left: 10px;">
				<label class="control-label" for="inputEmail">Email  <sup style="color: red;">*</sup></label>
				<div class="controls">
				  <form:input type="email" class=" custom-input" placeholder=" Nhập email" path="email" />  
				</div>
			  </div>
			  <div class="control-group" style="margin-left: 10px;">
				<label class="control-label" for="inputPassword">Mật khẩu  <sup style="color: red;">*</sup></label>
				<div class="controls">
				 <form:input type="password" class=" custom-input" placeholder="Nhập mật khẩu" path="password" />  
				</div>
			  </div>
			  <div class="control-group" style="margin-left: 10px;">
				<label class="control-label" for="inputPassword">Họ tên  <sup style="color: red;">*</sup></label>
				<div class="controls">
				  <form:input type="text" class=" custom-input" placeholder="Nhập tên" path="display_name" />
				</div>
			  </div>
			  <div class="control-group" style="margin-left: 10px;">
				<label class="control-label" for="inputPassword">Địa chỉ</label>
				<div class="controls">
				  <form:input type="text" class=" custom-input" placeholder="Nhập địa chỉ" path="address" />
				</div>
			  </div>
			  <div class="control-group" style="margin-left: 10px;">
				<div class="controls" >
				  <button type="submit" class="defaultBtn login-bnt" style="border-radius: 5px;">Đăng ký</button> 
				</div>
				<div class="controls" style="margin-top: 15px;">
				  <button type="submit" class="defaultBtn login-bnt" style="border-radius: 5px; background-color: #3333CC;">Đăng Nhập bằng Google</button> 
				</div>
				<div class="controls" style="margin-top: 15px;">
				  <button type="submit" class="defaultBtn login-bnt"style="border-radius: 5px;background-color: #3366CC;">Đăng nhập bằng Facebook </button> 
				</div>
				<div class="controls" style="margin-top: 8px;">
				 <ppan>Đã có tài khoản ?</ppan>
				  <a href="<c:url value='dang-nhap' />">Đăng nhập</a>
			  </div>
			   </div>
			</form:form>
		</div>
		</div>
	</div>	
</div>
</div>
</div>
</body>
