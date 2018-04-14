<%-- 
    Document   : manange
    Created on : 2017-4-20, 19:48:22
    Author     : night-chen
--%>
<%
    //int id = (int)request.getAttribute("id"); 
    //int type = (int)request.getAttribute("type");
    int i = 1;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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
                            <li class="king-navbar-active"><a href="${pageContext.request.contextPath }/choseorder?id=${id}&type=1">未审核项</a></li>
                            <li class="king-navbar-active"><a href="${pageContext.request.contextPath }/choseorder?id=${id}&type=0">已审核项</a></li>                            
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="king-navbar-active">
                                <a href="javascript:;">
                                    <span>管理员</span>
                                    <span>${id}</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="king-layout2-main mt15" style="width:960px;">
            <table class="table mb0 pr15 ranger-box2  ">
                <thead>
                    <tr>
                        <th style="width: 70px;">#</th>
                        <th style="width: 10%;">部门</th>
                        <th style="width: 10%;">用户</th>
                        <th style="width: 15%;">预约时间</th>
                        <th style="width: 10%;">时间段</th>
                        <th style="width: 10%;">原因</th>
                        <th style="width: 10%;">审批状态</th>
                        <th>操作</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orders}" var="orders" >
                    <tr>
                        <td style="width: 70px;"><%out.print(i++);%></td>
                        <td style="width: 10%;">${orders.department}</td>
                        <td style="width: 10%;"><a onclick="showphonenumber('${orders.name}','${orders.department}')">${orders.name}</a></td>
                        <td style="width: 15%;">${orders.daytime}</td>
                        <td style="width: 20%;">${orders.hour_start}—${orders.hour_over}</td>
                        <td style="width: 10%;">${orders.reason}</td>
                        <td style="width: 15%;">${orders.passed}</td>
                        <td>
                            <c:choose>
                                <c:when test="${type == 1}">
                                    <button class="btn btn-xs btn-success" onclick="pass('${orders.id}')"> <i class="glyphicon glyphicon-ok"></i> </button>                     
                                    <button class="btn btn-xs btn-danger" onclick="unpass('${orders.id}')"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </c:when>
                                <c:otherwise>
                                    <button class="btn btn-xs btn-success" disabled=""> <i class="glyphicon glyphicon-ok"></i> </button>                     
                                    <button class="btn btn-xs btn-danger" disabled=""> <i class="glyphicon glyphicon-remove"></i> </button>
                                </c:otherwise>
                            </c:choose>
                            
                        </td>
                    </tr>
                    </c:forEach>
                                                                                                
                </tbody>
            </table>           
            <!-- 设置面板End -->
        </div>
    </div>

</body>
<script>
    function showphonenumber(name,department){
        $.ajax({
                type:'POST',
                url: "${pageContext.request.contextPath }/showphone",
                data: "name=" + name + "&department=" + department,
                async: true,
                success: function (data) {
                    confirm("姓名："+data.name+"\n"+"联系电话："+data.phone+"\n"+"微信号："+data.wechat);
                },
                error: function () {
                    alert("发送 AJAX 请求时出现错误");
                }
            });
    }
    function pass(id){
        var r = confirm("审核通过，是否确认！");
        if(r === true){
            $.ajax({
                type:'POST',
                url: "${pageContext.request.contextPath }/passupdate",
                data: "id=" + id,
                async: true,
                success: function (data) {
                    if (data === 'success') {
                        alert("审核成功！");
                        location.reload();
                    } else {
                        alert("审核失败！");
                    }
                },
                error: function () {
                    alert("发送 AJAX 请求时出现错误");
                }
            });
        }
        
    }
    
    function unpass(id){
        var r = confirm("审核不通过，是否确认！");
        if(r === true){
            $.ajax({
                type:'POST',
                url: "${pageContext.request.contextPath }/unpassupdate",
                data: "id=" + id,
                async: true,
                success: function (data) {
                    if (data === 'success') {
                        alert("审核成功！");
                        location.reload();
                    } else {
                        alert("审核失败！");
                    }
                },
                error: function () {
                    alert("发送 AJAX 请求时出现错误");
                }
            });
        }
    }
    
</script>

</html>