<?php if (!defined('THINK_PATH')) exit();?>


<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="/devtoupiao/Public/Admin/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="/devtoupiao/Public/Admin/css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="/devtoupiao/Public/Admin/css/lines.css" rel='stylesheet' type='text/css' />
<link href="/devtoupiao/Public/Admin/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="/devtoupiao/Public/Admin/js/jquery.min.js"></script>
<link href="/devtoupiao/Public/Admin/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="/devtoupiao/Public/Admin/js/metisMenu.min.js"></script>
<script src="/devtoupiao/Public/Admin/js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="/devtoupiao/Public/Admin/js/d3.v3.js"></script>
<script src="/devtoupiao/Public/Admin/js/rickshaw.js"></script>
   <script src="/devtoupiao/Public/Admin/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">当前登录员：<font color=red><?php echo ($names); ?></font></a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
        
      </ul>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="/devtoupiao/index.php/Admin/Index/main"><i class="fa fa-dashboard fa-fw nav_icon"></i>管理员列表</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>展览管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/devtoupiao/index.php/Admin/Index/addproduct">添加产品</a>
                                </li>
                                <li>
                                    <a href="/devtoupiao/index.php/Admin/Index/productlist">产品管理</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i> 投票管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/devtoupiao/index.php/Admin/Index/select">投票查询</a>
                                </li>

                                <!--</li>-->
                            </ul>                         
                        </li>
                      <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>用户管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                  <li>
                                    <a href="/devtoupiao/index.php/Admin/Menber/select">用户列表</a>
                                </li>
                                <li>
                                    <a href="/devtoupiao/index.php/Admin/Menber/addUser">新增用户</a>
                                </li>
                            </ul>
                        </li>


                          <li>
                            <a href="/devtoupiao/index.php/admin/User/logOut"><i class="fa fa-flask fa-fw nav_icon"></i>退出系统</a>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
           
        
        <div id="page-wrapper">
        <div class="graphs">	  
    <div class="content_bottom">
     <div class="col-md-12 span_3">
		  <div class="bs-example1" data-example-id="contextual-table">

			  <form class="form-horizontal" action="" method="get" enctype="multipart/form-data">
				  <h3>投票列表</h3>
				  <div class="form-group">
					  用户id <input type="text" name="uid" style="width: 150px" value="" id="focusedinput" placeholder="">
					  编号ID <input type="text" name="bianhao" style="width: 150px" value="" id="focusedinput" placeholder="">

					  类别<select style="width: 150px" name="type">
								  <option value="0">全部</option>
								  <option value="1">实物类</option>
								  <option value="2">壁报类</option>
					  			  <option value="3">多媒体类</option>
							  </select>

					   </div>

					  <div class="col-sm-2">
						  <p class="help-block"></p>
					  </div>

				  <p style="margin-left: 200px;margin-top: 20px;"></p><button class="btn-success btn">Submit</button>
			  </form>
		    <table class="table">
		      <thead>

		        <tr style="text-align: center;">

		        </tr>
		        <tr>
					<th>用户id</th>
					<th>展览编号</th>
		          <th>名  称</th>
		          <th>展览类别</th>
				  <th>投票时间</th>
		        </tr>
		      </thead>
		      <tbody>	      
		      <?php  $i = 1; ?>
		      <?php if(is_array($users)): foreach($users as $key=>$v): if(($i%2)==1){ echo "<tr class='active'>"; }else{ echo "<tr class='info'>"; } ?>
				  <th><?php echo ($v["userid"]); ?></th>
				  <th><?php echo ($v["bianhao"]); ?></th>
		          <th><?php echo ($v["productname"]); ?></th>
				  <th><?php if($v["producttype"] == 1): ?>实物类<?php elseif($v["producttype"] == 2): ?>壁报类<?php elseif($v["producttype"] == 3): ?>多媒体类<?php endif; ?></th>
				  <th><?php echo ($v["addymd"]); ?></th>
		        </tr>
		      	<?php $i++ ; endforeach; endif; ?>		      
		      </tbody>
		    </table>
		   </div>
	   </div>
		<div class="clearfix"> </div>
	    </div>
		<div class="copy">
            <p>Copyright &copy; 2016  All rights reserved.</p>
	    </div>
		</div>
       </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="/devtoupiao/Public/admin/js/bootstrap.min.js"></script>
</body>
</html>