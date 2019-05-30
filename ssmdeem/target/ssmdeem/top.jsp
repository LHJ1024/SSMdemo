<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/16
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
            list-style: none;
        }
        #frist{
            position: relative;
            height: 220px;

            background-image:url(static1/images/Starry.jpg);
        }
        #frist ul li{
            border-radius: 5px;
            background-color: blue;
            width: 120px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            float: left;
            /*  position: relative;*/
            margin: 20px 10px 520px 30px;
            /* color: floralwhite;*/
            font-size: 20px;
            background: -webkit-linear-gradient(left, #18BADE , #0089FF); /* Safari 5.1 - 6.0 */
            background: -o-linear-gradient(right, #18BADE , #0089FF); /* Opera 11.1 - 12.0 */
            background: -moz-linear-gradient(right, #18BADE , #0089FF); /* Firefox 3.6 - 15 */
            background: linear-gradient(to right, #18BADE , #0089FF); /* 标准的语法（必须放在最后） */
        }
        #ul1{

            position:relative;

        }
        #ul1 ul{
            width: 800px;
            position: absolute;
            left:  97%;
            top: 4%;
            transform:translate(-50%,0%);
        }


        @keyframes myfirst
        {
            from {transform: rotateY(0deg);}
            to {transform: rotateY(360deg);}
        }
        /* Safari and Chrome */
        @-webkit-keyframes myfirst
        {
            from {transform: rotateY(0deg);}
            to {transform: rotateY(360deg);}
        }
        #ul1 ul li a{
            display: block;
            text-decoration: none;
            color:#fff;
        }
        #ul1 ul li a{

            box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
            outline: 1px solid;

            text-shadow: none;
            -webkit-transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
            transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
        }

        #ul1 ul li a:hover {
            border: 1px solid;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
            outline-color: rgba(255, 255, 255, 0);
            outline-offset: 15px;
            text-shadow: 1px 1px 2px #427388;
        }
        .accordion {
            /*     background: url(static/images/Starry.jpg);*/
            background-size: cover;

        }

        span{
            color: #F1F1F1;
        }
        body{
            font-family:"Microsoft YaHei";
        }
        a{
            font-size: 16px;
        }
        .accordion .link
        {
            font-size:  70px;
            color: #00a1ff;
        }
    </style>
</head>
<body>
<div style="" id="frist">
    <div id="ul1">
        <div class="accordion">
            <p class="link">声讯业务合同</p>
        </div>
        <ul>
            <li><a href="#"  class="fi" rel="popover" data-content="欢迎"  data-placement="left" ><span class="glyphicon glyphicon-user"><c:if test="${not empty users}">${users.name}</c:if></span></a></li>
            <li><a href="/user/logout"  target="_top" class="fi" rel="popover" data-content="退出当前账号"  data-placement="right">退出</a></li>
            </li>
        </ul>
    </div>

</div>
</body>

<script>
    $(function () {
        $(".fi").popover({trigger: 'hover'});
    });
</script>
</html>