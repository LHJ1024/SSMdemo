<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/26
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <style>
        body{
            background-image:url(/static/images/bg1.jpg);
        }


        hr {
            border: 0;
            height: 1px;
            background-color: #00ADFF;
        }


        .test ul {

            position: absolute;
            left: 50%;
            top: -30%;
            transform: translate(-50%, -50%);
        }

    </style>
</head>
<body>
<div style="padding: 64px 100px 10px;">
    <div class="panel">
        <div class="panel-body">
            <table class="table table-striped table-hover table-bordered" style="word-break:break-all; word-wrap:break-all;">
                <thead class="thr">
                <tr>
                    <th>SP名称</th>
                    <th>合同编号</th>
                    <th>节目号</th>
                    <th>列收方式</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach  var="tcontract" items="${page.list}"  begin="0" step="1">
                    <tr>
                        <td class="t1"> <input type="text"value="${tcontract.sp}"style="border-style:none" size="8" name="commodity"></td>
                        <td>${tcontract.contractNumber}</td>
                        <td>${tcontract.accessNumber}</td>
                        <td>${tcontract.collectionType}</td>
                        <td><input type="text" style="display:none"class="c1" value="${tcontract.id}">
                            <a class="cc" target="content" >更改</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <p>总页数数：${page.totalPage}总记录数：${page.totalCount}</p>
            <ul class="pagination pagination-lg">
                <c:choose>
                    <c:when test="${page.page == 1}">
                        <li class="disabled">
                            <a href="/basic/spName" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <%-- 点击到首页--%>
                        <li>
                            <a href="/basic/spName?page=1" aria-label="Previous">
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
                            <li class="active"><a href="/basic/spName">${i}</a></li>
                        </c:when>
                        <%--不是当前页--%>
                        <c:otherwise>
                            <li><a href="/basic/spName?page=${i}">${i}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <%--如果是最后一页,不允许点击--%>
                <c:choose>
                    <c:when test="${page.page == page.totalPage}">
                        <li class="disabled">
                            <a href="/basic/spName" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <%-- 点击到尾页--%>
                        <li>
                            <a href="/basic/spName?page=${page.totalPage}" aria-label="Next">
                                <span aria-hidden="true">»</span>
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>
<script>
    $(function(){
        $(".cc").click(function(){
            var id=$(this).siblings(".c1").val();
            var commodity=$(this).parent().siblings(".t1").children().val();
            window.location.href="/basic/update?id="+id+"&sp="+commodity;
        })
    })
</script>
</body>
</html>
