<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>配置账号频率</title>
	<meta name="decorator" content="default"/>
	<script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
	<script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">

	</script>
</head>
<body>
<p6>配置账号频率</p6>
<form action="/api/system/frequency/add" method="post">
<span id="message" style="color: red">${message}</span>
	<div class="controls" ><label>账号：</label>
		<input type="text" name="account" htmlEscape="false" rows="7" maxlength="100" value="${accountFrequency.account}">
	</div>
	<div class="controls" ><label>方法：</label>
		<input type="text" name="method" htmlEscape="false" rows="7" maxlength="100" value="${accountFrequency.method}">
	</div>
	<div class="controls" ><label>次数：</label>
		<input type="text" name="number" htmlEscape="false" rows="7" maxlength="100" value="${accountFrequency.number}">
	</div>
	<div class="form-actions" >
		<input id="btnSave" class="btn btn-primary" type="submit" value="提交"/>
	</div>
</form>
</body>
</html>