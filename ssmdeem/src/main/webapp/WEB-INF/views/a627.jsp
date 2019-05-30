<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/13
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>a627</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<style>
    body {
        background-image: url(/static/images/bg1.jpg);
    }
</style>
<script>
    function fn3() {
        var a = document.getElementById("upload").value;
        if (a.indexOf(".xlsx")==-1&&a.indexOf(".xls")==-1) {
            alert("请添加xlsx或者xls文件");
            return false;
        }
        alert("录入成功");
        return true;
    }
    function fn2() {
        var a = document.getElementById("serialNumber").value;
        if (a != " ") {
            alert("录入成功");
        }
        else {
            alert("请填写相应字段")
        }
    }
</script>
<body>
<div style="padding: 100px 100px 10px;">
    <div class="container">
        <form action="/import4" role="form" method="post" enctype="multipart/form-data" onsubmit="return fn3()">
            <input type="file" id="upload" name="upfile" value="上传" class=" button  default">
            <input type="submit" class="btn btn-primary " value="录入">
        </form>
        <form id="add" class="bs-example bs-example-form" role="form" action="/date/a627" method="post"
              onsubmit="fn2()">
            <div class="row" style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">区县名:</span>
                        <input type="text" name="placename" class="form-control" placeholder="地区" required
                               id="placename">
                    </div>
                </div>
                <div class="col-md-4 col-sm-offset-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">城市/农村</span>
                        <select class="form-control" required id="cityVillage" name="cityVillage">
                            <option>城市</option>
                            <option>农村</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="row" style="height:80px ">
                <div class="col-md-5">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">增值业务大类名称</span>
                        <select class="form-control" name="bigclass">
                            <option>声讯</option>
                            <option>多方通信</option>
                            <option>QQ电话</option>
                            <option>11896</option>
                            <option>12121</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-5 col-sm-offset-1">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">增值业务细类名称:</span>
                        <input type="text" name="smallclass" class="form-control" placeholder="" required
                               id="smallclass">
                    </div>
                </div>
            </div>

            <div class="row " style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">账目名称</span>
                        <input type="text" name="numberName" class="form-control" placeholder="" required
                               id="numberName">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">产品名:</span>
                        <input type="text" name="product" class="form-control" placeholder="" required id="product">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">是否上网捆绑：</span><span class="input-group-addon">是<input
                            type="radio" checked="checked" name="internetbundle" value="捆绑"/></span>
                        <span class="input-group-addon">否<input type="radio" name="internetbundle" value="未捆绑"/></span>
                    </div>
                </div>
            </div>
            <div class="row " style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">用户数</span>
                        <input type="text" name="usernumber" class="form-control" placeholder="" required
                               id="usernumber">
                    </div>
                </div>
                <div class="col-md-3 col-sm-offset-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">实收费用</span>
                        <input type="text" name="yfee" class="form-control" placeholder="" id="yfee">
                    </div>
                </div>
            </div>
            <div class="row " style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">编号： </span>
                        <input type="text" name="serialNumber" class="form-control" placeholder="请输入编号" required
                               id="serialNumber">
                    </div>
                </div>
                <div class="col-md-3 col-sm-offset-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">账期:</span>
                        <input type="date" name="time" class="form-control" placeholder="请输入内容" id="time">
                    </div>
                </div>
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="录入">
        </form>

    </div>
</div>
</body>
</html>
