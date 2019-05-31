<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>ip白名单</title>
	<meta name="decorator" content="default"/>
	<script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
	<script src="/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">

	</script>
</head>
<body>
<p6>ip白名单</p6>
<form action="/api/system/ip/add" method="post">
<span id="message" style="color: red">${message}</span>
<div class="controls" >ip：
	<input type="text" name="ip" htmlEscape="false" rows="7" maxlength="100" class="input-xxlarge "
			  cssStyle="width: 98%" >${ip} </input>
</div>
<div class="form-actions" >
	<input id="btnSave" class="btn btn-primary" type="submit" value="提交"/>
</div>
</form>
</body>
</html>