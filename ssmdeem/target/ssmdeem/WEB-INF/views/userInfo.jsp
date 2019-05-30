<%--
  Created by IntelliJ IDEA.
  User: JAX
  Date: 2019/4/12
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="../static/css/style.css" rel='stylesheet' type='text/css' />
    <link href="../static/css/lines.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <link href="../static/css/custom.css" rel="stylesheet">
    <script src="../static/js/metisMenu.min.js"></script>
    <script src="../static/js/custom.js"></script>
    <script src="../static/js/d3.v3.js"></script>
    <script src="../static/js/rickshaw.js"></script>

</head>
<body>

<%--<div>--%>
    <%--<c:if test="${not empty users}">--%>
    <%--<div>欢迎您，${users.name}--%>
        <%--<a href="/user/logout">注销</a></div></div>--%>
<%--</c:if>--%>
<%--<c:if test="${ empty users}">--%>
    <%--对不起，请先<a href="/user/login">登录</a>--%>
<%--</c:if>--%>
<%--</div>--%>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
        <p class="navbar-brand">声讯业务合同</p>
    </div>
            <div class="nav navbar-nav navbar-right">
                    <button type="button" class="btn btn-default btn-lg" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span><c:if test="${not empty users}">${users.name}</c:if><span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">修改密码</a></li>
                        <li class="divider"></li>
                        <li><a href="/user/logout">注销</a></li>
                    </ul>


            </div>

            <%--<c:if test="${not empty users}">--%>
                <%--欢迎您，${users.name}--%>
                <%--<a class="sel_btn ch_cls" href="/user/logout">注销</a>--%>
            <%--</c:if>--%>
        <%--<c:if test="${ empty users}">--%>
        <%--对不起，请先<a href="/user/login">登录</a>--%>
        <%--</c:if>--%>
        </div>

     <div class="navbar-default sidebar" role="navigation">
      <%--<div class="sidebar-nav navbar-collapse">--%>
        <ul class="nav" id="side-menu">
            <li>
                <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
                </li>
            <li>
                <a href="#"><i class="fa fa-laptop nav_icon"></i>基础维护<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/contract/voicecontract">区县</a>
                    </li>
                    <li><a href="/contract/voicecontract">区县名称转换</a></li>
                    <li><a href="/contract/voicecontract">用户类型/产品名</a></li>
                    <li><a href="/contract/voicecontract">Sp档案</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-indent nav_icon"></i>合同管理<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/contract/voicecontract">声讯业务合同</a>
                    </li>
                    <li>
                        <a href="/contract/voicecontract">电话业务合同</a>
                    </li>
                    <li><a href="/contract/voicecontract">11896业务合同</a></li>
                    <li><a href="/contract/voicecontract">多方通信业务合同</a></li>
                    <li><a href="/contract/voicecontract">12121业务合同</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-envelope nav_icon"></i>数据录入<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/date/a625">A625</a>
                    </li>
                    <li>
                        <a href="/date/a627">A627</a>
                    </li>
                    <li><a href="/date/a602">A602</a></li>
                    <li><a href="/date/a636s">A635_11896S</a></li>
                    <li><a href="/date/a636y">A635_11896Y</a></li>
                    <li><a href="/date/a435_1">A425_1</a></li>
                    <li><a href="/date/a435_2">A425_2</a></li>
                    <li><a href= "/date/a629">A629</a></li>
                </ul>
            </li>
        </ul>
    </div>

    </nav>
    <div id="page-wrapper">
        <div class="graphs">
            <div class="col_3">
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-thumbs-up icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>45%</strong></h5>
                            <span>New Orders</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-users user1 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>1019</strong></h5>
                            <span>New Visitors</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-comment user2 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>1012</strong></h5>
                            <span>New Users</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-dollar dollar1 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>$450</strong></h5>
                            <span>Profit Today</span>
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        <div class="col_1">
            <div class="col-md-4 span_7">
                <div class="cal1 cal_2"><div class="clndr"><div class="clndr-controls"><div class="clndr-control-button"><p class="clndr-previous-button">previous</p></div><div class="month">July 2015</div><div class="clndr-control-button rightalign"><p class="clndr-next-button">next</p></div></div><table class="clndr-table" border="0" cellspacing="0" cellpadding="0"><thead><tr class="header-days"><td class="header-day">S</td><td class="header-day">M</td><td class="header-day">T</td><td class="header-day">W</td><td class="header-day">T</td><td class="header-day">F</td><td class="header-day">S</td></tr></thead><tbody><tr><td class="day adjacent-month last-month calendar-day-2015-06-28"><div class="day-contents">28</div></td><td class="day adjacent-month last-month calendar-day-2015-06-29"><div class="day-contents">29</div></td><td class="day adjacent-month last-month calendar-day-2015-06-30"><div class="day-contents">30</div></td><td class="day calendar-day-2015-07-01"><div class="day-contents">1</div></td><td class="day calendar-day-2015-07-02"><div class="day-contents">2</div></td><td class="day calendar-day-2015-07-03"><div class="day-contents">3</div></td><td class="day calendar-day-2015-07-04"><div class="day-contents">4</div></td></tr><tr><td class="day calendar-day-2015-07-05"><div class="day-contents">5</div></td><td class="day calendar-day-2015-07-06"><div class="day-contents">6</div></td><td class="day calendar-day-2015-07-07"><div class="day-contents">7</div></td><td class="day calendar-day-2015-07-08"><div class="day-contents">8</div></td><td class="day calendar-day-2015-07-09"><div class="day-contents">9</div></td><td class="day calendar-day-2015-07-10"><div class="day-contents">10</div></td><td class="day calendar-day-2015-07-11"><div class="day-contents">11</div></td></tr><tr><td class="day calendar-day-2015-07-12"><div class="day-contents">12</div></td><td class="day calendar-day-2015-07-13"><div class="day-contents">13</div></td><td class="day calendar-day-2015-07-14"><div class="day-contents">14</div></td><td class="day calendar-day-2015-07-15"><div class="day-contents">15</div></td><td class="day calendar-day-2015-07-16"><div class="day-contents">16</div></td><td class="day calendar-day-2015-07-17"><div class="day-contents">17</div></td><td class="day calendar-day-2015-07-18"><div class="day-contents">18</div></td></tr><tr><td class="day calendar-day-2015-07-19"><div class="day-contents">19</div></td><td class="day calendar-day-2015-07-20"><div class="day-contents">20</div></td><td class="day calendar-day-2015-07-21"><div class="day-contents">21</div></td><td class="day calendar-day-2015-07-22"><div class="day-contents">22</div></td><td class="day calendar-day-2015-07-23"><div class="day-contents">23</div></td><td class="day calendar-day-2015-07-24"><div class="day-contents">24</div></td><td class="day calendar-day-2015-07-25"><div class="day-contents">25</div></td></tr><tr><td class="day calendar-day-2015-07-26"><div class="day-contents">26</div></td><td class="day calendar-day-2015-07-27"><div class="day-contents">27</div></td><td class="day calendar-day-2015-07-28"><div class="day-contents">28</div></td><td class="day calendar-day-2015-07-29"><div class="day-contents">29</div></td><td class="day calendar-day-2015-07-30"><div class="day-contents">30</div></td><td class="day calendar-day-2015-07-31"><div class="day-contents">31</div></td><td class="day adjacent-month next-month calendar-day-2015-08-01"><div class="day-contents">1</div></td></tr></tbody></table></div></div>
            </div>
            <div class="col-md-4 span_8">
                <div class="activity_box">
                    <div class="scrollbar" id="style-2">
                        <div class="activity-row">
                            <div class="col-xs-1"><i class="fa fa-thumbs-up text-info icon_13"> </i>  </div>
                            <div class="col-xs-3 activity-img"><img src='images/5.png' class="img-responsive" alt=""/></div>
                            <div class="col-xs-8 activity-desc">
                                <h5><a href="#">Lorem Ipsum</a> liked <a href="#">random</a></h5>
                                <p>Lorem Ipsum is simply dummy</p>
                                <h6>8:03</h6>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="activity-row">
                            <div class="col-xs-1"><i class="fa fa-comment text-info"></i> </div>
                            <div class="col-xs-3 activity-img"><img src='images/3.png' class="img-responsive" alt=""/></div>
                            <div class="col-xs-8 activity-desc">
                                <h5><a href="#">simply random</a> liked <a href="#">passages</a></h5>
                                <p>Lorem Ipsum is simply dummy</p>
                                <h6>8:03</h6>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="activity-row">
                            <div class="col-xs-1"><i class="fa fa-check text-info icon_11"></i></div>
                            <div class="col-xs-3 activity-img"><img src='images/1.png' class="img-responsive" alt=""/></div>
                            <div class="col-xs-8 activity-desc">
                                <h5><a href="#">standard chunk</a> liked <a href="#">model</a></h5>
                                <p>Lorem Ipsum is simply dummy</p>
                                <h6>8:03</h6>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="activity-row1">
                            <div class="col-xs-1"><i class="fa fa-user text-info icon_12"></i></div>
                            <div class="col-xs-3 activity-img"><img src='images/4.png' class="img-responsive" alt=""/></div>
                            <div class="col-xs-8 activity-desc">
                                <h5><a href="#">perspiciatis</a> liked <a href="#">donating</a></h5>
                                <p>Lorem Ipsum is simply dummy</p>
                                <h6>8:03</h6>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>

        </div>

    </div>

    <link rel="stylesheet" href="../static/css/clndr.css" type="text/css" />
    <script src="../static/js/underscore-min.js" type="text/javascript"></script>
    <script src= "../static/js/moment-2.2.1.js" type="text/javascript"></script>
    <script src="../static/js/clndr.js" type="text/javascript"></script>
    <script src="../static/js/site.js" type="text/javascript"></script>
    <script>
        var seriesData = [ [], [], [], [], [] ];
        var random = new Rickshaw.Fixtures.RandomData(50);

        for (var i = 0; i < 75; i++) {
            random.addData(seriesData);
        }
        var graph = new Rickshaw.Graph( {
            element: document.getElementById("chart"),
            renderer: 'multi',
            dotSize: 5,
            series: [
                {
                    name: 'temperature',
                    data: seriesData.shift(),
                    color: '#AFE9FF',
                    renderer: 'stack'
                }, {
                    name: 'heat index',
                    data: seriesData.shift(),
                    color: '#FFCAC0',
                    renderer: 'stack'
                }, {
                    name: 'dewpoint',
                    data: seriesData.shift(),
                    color: '#555',
                    renderer: 'scatterplot'
                }, {
                    name: 'pop',
                    data: seriesData.shift().map(function(d) { return { x: d.x, y: d.y / 4 } }),
                    color: '#555',
                    renderer: 'bar'
                }, {
                    name: 'humidity',
                    data: seriesData.shift().map(function(d) { return { x: d.x, y: d.y * 1.5 } }),
                    renderer: 'line',
                    color: '#ef553a'
                }
            ]
        } );
        graph.render();
        var detail = new Rickshaw.Graph.HoverDetail({
            graph: graph
        });

    </script>
</div>
<!-- map -->
<link href="../static/css/jqvmap.css" rel='stylesheet' type='text/css' />
<script src="../static/js/jquery.vmap.js"></script>
<script src="../static/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="../static/js/jquery.vmap.world.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('#vmap').vectorMap({
            map: 'world_en',
            backgroundColor: '#333333',
            color: '#ffffff',
            hoverOpacity: 0.7,
            selectedColor: '#666666',
            enableZoom: true,
            showTooltip: true,
            values: sample_data,
            scaleColors: ['#C8EEFF', '#006491'],
            normalizeFunction: 'polynomial'
        });
    });
</script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

</body>
</html>
