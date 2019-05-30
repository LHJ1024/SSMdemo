<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/11
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title>登录页面</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../static/css/style.css" rel='stylesheet' type='text/css' />
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<style>
    body{
        background-image:url(/static/images/bg1.jpg);
    }
</style>
<body id="login">
<div class="login-logo">
</div>
<h2 class="form-heading" >登录</h2>
<div class="app-cam">
    <form id="zc" action="/user/login" method="post">
        <input type="text" class="text" value="账号" required id="username" name="username"onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '帐号';}">
        <input type="password" value="Password" required id="password" name="password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'password';}">
        <div class="submit"><input type="submit" value="登录"></div>
        <ul class="new">
            <li class="new_left"><p><a href="#"></a></p></li>
            <li class="new_right"><p class="sign">新来的?<a href="/user/register"style="color:#b73333"> 注册</a></p></li>
            <div class="clearfix"></div>
        </ul>
    </form>
</div>
<div class="copy_layout login register">
    <p>Copyright © 2019 Modern. All Rights Reserved |  </p>
</div>
</body>
<script>
    //对应后台返回的提示
    if ('${status}' != '') {
        if ('${status}' == 0) {
            location.href = '/user/userInfo'
        }else if ('${status}' == 1) {
            alert('该账户不存在！');
        }
        else if ('${status}' == 2) {
            alert('密码错误！')
        }
    }
</script>
</html>
