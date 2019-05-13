<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>人人权限系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="../statics/css/font-awesome.min.css">
    <link rel="stylesheet" href="../statics/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../statics/css/all-skins.min.css">
    <link rel="stylesheet" href="../statics/css/main.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- ADD THE CLASS layout-boxed TO GET A BOXED LAYOUT -->
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper" id="sideBar" v-cloak>
    <header class="main-header">
        <a href="javascript:void(0);" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>人人</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>人人权限系统</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div style="float:left;color:#fff;padding:15px 10px;">欢迎 {{user.username}}</div>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li><a href="javascript:;" @click="donate"><i class="fa fa-jpy"></i> &nbsp;捐赠作者</a></li>
                    <li><a href="http://www.renren.io" target="_blank"><i class="fa fa-home"></i> &nbsp;人人开源</a></li>
                    <li><a href="javascript:;" @click="updatePassword"><i class="fa fa-lock"></i> &nbsp;修改密码</a></li>
                    <li><a href="logout"><i class="fa fa-sign-out"></i> &nbsp;退出系统</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- =============================================== -->

    <!-- Left side column. contains the sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">导航菜单</li>

                <!-- vue生成的菜单 -->
                <menu-item :item="item" v-for="item in menuList"></menu-item>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- =============================================== -->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <ol class="breadcrumb" id="nav_title" style="position:static;float:none;">
                <li class="active"><i class="fa fa-home" style="font-size:20px;position:relative;top:2px;left:-3px;"></i> &nbsp; 首页</li>
                <li class="active">{{navTitle}}</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content" style="background:#fff;">
            <iframe scrolling="yes" frameborder="0" style="width:100%;min-height:200px;overflow:visible;background:#fff;" :src="main"></iframe>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            Version 4.0.0
        </div>
        Copyright &copy; 2019 <a href="https://www.renren.io" target="_blank">renren.io</a> All Rights Reserved
    </footer>

    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

    <!-- 修改密码 -->
    <div id="passwordLayer" style="display: none;">
        <form class="form-horizontal">
            <div class="form-group">
                <div class="form-group">
                    <div class="col-sm-2 control-label">账号</div>
                    <span class="label label-success" style="vertical-align: bottom;">{{user.username}}</span>
                </div>
                <div class="form-group">
                    <div class="col-sm-2 control-label">原密码</div>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" v-model="password" placeholder="原密码"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2 control-label">新密码</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" v-model="newPassword" placeholder="新密码"/>
                    </div>
                </div>
            </div>
        </form>
    </div>

</div>
<!-- ./wrapper -->


<script src="../statics/libs/axios.min.js"></script>
<script src="../statics/libs/jquery.min.js"></script>
<script src="../statics/libs/vue.js"></script>
<script src="../statics/libs/router.js"></script>
<script src="../statics/libs/bootstrap.min.js"></script>
<script src="../statics/libs/app.js"></script>
<script src="../statics/plugins/layer/layer.js"></script>
<script src="../statics/myjs/index.js"></script>
</body>
</html>