<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>转账</title>
        <link href="/Public/Home/css/bootstrap.min.css" rel="stylesheet">
        <link href="/Public/Home/css/aui.min.css" rel="stylesheet">
        <link href="/Public/Home/css/mui.picker.css" rel="stylesheet">
        <link href="/Public/Home/css/mui.poppicker.css" rel="stylesheet">
        <link href="/Public/Home/css/style.css" rel="stylesheet">
         <script type="text/javascript" src="/Public/Home/js/jquery-3.1.1.min.js"></script>
         <script type="text/javascript" src="/Public/Home/js/aui.js"></script>
        <script type="text/javascript" src="/Public/Home/js/mui.picker.js"></script>
        <script type="text/javascript" src="/Public/Home/js/mui.poppicker.js"></script>
        <script type="text/javascript" src="/Public/Home/js/bootstrap.min.js"></script>
        <style>
         
        </style>
    </head>
</head>
<body class="bodyColor">
    <header class="mui-bar mui-bar-nav">
	  <a class="mui-icon mui-icon-left-nav mui-pull-left mui-action-back"></a>
	  <h1 class="mui-title"><?php echo ($title); ?></h1>
	</header>
	<div class="mui-content">
		<form class="mui-input-group" method="post" style="margin-top: 20px;" enctype="multipart/form-data">
		     <div class="mui-input-row">
		        <label>提现金额</label>
		       <input type="number"  name="num" class="mui-input-clear" placeholder="提现金额">
		    </div>
            <div class="mui-input-row">
                <label>二级密码</label>
                <input type="password" name="pwd2" placeholder="二级密码"   class="mui-input-password" >
            </div>
		   
		    <button class="mui-btn mui-btn-block">确认</button>
		</form>
	</div>
</body>
</html>