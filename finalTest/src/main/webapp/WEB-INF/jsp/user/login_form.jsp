<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录 - 当当网</title>
</head>
<body>
	<%@include file="/common/head1.jsp"%>
	<div>
		<%@include file="/common/introduce.jsp"%>	
		<div><h3>登录当当网</h3></div>
		<form method="post" action="login">
			<ul>
				<li>
					<span>请输入Email地址：</span>
					<input type="text" name="user.email" />
				</li>
				<li>
					<span>密码</span>
					<input type="password" name="user.password" />
				</li>
				<li>
					<input type="submit" value="登 录" />
				</li>
			</ul>
			<span style="color:red" id="txtLoginErr">${login_err }</span>
			<input type="hidden" name="uri" value="${uri}" />
		</form>
		<div>
			<p>您还不是当当网用户？</p>
			<p><a href="${pageContext.request.contextPath}/user/toRegistAction">创建一个新用户&gt;&gt;</a></p>
		</div>
	</div>
	<%@include file="/common/foot1.jsp"%>
</body>
</html>