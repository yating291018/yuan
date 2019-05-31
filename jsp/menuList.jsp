<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>菜单列表</title>
    <meta name="decorator" content="default"/>
    <script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active">菜单</li>
    <li><a href="/api/system/accountList">账号列表</a></li>
    <li><a href="/api/system/configList">接口配置列表</a></li>
    <li><a href="/api/system/frequencyList">接口请求频率配置列表</a></li>
    <li><a href="/api/system/whiteList">白名单列表</a></li>
</ul>
</body>
</html>