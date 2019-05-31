<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>接口配置</title>
	<meta name="decorator" content="default"/>
	<script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
	<script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">

	</script>
</head>
<body>
<ul class="nav nav-tabs">
	<li class="active">接口配置列表</li>
	<li><a href="/api/system/config">新增配置</a></li>
</ul>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead>
	<tr>
		<th>接口</th>
		<th>方法</th>
		<th>请求类型</th>
		<th>创建时间</th>
		<th>操作</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="config">
		<tr>
			<td>${config.service}</td>
			<td>${config.method}</td>
			<td>${config.requestType}</td>
			<td><fmt:formatDate value="${config.createDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td><a href="/api/system/config/delete?method=${config.method}" onclick="return confirmx('确认要删除该配置号吗？', this.href)">删除</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>