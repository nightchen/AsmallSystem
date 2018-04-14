<%-- 
    Document   : manange
    Created on : 2017-4-20, 19:48:22
    Author     : night-chen
--%>
<%
    //int id = (int)request.getAttribute("id");
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
                            <li class="king-navbar-active"><a href="${pageContext.request.contextPath }/selectadmin?id=${id}">当前管理员</a></li>
                            <li class="king-navbar-active"><a href="${pageContext.request.contextPath }/addadminpage?id=${id}">新增管理员</a></li>
                        <!--<li><a href="javascript:void(0);">单据统计</a></li>-->
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
            <table class="table mb0 pr15 ranger-box2  ">
                <thead>
                    <tr>
                        <th style="width: 70px;">#</th>
                        <th style="width: 10%;">部门</th>
                        <th style="width: 10%;">姓名</th>
                        <th style="width: 15%;">联系电话</th>
                        <th style="width: 15%;">微信号</th>
                        <th style="width: 15%;">特征码</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${admins}" var="admins">
                       <tr>
                        <td style="width: 70px;"><%out.print(i++);%></td>
                        <td style="width: 10%;">${admins.department}</td>
                        <td style="width: 10%;">${admins.name}</td>
                        <td style="width: 15%;">${admins.phone}</td>                        
                        <td style="width: 15%;">${admins.wechat}</td>
                        <td style="width: 15%;">${admins.specialcode}</td>
                        <td>                            
                            <button class="btn btn-xs btn-warning"  onclick="updateadmin('${admins.id}')"> <i class="glyphicon glyphicon-edit"></i> </button>
                            <button class="btn btn-xs btn-danger" onclick="deleteadmin('${admins.id}')"> <i class="glyphicon glyphicon-remove"></i> </button>
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
    function deleteadmin(id){
        var r = confirm("确认删除此信息！");
        if(r === true){
            $.ajax({
                type:'POST',
                url: "${pageContext.request.contextPath }/deleteadmin",
                data: "id=" + id,
                async: true,
                success: function (data) {
                    if (data === 'success') {
                        alert("删除成功！");
                        location.reload();
                    } else {
                        alert("删除失败！");
                    }
                },
                error: function () {
                    alert("发送 AJAX 请求时出现错误");
                }
            });
        }
    }
    
    function updateadmin(id){
         var newpassword = prompt("请输入新的特征码");         
         if(newpassword.length === 4){
             $.ajax({
                type:'POST',
                url: "${pageContext.request.contextPath }/updateadmin",
                data: "id=" + id + "&specialcode=" + newpassword,
                async: true,
                success: function (data) {
                    if (data === 'success') {
                        alert("更新成功！");
                        location.reload();
                    } else {
                        alert("更新失败！");
                    }
                },
                error: function () {
                    alert("出现错误请重试！");
                }
            });
         }
         else{
             alert("输入不符合要求，请输入四位特征码！");
         }
    }
</script>

</html>