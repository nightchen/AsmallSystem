<%-- 
    Document   : main
    Created on : 2017-4-19, 16:51:16
    Author     : night-chen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <script type="text/javascript" src="${pageContext.request.contextPath }/source/js/jquery-3.2.1.js"></script>
    <script>
        function selectusername(){
            var department = $('#department').val();   
            //alert(department);
            $.ajax({
                type: 'GET',
                url: '${pageContext.request.contextPath }/selectuser',
                data: 'department=' + department,
                contentType: 'application/x-www-form-urlencoded',
                async: true,
                success: function (data) {
                    //alert(data[0].name);
                    var html='<option >==请选择你的姓名==</option>';
                    for(var i=0;i< data.length;i++){
                        html += '<option >'+ data[i].name +'</option>';
                    }
                    $('#username').html(html);
                }                
            });
        }  
        
        $(document).ready(function(){
        var mydate = new Date();
        var myyear = mydate.getFullYear(); 
        var mymonth = mydate.getMonth();
        if(mydate.getHours() >= 18){
            //alert(mydate.getHours());
            $('#today').attr("disabled","true");
        }
        $("#today").click(function(){           
            var datestring =myyear+"-"+mymonth+"-"+mydate.getDate();
            $("#today").val(datestring);
            //alert($("#today").val());
        });
        $("#today2").click(function(){
            var myday = mydate.getDate()+1;
            var datestring =myyear+"-"+mymonth+"-"+myday;
            $("#today2").val(datestring);
            //alert($("#today2").val());           
        });
        $("#today3").click(function(){
            var myday = mydate.getDate()+2;
            var datestring =myyear+"-"+mymonth+"-"+myday;
            $("#today3").val(datestring);
            //alert($("#today3").val());           
        });
        $("#today4").click(function(){
            $("#othertime").removeAttr("disabled");        
        });                
        
        });
        
        function makesure(){
            confirm("是否确认提交！");
        }
    </script>    
        
</head>
<body class="bg-white" data-bg-color="bg-white">
    <div class="king-page-box">
        <div class="king-container clearfix">
            <form class="form-vertical p15" action="${pageContext.request.contextPath }/addorder.action" method="post">
                <div class="form-group f13">
                    <label>部门：</label>
                    <select class="form-control" name="department" id="department" onchange="selectusername()">
                        <option >==请选择所属部门==</option>
                        <option >技术部</option>
                        <option >活动部</option>
                        <option >秘书部</option>
                        <option >外联部</option> 
                    </select>
                </div>
                <div class="form-group ">
                    <label>成员：</label>
                    <select class="form-control" name="name" id="username">
                        <option >==请选择你的姓名==</option>
                    </select>
                </div>
                <div class="container-fluid mb0 ">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group ">
                                <label>时间：</label>
                                <div class="">
                                    <label class="radio-inline bk-h30 bk-lh30">
                                        <input type="radio" name="daydate" id="today" class="bk-top5"  >
                                        <span>今天</span>
                                    </label>
                                    <label class="radio-inline bk-h30 bk-lh30">
                                        <input type="radio" name="daydate" id="today2" class="bk-top5"  >
                                        <span>明天</span>
                                    </label>
                                    <label class="radio-inline bk-h30 bk-lh30">
                                        <input type="radio" name="daydate" id="today3" class="bk-top5" >
                                        <span>后天</span>
                                    </label>
                                    <br>
                                    <label class="radio-inline bk-h30 bk-lh30">
                                        <input type="radio" name="daydate" id="today4" class="bk-top5" >
                                        <span>日历</span>
                                        <input id="othertime" name="daytime" type="date" disabled="" >                                      
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group ">
                                <br>
                                <label>开始时间：</label>
                                <input type="time" name="hour_start" id="" placeholder="" required>
                                <label>结束时间：</label>
                                <input type="time" name="hour_over" id="" placeholder="" required>
                            </div>
                        </div>
                    </div>
                </div>
            
            <div class="form-group ">
                <label>原因：</label>
                <div class="">
                    <label class="radio-inline bk-h30 bk-lh30">
                        <input type="radio" name="reason" id="" class="bk-top5" value="上自习">
                        <span>上自习</span>
                    </label>
                    <label class="radio-inline bk-h30 bk-lh30">
                        <input type="radio" name="reason" id="" class="bk-top5" value="小组开会">
                        <span>小组开会</span>
                    </label>
                    <label class="radio-inline bk-h30 bk-lh30">
                        <input type="radio" name="reason" id="" class="bk-top5" value="学习交流">
                        <span>学习交流</span>
                    </label>
                    <label class="radio-inline bk-h30 bk-lh30">
                        <input type="radio" name="reason" id="" class="bk-top5" value="活动排练">
                        <span>活动排练</span>
                    </label>
                    <label class="radio-inline bk-h30 bk-lh30">
                        <input type="radio" name="reason" id="" class="bk-top5" value="其他">
                        <span>其他</span>
                    </label>
                    
                </div>
            </div>
            <div class="form-group has-feedback ">
                <label>具体原因：</label>
                <textarea class="form-control" name="decreason" id="" rows="3" placeholder="有其他原因请在此说明"></textarea>
            </div>
            <div class="form-group">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="submit" class="king-btn mr10  king-success" onclick="makesure()">确定</button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="reset" class="king-btn king-default ">取消</button>
            </div>
        </form>
        </div>
                <form action="${pageContext.request.contextPath }/login.action" style="position: relative;top: 50px">
                        <button type="submit" class="king-btn mr10  king-success">管理员登陆</button>                         
                </form>
                
    </div>                                                    
</body>


</html>