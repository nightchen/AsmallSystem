<%-- 
    Document   : success
    Created on : 2017-4-18, 19:15:44
    Author     : night-chen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>提交成功</title>
        
        <style>
            .table-striped{
                position: relative;
                top: 150px;
            }
            h3{
                position:absolute;  
                left: 50px;
                top:50px;
              }
              #back{
                  position:absolute;
	          right:10px;
                  top: 10px;
	          background-color:#b0e0e6;
                  font-size: 25px; 
              }
        </style>
    </head>
    <body>
       
<link href="https://magicbox.bkclouds.cc/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
<link href="https://magicbox.bkclouds.cc/static_api/v3/bk/css/bk.css?v=1.0.1" rel="stylesheet">
<h3>提交成功，请联系下方管理员进行审核。</h3>
<a id="back" href="${pageContext.request.contextPath }/turnmainpage.action">返回</a>

<table class="table table-striped">
    <thead>
        <tr>
            <th style="width: 10px">#</th>
            <th style="width:20%;">部门</th>
            <th>姓名</th>
            <th>联系电话</th>
            <th>微信号</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${adminlist}" var="admin">
        <tr>
            <td>${admin.id}</td>
            <td>${admin.department}</td>
            <td>${admin.name}</td>
            <td>${admin.phone}</td>
            <td>${admin.wechat}</td>
        </tr>    
    </c:forEach>                
    </tbody>
</table>
        
    </body>
</html>
