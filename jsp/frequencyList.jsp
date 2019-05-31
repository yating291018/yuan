<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>账号请求频率列表</title>
    <meta name="decorator" content="default"/>
    <script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active">账号请求频率列表</li>
    <li><a href="/api/system/frequency">配置账号频率</a></li>
</ul>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>用户</th>
        <th>方法</th>
        <th>次数</th>
        <th>创建时间</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="accountFrequency">
        <tr>
            <td>${accountFrequency.account}</td>
            <td>${accountFrequency.method}</td>
            <td>${accountFrequency.number}</td>
            <td><fmt:formatDate value="${accountFrequency.createDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
            <td><a href="/api/system/frequency/delete?jid=${accountFrequency.jid}" onclick="return confirmx('确认要删除该配置吗？', this.href)">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>