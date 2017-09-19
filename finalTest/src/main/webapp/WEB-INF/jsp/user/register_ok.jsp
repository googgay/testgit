<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.xhg.entity.User"%>
<!DOCTYPE html>
<html>
<head>
	<title>用户注册 - 当当网</title>
</head>
<body>
	<%@include file="/common/head1.jsp"%>
	<div>注册步骤:<span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功</div>
	<div>
		<div><img src="${pageContext.request.contextPath}/images/login_success.jpg" /></div>
		<h5>${s_user.nickname }，欢迎加入当当网</h5>
		<h6>请牢记您的登录邮件地址：${s_user.email }</h6>
		<ul>
			<li>您现在可以：</li>
			<li>进入“<a href="#">我的当当</a>”查看并管理您的个人信息</li>
			<li><a href="${pageContext.request.contextPath}/main/mainAction">浏览并选购商品</a></li>
		</ul>
	</div>
	<%@include file="/common/foot1.jsp"%>
</body>
</html>