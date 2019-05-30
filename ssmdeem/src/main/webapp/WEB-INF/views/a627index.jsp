<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/5/4
  Time: 16:38
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
</head>
<style>
    body{
        background-image:url(/static/images/bg1.jpg);
    }
</style>
<body>
<div style="padding: 100px 100px 10px;">
    <a href="/a627/back"  target="content" class="btn btn-primary">请空</a>
    <div class="panel">
        <div class="panel-body">
            <table class="table table-striped table-hover table-bordered" style="word-break:break-all; word-wrap:break-all;">
                <thead class="thr">
                <tr>
                    <th>序号</th>
                    <th>区县</th>
                    <th>增值业务大类名称</th>
                    <th>增值业务细类名称</th>
                    <th>账目名称</th>
                    <th>产品名</th>
                    <th>城市/农村</th>
                    <th>是否上网捆绑</th>
                    <th>用户数</th>
                    <th>实收费用</th>
                </tr>
                <tbody>
                <c:forEach  var="a627" items="${list}" varStatus="userlist">
                    <tr>
                        <td>${userlist.index+1}</td>
                        <td>${a627.placename}</td>
                        <td>${a627.bigclass}</td>
                        <td>${a627.smallclass}</td>
                        <td>${a627.numberName}
                        <td>${a627.product}</td>
                        <td>${a627.cityVillage}</td>
                        <td>${a627.internetbundle}</td>
                        <td>${a627.usernumber}</td>
                        <td>${a627.yfee}</td>
                    </tr>
                </c:forEach>
                </tbody>
                </thead>
            </table>
        </div>
    </div>
</div>
</div>
</body>
</html>
