<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
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
<p6>接口配置</p6>
<form action="/api/system/config/save" method="post">
	<span id="message" style="color: red">${message}</span>
	<div class="controls" ><label>接口：</label>
		<input type="text" name="service" htmlEscape="false" rows="7" maxlength="100" value="${serviceConfig.service}">
	</div>
	<div class="controls" ><label>方法：</label>
		<input type="text" name="method" htmlEscape="false" rows="7" maxlength="100" value="${serviceConfig.method}">
	</div>
	<div class="controls" ><label>请求方式：</label>
		<input type="text" name="requestType" htmlEscape="false" rows="7" maxlength="100" value="${serviceConfig.requestType}">
	</div>
	<div class="form-actions" >
		<input id="btnSave" class="btn btn-primary" type="submit" value="提交"/>
	</div>
</form>
</body>
</html>