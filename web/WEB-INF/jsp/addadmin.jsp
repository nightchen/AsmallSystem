<%-- 
    Document   : addadmin
    Created on : 2017-4-22, 16:12:08
    Author     : night-chen
--%>
<%
    Integer id = (Integer)request.getAttribute("id");
%>
<%@page contentType="text/html" pageEncoding="GBK"%>
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
    <script type="text/javascript" src="${pageContext.request.contextPath }/source/js/jquery-3.2.1.js"></script>
    <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
    <!--[if lt IE 9]><script src="https://magicbox.bkclouds.cc/static_api/v3/assets/js/html5shiv.min.js"></script><script src="https://magicbox.bkclouds.cc/static_api/v3/assets/js/respond.min.js"></script><![endif]-->
</head>

<body class="bg-white" data-bg-color="bg-white">
    <div class="king-page-box">
        <div class="king-layout1-header">
            <nav role="navigation" class="navbar navbar-default king-horizontal-nav2    f14 ">
                <div class="container " style="width:100%;overflow:hidden;">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle-sm" data-toggle="collapse" data-target="#king-horizontal-nav2-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="javascript:;">
                            <img src="https://magicbox.bkclouds.cc/static_api/v3/bk/images/logo3.png" alt="" class="logo"> </a>
                    </div>
                    <div class="collapse navbar-collapse navbar-responsive-collapse" id="king-horizontal-nav2-collapse">
                        <ul class="nav navbar-nav">                     
                            <li class="king-navbar-active"><a href="${pageContext.request.contextPath }/selectadmin?id=${id}">当前管理员</a></li>
                            <li class="king-navbar-active"><a>新增管理员</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="javascript:;">
                                    <span>主席团</span>
                                    <span>${id}</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="king-layout2-main mt15" style="width:960px;">
            <form class="form-horizontal">
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">部门：</label>
                    <div class="col-sm-9">
                        <select name="department" id="department" class="form-control bk-valign-top">
                            <option value="秘书部">秘书部</option>
                            <option value="技术部">技术部</option>
                            <option value="外联部">外联部</option>
                            <option value="活动部">活动部</option>
                        </select>
                    </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">姓名：</label>
                    <div class="col-sm-9">
                        <input name="name" id="name" type="text" class="form-control bk-valign-top" placeholder="请输入中文姓名" required> </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">联系电话：</label>
                    <div class="col-sm-9">
                        <input name="phone" id="phone" type="text" class="form-control bk-valign-top" placeholder="请输入有效电话号码" required> </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">微信号：</label>
                    <div class="col-sm-9">
                        <input name="wechat" id="wechat" type="text" class="form-control bk-valign-top"  placeholder="请输入微信号"> </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">初始特征码：</label>
                    <div class="col-sm-9">
                        <input name="specialcode" id="specialcode" type="text" class="form-control bk-valign-top" placeholder="请提供初始四位特征码" required> </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="button" class="king-btn mr10  king-success" onclick="suretosubmit()">提交</button>
                        <button type="reset" class="king-btn king-default ">取消</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
    function suretosubmit(){
        var r = confirm("是否确定添加？"); 
        if(r === true){
            var department = $("#department").val();
            var name = $("#name").val();
            var phone = $("#phone").val();
            var wechat = $("#wechat").val();
            var specialcode = $("#specialcode").val();
            var mydata = "department=" + department +"&name=" + name +"&phone=" + phone +"&wechat=" + wechat +"&specialcode=" +specialcode;
        $.ajax({
                type:'POST',
                url: "${pageContext.request.contextPath }/addadmin",
                data: mydata,
                async: true,
                success: function (data) {
                    if (data === 'success') {
                        alert("添加成功！");
                        location.reload();
                    } else {
                        alert("添加失败！");
                    }
                },
                error: function () {
                    alert("发送 AJAX 请求时出现错误!");
                    location.reload();
                }
            });
        }         
    }
</script>
</html>
