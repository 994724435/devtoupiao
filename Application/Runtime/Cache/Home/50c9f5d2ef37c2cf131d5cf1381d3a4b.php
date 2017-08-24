<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>登录</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp"/>
	<link rel="stylesheet" href="/Public/Home/css/style.css">
	<link rel="stylesheet" href="/Public/Home/css/amazeui.min.css">
	<link rel="stylesheet" href="/Public/Home/css/app.css">
	<style>
	</style>
</head>
<body>
<div class="am-g myapp-login">
	<div class="myapp-login-bg">
		<div class="myapp-login-logo">
			<img src="/Public/Home/images/logo.gif" alt="" class="logoI">
		</div>

		<div class="am-u-sm-10 myapp-login-form">
			<form class="am-form"  method="post" id="login" enctype="multipart/form-data">
				<!-- <fieldset> -->
				<div class="am-form-group">
					<input type="text" class="" name="name" placeholder="用户名">
				</div>
				<div class="am-form-group">
					<input type="password" class=""  name="pwd" placeholder="密码">
				</div>
				<!--     <div class="am-form-group">
                      <input type="text" class=""  placeholder="验证码">
                    </div> -->

				<p><button type="submit" class="am-btn am-btn-default">登录</button></p>
				<div class="login-text">
					<span onclick="location.href='forgetPwd.html'">忘记密码</span>
				</div>
				<!-- </fieldset> -->
			</form>
		</div>
	</div>
</div>
<!-- <script src="js/jquery.min.js"></script>

<script src="js/amazeui.min.js"></script>
<script src="js/app.js"></script> -->
</body>
</html>