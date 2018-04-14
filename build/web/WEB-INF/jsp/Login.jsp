<%-- 
    Document   : Login
    Created on : 2017-4-20, 15:41:57
    Author     : night-chen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- 若您需要使用Kendo UI Professional，请联系版权人获得合法的授权或许可。 -->
    <!-- Bootstrap css -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <!-- kendo ui css -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css" rel="stylesheet">
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css" rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/fontawesome/css/font-awesome.css" rel="stylesheet">
    <!--蓝鲸提供的公用样式库 -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/bk/css/bk.css?v=1.0.1" rel="stylesheet">
    <link href="https://magicbox.bkclouds.cc/static_api/v3/bk/css/bk_pack.css" rel="stylesheet">
    <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
    <script src="https://magicbox.bkclouds.cc/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
    <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://magicbox.bkclouds.cc/static_api/v3/assets/bootstrap-3.3.4/js/bootstrap.min.js"></script>
    <!-- 包括所有kendoui的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://magicbox.bkclouds.cc/static_api/v3/assets/kendoui-2015.2.624/js/kendo.all.min.js"></script>
    <script src="https://magicbox.bkclouds.cc/static_api/v3/bk/js/bk.js"></script>
    <!-- 数据埋点统计 -->
    <script src="https://magicbox.bkclouds.cc/static_api/analysis.js"></script>
    <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
    <!--[if lt IE 9]><script src="https://magicbox.bkclouds.cc/static_api/v3/assets/js/html5shiv.min.js"></script><script src="https://magicbox.bkclouds.cc/static_api/v3/assets/js/respond.min.js"></script><![endif]-->
</head>

<body class="bg-white" data-bg-color="bg-white">
    <div class="king-page-box">
        <div class="king-container clearfix" style="position: relative;top: 200px">
            <div class="container-fluid mb0 ">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <form class="form-horizontal"  action="${pageContext.request.contextPath }/logadmin.action" method="post">
                            <div class="form-group clearfix ">
                                <label class="control-label col-sm-3 bk-lh30 pt0">类型：</label>
                                <div class="col-sm-9">
                                    <div class="radio pt0">
                                        <label class="mr10">
                                            <input type="radio" name="kind" id="" class="bk-top5" value="admin" required>
                                            <span class="bk-lh30">管理员登陆</span>
                                        </label>
                                        <label class="mr10">
                                            <input type="radio" name="kind" id="" class="bk-top5" value="president">
                                            <span class="bk-lh30">主席团登陆</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group clearfix ">
                                <label class="col-sm-3 control-label bk-lh30 pt0">密码：</label>
                                <div class="col-sm-9">
                                    <input type="password"  name="specialcode" class="form-control bk-valign-top" id="" placeholder="提示信息">
                                    <p class="help-block">4位，由数字、字母组成</p>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button type="submit" class="king-btn mr10  king-success">提交</button>
                                    <button type="reset" class="king-btn king-default ">取消</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>