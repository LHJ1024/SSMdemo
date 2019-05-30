<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/5/2
  Time: 20:22
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
<%--<script type="text/javascript">--%>
    <%--function fn1() {--%>
        <%--var a = document.getElementById("placename").value;--%>
        <%--if (a=="") {--%>
            <%--alert("请填写要搜索区县");--%>
            <%--return false;--%>
        <%--}--%>

        <%--return true;--%>
    <%--}--%>
<%--</script>--%>
<body>
<div style="padding: 22px 8px 10px;">
<form action="/a625/select"  role="form"method="post">
    <div class="row" style="height: 1px ">
        <div class="col-sm-2">
            <div class="input-group input-group-sm">
                <span class="input-group-addon">区县</span>
                <input type="text" name="placename" class="form-control" id="placename">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group input-group-sm">
                <span class="input-group-addon">业务增值大类</span>
                <input type="text" name="bigclass" class="form-control">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group input-group-sm">
                <span class="input-group-addon">业务增值细类</span>
                <input type="text" name="smallclass" class="form-control">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group input-group-sm">
                <span class="input-group-addon">账目类型</span>
                <input type="text" name="numberType" class="form-control">
            </div>
        </div>
    </div>
    <input type="submit" class="btn btn-primary btn-sm" value="筛选" onsubmit="return fn1()">
</form>
    <div class="panel">
        <div class="panel-body">
            <table class="table table-striped table-hover table-bordered" style="word-break:break-all;">
                <thead class="thr">
                <tr>
                    <th>序号</th>
                    <th>区县</th>
                    <th>增值业务大类名称</th>
                    <th>增值业务细类名称</th>
                    <th>账目类型</th>
                    <th>产品名</th>
                    <th>城市/农村</th>
                    <th>是否上网捆绑</th>
                    <th>用户数</th>
                    <th>话单张数</th>
                    <th>计费时长</th>
                    <th>折扣前费用</th>
                    <th>折扣后费用</th>
                </tr>
                <tbody>
<c:forEach  var="a625" items="${page.list}" begin="0" step="1" varStatus="userlist">
    <tr>
        <td>${userlist.index+1}</td>
        <td>${a625.placename}</td>
        <td>${a625.bigclass}</td>
        <td>${a625.smallclass}</td>
        <td>${a625.numberType}</td>
        <td>${a625.product}</td>
        <td>${a625.cityVillage}</td>
        <td>${a625.internetbundle}</td>
        <td>${a625.usernumber}</td>
        <td>${a625.znumber}</td>
        <td>${a625.costtime}</td>
        <td>${a625.beforFee}</td>
        <td>${a625.afterFee}</td>
    </tr>
</c:forEach>
            </tbody>
                </thead>
            </table>
            <p>总页数数：${page.totalPage}总记录数：${page.totalCount}</p>
            <ul class="pagination pagination-lg">
            <c:choose>
                <c:when test="${page.page == 1}">
                    <li class="disabled">
                        <a href="/contract/a625" aria-label="Previous">
                            <span aria-hidden="true">«</span>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <%-- 点击到首页--%>
                    <li>
                        <a href="/contract/a625?page=1" aria-label="Previous">
                            <span aria-hidden="true">«</span>
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>

            <%--中间页--%>
            <%--显示6页中间页[begin=起始页,end=最大页]--%>
            <%--总页数没有6页--%>
            <c:choose>
                <c:when test="${page.totalPage <=18}">
                    <c:set var="begin" value="1"/>
                    <c:set var="end" value="${page.totalPage}"/>
                </c:when>
                <%--页数超过了6页--%>
                <c:otherwise>
                    <c:set var="begin" value="${page.page }"/>
                    <c:set var="end" value="${page.page + 14}"/>
                    <%--如果begin减1后为0,设置起始页为1,最大页为6--%>
                    <c:if test="${begin -1 <= 0}">
                        <c:set var="begin" value="1"/>
                        <c:set var="end" value="17"/>
                    </c:if>
                    <%--如果end超过最大页,设置起始页=最大页-5--%>
                    <c:if test="${end > page.totalPage}">
                        <c:set var="begin" value="${page.totalPage -10}"/>
                        <c:set var="end" value="${page.totalPage}"/>
                    </c:if>
                </c:otherwise>
            </c:choose>
            <%--遍历--%>
            <c:forEach var="i" begin="${begin}" end="${end}">
                <%--当前页,选中--%>
            <c:choose>
                <c:when test="${i == page.page}">
                    <li class="active"><a href="/contract/a625">${i}</a></li>
                </c:when>
                <%--不是当前页--%>
                <c:otherwise>
                    <li><a href="/contract/a625?page=${i}">${i}</a></li>
                </c:otherwise>
            </c:choose>
            </c:forEach>
            <%--如果是最后一页,不允许点击--%>
            <c:choose>
                <c:when test="${page.page == page.totalPage}">
                    <li class="disabled">
                        <a href="/contract/a625" aria-label="Previous">
                            <span aria-hidden="true">«</span>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <%-- 点击到尾页--%>
                    <li>
                        <a href="/contract/a625?page=${page.totalPage}" aria-label="Next">
                            <span aria-hidden="true">»</span>
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>
            </ul>
        </div>
    </div>
</div>
</body>
</html>