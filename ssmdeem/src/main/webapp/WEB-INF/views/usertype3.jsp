<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<style>
    body{
        background-image:url(/static/images/bg1.jpg);
    }
</style>
<body> <div style=" text-align: center; /*让div内部文字居中*/

    border-radius: 20px;
    width: 300px;
    height: 350px;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;">
    <form action="/basic/usertypechange" method="post">
        <div style="height:80px "> <h1>   <c:if test="${not empty change}">${change.tablename}</c:if> </h1></div>
        <div style="height:80px ">
        <div class="input-group input-group-lg">
            <span class="input-group-addon">城市/农村</span>
            <select class="form-control" required id="cityVillage"name="cityVillage">
                <option>城市</option>
                <option>农村</option>
            </select>
        </div></div>
        <div style="height:80px ">
        <div class="input-group input-group-lg" >
            <span class="input-group-addon">用户类型</span>
            <select class="form-control" name="userType">
                <option>小灵通</option>
                <option>移动</option>
                <option>固话</option>
            </select>
        </div></div>
        <div style="height:80px ">
        <div class="input-group input-group-lg">
            <span class="input-group-addon">是否上网捆绑：</span><span class="input-group-addon">是<input type="radio" checked="checked" name="internetbundle" value="是"/></span>
            <span class="input-group-addon">否<input type="radio" name="internetbundle" value="否" /></span>
        </div>
        </div>

        <input type="text"  name="tablename" style="display:none" value="<c:if test="${not empty change}">${change.tablename}</c:if>">
        <input type="text"  name="id" style="display:none"value="<c:if test="${not empty change}">${change.id}</c:if>">
        <input type="submit" class="btn btn-primary" value="保存更改">

    </form></div>
</body>
</html>
