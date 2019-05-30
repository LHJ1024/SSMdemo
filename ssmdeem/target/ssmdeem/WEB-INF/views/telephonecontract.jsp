<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/14
  Time: 22:15
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
        body{
            background-image:url(/static/images/bg1.jpg);
        }
    </style>
</head>
<body>
    <div style="padding: 52px 100px 10px;">
    <form class="bs-example bs-example-form" role="form" action="/contract/telephonecontract1"method="post"onsubmit="fn2()">
            <div class="row"style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon" >选取报表</span>
                        <select class="form-control" name="tablename" id="tablename" >
                            <option >请选择</option>
                            <option >A625</option>
                            <option >A627</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-2 ">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">起:</span>
                        <input type="date"  name="startTime" class="form-control"  id="startTime">
                    </div>
                </div>
                <div class="col-md-2 col-sm-offset-1">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">止:</span>
                        <input type="date"  name="endTime" class="form-control"  id="endTime">
                    </div>
                </div>
            </div>
            <div  class="row"style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">业务编号:</span>
                        <input type="text" name="serialNumber" class="form-control" id="serialNumber"  onchange="fn1()">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">合同编号： </span>
                        <input type="text" name="contractNumber" class="form-control"  >
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">列收方式</span>
                        <select class="form-control" name="collectionType">
                            <option>先列收后分成</option>
                            <option>先分成后列收</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row "style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">节目号:</span>
                        <input type="text" name="accessNumber" class="form-control">
                    </div>
                </div>
                <div class="col-md-3 col-sm-offset-2">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">分成比例:</span>
                        <input type="text" name="distributionRatio" class="form-control">
                    </div>
                </div>
            </div>
        <div class="row "style="height:80px ">
            <div class="col-md-3 ">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">数据分类</span>
                    <select class="form-control" name="dateclass">
                        <option>城市</option>
                        <option>乡村</option>
                        <option>小灵通</option>
                        <option>未捆绑</option>
                        <option>捆绑</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3 col-sm-offset-2">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">财务科目编号</span>
                    <select class="form-control" name="moneysubject">
                        <option>1576</option>
                        <option>1577</option>
                        <option>1578</option>
                        <option>1580</option>
                        <option>1581</option>
                    </select>
                </div>
            </div>
        </div>
            <div class="row "style="height:80px ">
                <div class="col-md-3 ">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">sp名称：</span>
                        <input type="text" name="sp" class="form-control" >
                    </div>
                </div>
                <div class="col-md-3 col-sm-offset-2">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">分成说明:</span>
                    </div>
                    <textarea  class="form-control" rows="4" name="dividedInstructions"></textarea>
                </div>
            </div>

            <input type="submit" class="btn btn-primary btn-primary" value="是" >
            <input type="reset"  class="btn btn-primary btn-primary" value="否"/>
    </form>

<table class="table table-striped table-hover table-bordered" style="word-break:break-all;">
<thead class="thr">
<tr>
    <th>业务报表</th>
    <th>增值业务大类名称</th>
    <th>增值业务细类名称</th>
</tr>
</thead>
<tbody>
</table>
</div>
<script>
    function fn1() {
        var sel1 = document.getElementById('tablename');
        var index = sel1.selectedIndex;
        var tablename=sel1.options[index].value;
        var id = document.getElementById('serialNumber').value;
        window.location.href="/xianshi?tablename="+tablename+"&id="+id;
    }
    if ('${status}' != '') {
        if ('${status}' == 1) {
            alert('合同录入成功');
            location.href = '/first.jsp'
        }
        else if ('${status}' == 2) {
            alert('合同已存在')
        }
    }
</script>
</body>
</html>
