<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<title>首页</title>
</head>
<body>
<form action="/api/gateway/login" method="post">
	<span id="message" style="color: red">${message}</span>
	<div>
		<label>用户名:</label><input type="text" name = "username" value="${username}">
	</div>
	<div>
		<label>密码:&nbsp;&nbsp;&nbsp;</label><input type="password" name = "password" value="${password}">
	</div>
	<input type="submit" value="登录">
</form>
</body>
</html>