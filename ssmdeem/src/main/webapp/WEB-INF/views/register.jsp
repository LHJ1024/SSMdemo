<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/12
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <style type="text/css">
        .msg{color:gray;}
        .msg2{color:red;}
    </style>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../static/css/style.css" rel='stylesheet' type='text/css' />
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body id="login">
<div class="login-logo">
    <!--  <a href="index.html"><img src="images/logo.png" alt=""/></a> -->
</div>
<h2 class="form-heading">注册</h2>
    <form class="form-signin app-cam" id="register" action="/user/register" method="post">
        <div class="radios"></div>
        <p>注册您的帐户</p>
        <input type="text"class="form-control1" placeholder="账号" autofocus="" required id="username" name="username">
        <input type="password" class="form-control1" placeholder="密码"  id="password" name="password">
        <input type="password" class="form-control1" placeholder="重新 输入密码" onchange="fn1()" id="ps">
        <input type="text" class="form-control1" placeholder="用户名"required id="name" name="name">
        <button class="btn btn-lg btn-success1 btn-block" type="submit">注册</button>
        <%--<button class="btn btn-lg btn-success1 btn-block" type="reset">重置</button>--%>
        <div class="registration">
            已经注册
            <a class="" href="/user/login">
                登录
            </a>
        </div>

    <%--<input type="reset" value="重置"/>--%>
    </form>
<div class="copy_layout login register">
    <p>Copyright © 2019 Modern. All Rights Reserved |  </p>
</div>
</body>
<style>
    body{
        background-image:url(/static/images/bg1.jpg);
    }
</style>
<script>
function fn1() {
    var a =document.getElementById("password").value;
    var b =document.getElementById("ps").value;
    if (a!=b){
        alert("重复密码错误,请正确输入")
    }
}
    //根据后台返回状态给予提示
    if ('${status}' != '') {
        if ('${status}' == 0) {

            location.href = '/user/userInfo'
        }
        if ('${status}' == 1) {
            alert('账号已存在！')
        }
        if ('${status}' == 2) {
            alert('用户已存在！')
        }
    }
</script>
</html>