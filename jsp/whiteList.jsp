<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>白名单列表</title>
	<meta name="decorator" content="default"/>
	<script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
	<script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">

	</script>
</head>
<body>
<ul class="nav nav-tabs">
	<li class="active">白名单列表</li>
	<li><a href="/api/system/ipAddress">新增ip</a></li>
</ul>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead>
	<tr>
		<th>ip</th>
		<th>创建时间</th>
		<th>操作</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="ipWhiteList">
		<tr>
			<td>${ipWhiteList.ip}</td>
			<td><fmt:formatDate value="${ipWhiteList.createDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td><a href="/api/system/ip/delete?account=${ipWhiteList.ip}" onclick="return confirmx('确认要删除该ip吗？', this.href)">删除</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>