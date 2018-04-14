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
    <!-- ������Ҫʹ��Kendo UI Professional������ϵ��Ȩ�˻�úϷ�����Ȩ����ɡ� -->
    <!-- Bootstrap css -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <!-- kendo ui css -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css" rel="stylesheet">
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css" rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/assets/fontawesome/css/font-awesome.css" rel="stylesheet">
    <!--�����ṩ�Ĺ�����ʽ�� -->
    <link href="https://magicbox.bkclouds.cc/static_api/v3/bk/css/bk.css?v=1.0.1" rel="stylesheet">
    <link href="https://magicbox.bkclouds.cc/static_api/v3/bk/css/bk_pack.css" rel="stylesheet">
    <!-- ���Ҫʹ��Bootstrap��js����������ȵ���jQuery -->
    <script src="https://magicbox.bkclouds.cc/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
    <!-- ��������bootstrap��js������߿��Ը�����Ҫʹ�õ�js������á�-->
    <script src="https://magicbox.bkclouds.cc/static_api/v3/assets/bootstrap-3.3.4/js/bootstrap.min.js"></script>
    <!-- ��������kendoui��js������߿��Ը�����Ҫʹ�õ�js������á�-->
    <script src="https://magicbox.bkclouds.cc/static_api/v3/assets/kendoui-2015.2.624/js/kendo.all.min.js"></script>
    <script src="https://magicbox.bkclouds.cc/static_api/v3/bk/js/bk.js"></script>
    <!-- �������ͳ�� -->
    <script src="https://magicbox.bkclouds.cc/static_api/analysis.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/source/js/jquery-3.2.1.js"></script>
    <!-- �����������������IE8�Լ����°汾�����֧��HTML5Ԫ�غ�ý���ѯ���������Ҫ�ÿ����Ƴ� -->
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
                            <li class="king-navbar-active"><a href="${pageContext.request.contextPath }/selectadmin?id=${id}">��ǰ����Ա</a></li>
                            <li class="king-navbar-active"><a>��������Ա</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="javascript:;">
                                    <span>��ϯ��</span>
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
                    <label class="col-sm-3 control-label bk-lh30 pt0">���ţ�</label>
                    <div class="col-sm-9">
                        <select name="department" id="department" class="form-control bk-valign-top">
                            <option value="���鲿">���鲿</option>
                            <option value="������">������</option>
                            <option value="������">������</option>
                            <option value="���">���</option>
                        </select>
                    </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">������</label>
                    <div class="col-sm-9">
                        <input name="name" id="name" type="text" class="form-control bk-valign-top" placeholder="��������������" required> </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">��ϵ�绰��</label>
                    <div class="col-sm-9">
                        <input name="phone" id="phone" type="text" class="form-control bk-valign-top" placeholder="��������Ч�绰����" required> </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">΢�źţ�</label>
                    <div class="col-sm-9">
                        <input name="wechat" id="wechat" type="text" class="form-control bk-valign-top"  placeholder="������΢�ź�"> </div>
                </div>
                <div class="form-group clearfix ">
                    <label class="col-sm-3 control-label bk-lh30 pt0">��ʼ�����룺</label>
                    <div class="col-sm-9">
                        <input name="specialcode" id="specialcode" type="text" class="form-control bk-valign-top" placeholder="���ṩ��ʼ��λ������" required> </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="button" class="king-btn mr10  king-success" onclick="suretosubmit()">�ύ</button>
                        <button type="reset" class="king-btn king-default ">ȡ��</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
    function suretosubmit(){
        var r = confirm("�Ƿ�ȷ����ӣ�"); 
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
                        alert("��ӳɹ���");
                        location.reload();
                    } else {
                        alert("���ʧ�ܣ�");
                    }
                },
                error: function () {
                    alert("���� AJAX ����ʱ���ִ���!");
                    location.reload();
                }
            });
        }         
    }
</script>
</html>
