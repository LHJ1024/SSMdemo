<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/19
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .title {
            width: 100px;
            height: 40px;
            border-radius: 5px;
            background: #00ADFF;
            text-align: center;
            line-height: 40px;
            color: #fff;
            font-family: "Microsoft YaHei";
            position: relative;
            top: 19px;
        }

        hr {
            border: 0;
            height: 1px;
            background-color: #00ADFF;
        }

        .test {
            position: relative;
            height: 20px;
        }

        .test ul {

            position: absolute;
            left: 50%;
            top: -30%;
            transform: translate(-50%, -50%);
        }
        #con{
            display: none;
        }
        #thr{
            background: #33B6F5;
            color: #fff;
        }
    </style>
    <style>
        body{
            background-image:url(/static/images/bg1.jpg);
        }
    </style>
</head>
<body>
<div style="padding: 100px 100px 10px;"><div class="container">
    <form action="/basic/usertype" method="post">
            <a href="usertype"  target="content" class="btn btn-primary">请空</a>
    </form></div>
    <div class="panel">
        <div class="panel-body">
            <table class="table table-striped table-hover table-bordered" style="word-break:break-all; word-wrap:break-all;">
                <thead class="thr">
                <tr>
                    <th>业务报表</th>
                    <th>城市/农村</th>
                    <th>是否上网捆绑</th>
                    <th>用户类型</th>
                    <th>编号</th>
                    <th>账期</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="a602" items="${list}" varStatus="status">
                    <tr>
                        <td>A602</td>
                        <td>${a602.cityVillage}</td>
                        <td>${a602.internetbundle}</td>
                        <td>${a602.userType}</td>
                        <td>${a602.id}</td>
                        <td> <fmt:formatDate value="${a602.time}" pattern="yyyy-MM-dd"/></td>
                        <td><a href="/basic/usertype3?id=${a602.id}&tablename=A602" target="content"class="btn btn-primary">更改</a></td>
                    </tr>
                </c:forEach>
                <c:forEach var="a629" items="${list2}" varStatus="status">
                    <tr>
                        <td>A629</td>
                        <td>${a629.cityVillage}</td>
                        <td>${a629.internetbundle}</td>
                        <td>${a629.userType}</td>
                        <td>${a629.id}</td>
                        <td> <fmt:formatDate value="${a629.time}" pattern="yyyy-MM-dd"/></td>
                        <td><a href="/basic/usertype3?id=${a629.id}&tablename=A629" target="content"class="btn btn-primary">更改</a></td>
                    </tr>
                </c:forEach>
                <c:forEach var="a636s" items="${list1}" varStatus="status">
                    <tr>
                        <td>A636s</td>
                        <td>${a636s.cityVillage}</td>
                        <td>${a636s.internetbundle}</td>
                        <td>${a636s.userType}</td>
                        <td>${a636s.id}</td>
                        <td> <fmt:formatDate value="${a636s.time}" pattern="yyyy-MM-dd"/></td>
                        <td><a href="/basic/usertype3?id=${a636s.id}&tablename=A636s" target="content"class="btn btn-primary">更改</a></td>
                    </tr>
                </c:forEach>

                <c:forEach var="a636y" items="${list3}" varStatus="status">
                    <tr>
                        <td>A636y</td>
                        <td>${a636y.cityVillage}</td>
                        <td>${a636y.internetbundle}</td>
                        <td>${a636y.userType}</td>
                        <td>${a636y.id}</td>
                        <td> <fmt:formatDate value="${a636y.time}" pattern="yyyy-MM-dd"/></td>
                        <td><a href="/basic/usertype3?id=${a636y.id}&tablename=A636y" target="content"class="btn btn-primary">更改</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
