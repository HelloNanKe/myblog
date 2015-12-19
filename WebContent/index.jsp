<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/style3.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
</head>
<body>
	<div class="main">
		<div class="login-form">
			<h1>Library Login</h1>
			<div class="head">
				<img src="img/user.png" alt="" />
			</div>
			<form action="login" method="post">
				<input type="text" class="text" name="user.loginId"
					placeholder="用户名。。。">
				<div id="message"></div>
				<!-- 预留空格写入后台返回的数据 -->
				<input type="password" name="user.passwd" placeholder="密码。。。">
				<div id="message"></div>
				<!-- 预留空格写入后台返回的数据 -->
				<div class="submit">
					<input type="submit" value="LOGIN">
				</div>
			</form>
		</div>
	</div>
</body>
</html>