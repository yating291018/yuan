<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>账号列表</title>
    <meta name="decorator" content="default"/>
    <script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnDelete").click(function () {
                var account = $("#btnDelete").val();
                $.ajax({
                    url: "/api/system/delete",
                    type: 'post',
                    data: {
                        account: account
                    },
                    dataType: 'text',
                    success: function (data) {
                    },
                    complete: function () {
                    }
                });
            })
        })
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active">账号列表</li>
    <li><a href="/api/system/account">一键生成</a></li>
</ul>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>用户</th>
        <th>密钥</th>
        <th>创建时间</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="accountInfo">
        <tr>
            <td>${accountInfo.account}</td>
            <td>${accountInfo.secretKey}</td>
            <td><fmt:formatDate value="${accountInfo.createDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
            <td><a href="/api/system/account/delete?account=${accountInfo.account}" onclick="return confirmx('确认要删除该账号吗？', this.href)">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>