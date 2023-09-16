<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<style>
.containers {
	margin-top: 175px;
}
.custom-well {
        width: 345px;
        height: 365px;
        margin-left: 340px;
    }
.custom-input {
  width: 300px;
}
.login-bnt{
 width: 313px;
 color:#fff;
 background-color: #009900;
}
.well .login01 {
display: block;
margin: 0 auto;
}
</style>
</head>
<body>
	<div class="containers">
		<div class="span4">
			<ul class="breadcrumb" style="width: 300px;margin-left: -20px; ">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active" >Đăng nhập</li>
			</ul>
			<h2 class="siginin" style="font-size: 25px;">Đăng nhập</h2>
			<div class="well custom-well">
				<h4 class="login01" style="text-align: center;">Chào mừng bạn đến với Dương Shop</h4>
				<span class="login01" style="text-align: center;">Hãy nhập đầy đủ thông tin</span>
				<form:form action="dang-nhap" method="POST" modelAttribute="user">
					<div class="control-group"  style="margin-left: 15px;">
						<label class="control-label" for="inputEmail">Email <sup style="color: red;">*</sup></label>
						<div class="controls" >
							<form:input type="email" class=" custom-input" placeholder="Email"
								path="email" />
						</div>
					</div>
					<div class="control-group"  style="margin-left: 15px;">
						<label class="control-label" for="inputPassword">Mật khẩu <sup style="color: red;">*</sup></label>
						<div class="controls">
							<form:input type="password" class=" custom-input" placeholder="Mật khẩu"
								path="password" />
						</div>
					</div>
					<div class="control-group" style="margin-left: 15px;">
				<div class="controls" >
				  <button type="submit" class="defaultBtn login-bnt" style="border-radius: 5px;">Đăng nhập</button> 
				</div>
				<div class="controls" style="margin-top: 15px;">
				  <button type="submit" class="defaultBtn login-bnt" style="border-radius: 5px; background-color: #3333CC;">Đăng Nhập bằng Google</button> 
				</div>
				<div class="controls" style="margin-top: 15px;">
				  <button type="submit" class="defaultBtn login-bnt"style="border-radius: 5px;background-color: #3366CC;">Đăng nhập bằng Facebook </button> 
				</div>
				<div class="controls" style="margin-top: 8px;">
				
				  <a href="#">Quên mât khẩu?</a>
			  </div>
			   </div>
				</form:form>
			</div>
		</div>
	</div>
</body>
