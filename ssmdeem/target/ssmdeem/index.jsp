<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>声讯业务合同</title>
    <script src="static1/js/jquery-1.11.1.min.js"></script>
    <script src="static1/js/plug-in.js"></script>
    <style>
        #top{
            width:100%;
            height:100px;
        }
        #first{
            width:15%;
            height:700px;
        }
        #form{
            width:84%;
            height:700px;
        }

    </style>
<body>
<iframe id="top" name=""  scrolling="no" src="top.jsp" frameborder="0" ></iframe>
<iframe id="first" name="" scrolling="no" src="left.jsp" frameborder="0" ></iframe>
<iframe id="form" scrolling="no" src="first.jsp" name="content" frameborder="0" ></iframe>
</body>
</head>
</html>
