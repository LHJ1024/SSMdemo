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
</head>
<style>
    body{
        background-image:url(/static/images/bg1.jpg);
    }
</style>
<body>
<div style="padding: 52px 100px 10px;">
    <form class="bs-example bs-example-form" role="form" action="/contract/telephonecontract1"method="post"onsubmit="fn2()">
            <div class="row"style="height:80px ">
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon" >选取报表</span>
                        <input type="text" name="tablename" class="form-control" readonly="readonly"style="border-style:none"value="<c:if test="${not empty A}">${A.tablename}</c:if>">
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
                        <input type="text" name="serialNumber" class="form-control" readonly="readonly"style="border-style:none"value="<c:if test="${not empty A}">${A.id}</c:if>">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">合同编号： </span>
                        <input type="text" name="contractNumber" class="form-control"  required id="contractNumber">
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
                        <input type="text" name="accessNumber" class="form-control"style="border-style:none"value="<c:forEach var="a625" items="${list}">${a625.smallclass} </c:forEach><c:forEach var="a627" items="${list1}">${a627.smallclass} </c:forEach>">
                    </div>
                </div>
                <div class="col-md-3 col-sm-offset-2">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">分成比例:</span>
                        <input type="text"id="distributionRatio" name="distributionRatio" class="form-control" onchange="fn1()">
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
                    <textarea  class="form-control" rows="4" name="dividedInstructions" id="dividedInstructions"></textarea>
                </div>
            </div>
        <input type="text" name="bigclass" class="form-control"  style="display:none"  value="<c:forEach var="a625" items="${list}">${a625.bigclass} </c:forEach><c:forEach var="a627" items="${list1}">${a627.bigclass} </c:forEach>">
        <input type="text" name="smallclass" class="form-control" style="display:none"  value="<c:forEach var="a625" items="${list}">${a625.smallclass} </c:forEach><c:forEach var="a627" items="${list1}">${a627.smallclass} </c:forEach>">
        <input type="text" name="numberType" class="form-control" style="display:none"  value="<c:forEach var="a625" items="${list}">${a625.numberType} </c:forEach><c:forEach var="a627" items="${list1}">${a627.numberName} </c:forEach>">
            <input type="submit" class="btn btn-primary " value="是" >
            <a href="/usertype"  target="content" class="btn btn-primary">否</a>
    </form>

    <table class="table table-striped table-hover table-bordered" style="word-break:break-all; ">
        <thead class="thr">
        <tr>
            <th>业务报表</th>
            <th>增值业务大类名称</th>
            <th>增值业务细类名称</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="a625" items="${list}" varStatus="status">
            <tr>
                <td>A625</td>
                <td>${a625.bigclass}</td>
                <td>${a625.smallclass}</td>

            </tr>
        </c:forEach>
        <c:forEach var="a627" items="${list1}" varStatus="status">
            <tr>
                <td>A627</td>
                <td>${a627.bigclass}</td>
                <td>${a627.smallclass}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>
    function fn1() {
        var a =document.getElementById("distributionRatio").value;
        var b=document.getElementById("dividedInstructions");
        var c=100-a;
        b.value="电信"+a+"%,"+"sp"+c+"%";
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
