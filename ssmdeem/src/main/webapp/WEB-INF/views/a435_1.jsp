<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/15
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<style>
    body {
        background-image: url(/static/images/bg1.jpg);
    }
</style>
<script type="text/javascript">
    function fn3() {
        var a = document.getElementById("upload").value;
        if (a.indexOf(".xlsx")==-1&&a.indexOf(".xls")==-1) {
            alert("请添加xlsx或者xls文件");
            return false;
        }
        alert("录入成功");
        return true;
    }

    function fn1() {
        var a = document.getElementById("beforFee").value;
        var b = document.getElementById("fee").value;
        var c = document.getElementById("afterFee");
        c.value = a - b;
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
        <form action="/import" role="form" method="post" enctype="multipart/form-data" onsubmit="return fn3()">
            <input type="file" id="upload" name="upfile" value="上传" class=" button  default">
            <input type="submit" class="btn btn-primary " value="录入">
        </form>
        <form id="add" class="bs-example bs-example-form" role="form" action="/date/a435_1" method="post"
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
                        <span class="input-group-addon">声讯台：</span>
                        <input type="text" name="voicestation" class="form-control" placeholder="" required
                               id="voicestation">
                    </div>
                </div>
            </div>
            <div class="row" style="height:80px ">
                <div class="col-md-5">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">合作商名：</span>
                        <input type="text" name="commodity" class="form-control" placeholder="" required id="commodity">
                    </div>
                </div>
            </div>
            <div class="row" style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">折扣前费用：</span>
                        <input type="text" name="beforFee" class="form-control" placeholder="" required id="beforFee">
                    </div>
                </div>
                <div class="col-md-3 col-lg-offset-1">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">折扣费用</span>
                        <input type="text" name="fee" class="form-control" placeholder="" required id="fee"
                               onchange="fn1()">
                    </div>
                </div>
                <div class="col-md-3 col-lg-offset-1">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">折扣后费用</span>
                        <input type="text" name="afterFee" class="form-control" placeholder="" required id="afterFee">
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
