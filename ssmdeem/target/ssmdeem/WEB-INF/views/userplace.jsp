<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/21
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
         body{
             background-image:url(/static/images/bg1.jpg);
         }

    </style>
</head>
<body>
<div style="padding: 34px 100px 10px;">
<div class="panel">
    <div class="panel-body">
        <table class="table table-striped table-hover table-bordered" style="word-break:break-all; word-wrap:break-all;">
            <thead class="thr">
            <tr>
                <th>区县</th>
                <th>业务报表</th>
                <th>用户类型</th>

            </tr>
            </thead>
            <tbody>
            <%--<c:forEach  var="a435_1" items="${list1}">--%>
                <%--<tr>--%>
                    <%--<td>${a435_1.placename}</td>--%>
                    <%--<td>A435</td>--%>
                    <%--<td>${a435_1.serialNumber}</td>--%>
                    <%--<td> <fmt:formatDate value="${a435_1.time}" pattern="yyyy-MM-dd"/></td>--%>
                <%--</tr>--%>
            <%--</c:forEach>--%>
            <c:forEach  var="a602" items="${list}" varStatus="status">
                <tr>
                    <td> <input type="text"value="${a602.placename}"style="border-style:none" size="3"></td>
                    <td>A602</td>
                    <td>${a602.userType}</td>
                </tr>
            </c:forEach>
            <%--<c:forEach  var="a625" items="${list2}" varStatus="status">--%>
                <%--<tr>--%>
                    <%--<td>${a625.placename}</td>--%>
                    <%--<td>A625</td>--%>
                    <%--<td>${a625.serialNumber}</td>--%>
                    <%--<td> <fmt:formatDate value="${a625.time}" pattern="yyyy-MM-dd"/></td>--%>
                <%--</tr>--%>
            <%--</c:forEach>--%>
            <%--<c:forEach  var="a627" items="${list3}" varStatus="status">--%>
                <%--<tr>--%>
                    <%--<td>${a627.placename}</td>--%>
                    <%--<td>A627</td>--%>
                    <%--<td>${a627.serialNumber}</td>--%>
                    <%--<td> <fmt:formatDate value="${a627.time}" pattern="yyyy-MM-dd"/></td>--%>
                <%--</tr>--%>
            <%--</c:forEach>--%>
            <c:forEach  var="a629" items="${list4}" varStatus="status">
                <tr>
                    <td>${a629.placename}</td>
                    <td>A629</td>
                    <td>${a629.userType}</td>
                </tr>
            </c:forEach>
            <c:forEach  var="a636y" items="${list5}" varStatus="status">
                <tr>
                    <td>${a636y.placename}</td>
                    <td>A636y</td>
                    <td>${a636y.userType}</td>
                </tr>
            </c:forEach>
            <c:forEach  var="a636s" items="${list6}" varStatus="status">
                <tr>
                    <td>${a636s.placename}</td>
                    <td>A636s</td>
                    <td>${a636s.userType}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
