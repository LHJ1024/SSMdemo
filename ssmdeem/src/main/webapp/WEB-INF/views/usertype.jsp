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
<div style="padding: 100px 100px 10px;"><div class="container">
    <div  class="container" style="padding: -19px 100px 10px;">
        <form action="/basic/usertype" method="post">
            <div class="row"style="height:80px ">
                <div class="col-sm-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">城市/农村</span>
                        <select class="form-control" required id="cityVillage"name="cityVillage">
                            <option>城市</option>
                            <option>农村</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-3 ">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">用户类型</span>
                    <select class="form-control" name="userType">
                        <option>小灵通</option>
                        <option>移动</option>
                        <option>固话</option>
                    </select>
                </div>
            </div>
                <div class="col-sm-4">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">是否上网捆绑：</span><span class="input-group-addon">是<input type="radio" checked="checked" name="internetbundle" value="是"/></span>
                        <span class="input-group-addon">否<input type="radio" name="internetbundle" value="否" /></span>
                    </div>
                </div>

            </div>
            <input type="submit" class="btn btn-primary " value="筛选" >
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
            </table>
        </div>
    </div>
</div>
</div>
</body>
</html>
