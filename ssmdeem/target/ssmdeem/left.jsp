<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/16
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet">
    <link rel="stylesheet" href="../static1/css/style1.css" media="screen" type="text/css"/>

    <style>
        .accordion {
            background: url(static1/images/Starry.jpg);
            background-size: cover;

        }
        body{
            font-family:"Microsoft YaHei";
        }
        a{
            font-size: 16px;
        }
        .accordion .link
        {
            font-size: 18px;
        }
    </style>


</head>
<body>
<!-- Contenedor -->
<ul id="accordion" class="accordion">
    <li>
        <div class="link"><i class="fa fa-paint-brush"></i>基础维护<i class="fa fa-chevron-down"></i></div>

        <ul class="submenu">

            <li><a href="basic/place" target="content" class="fi" rel="popover" data-placement="top">区县</a></li>
            <li><a href="basic/change" target="content" class="fi" rel="popover"  data-placement="top">区县名称转换</a></li>
            <li><a href="basic/usertype" target="content" class="fi" rel="popover"  data-placement="top">用户类型/产品名</a></li>
            <li><a href="basic/spName" target="content" class="fi" rel="popover"  data-placement="top">Sp档案</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="fa fa-paint-brush"></i>合同管理<i class="fa fa-chevron-down"></i></div>

        <ul class="submenu">
            <li><a href="/contract/telephonecontract"target="content" class="fi" rel="popover" data-placement="top">声讯业务合同</a></li>
            <li><a href="/contract/a625"target="content" class="fi" rel="popover" data-placement="top">A625业务报表</a></li>
            <li><a href="/contract/a627"target="content" class="fi" rel="popover" data-placement="top">A627业务报表</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="fa fa-mobile"></i>数据录入<i class="fa fa-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="/date/a435_1"target="content" class="fi" rel="popover" data-placement="top">A435_1</a></li>
            <li><a href="/date/a435_2"target="content" class="fi" rel="popover" data-placement="top">A435_2</a></li>
            <li><a href="/date/a602"target="content" class="fi" rel="popover" data-placement="top">A602</a></li>
            <li><a href="/date/a625"target="content" class="fi" rel="popover" data-placement="top">A625</a></li>
            <li><a href="/date/a627"target="content" class="fi" rel="popover" data-placement="top">A627</a></li>
            <li><a href= "/date/a629"target="content" class="fi" rel="popover" data-placement="top">A629</a></li>
            <li><a href="/date/a636y"target="content" class="fi" rel="popover" data-placement="top">A636_11896Y</a></li>
            <li><a href="/date/a636s"target="content" class="fi" rel="popover" data-placement="top">A636_11896S</a></li></ul>
    </li>
</ul>
<script src='../static1/js/jquery.js'></script>
<script src="../static1/js/index.js"></script>
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
