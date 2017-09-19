<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册 - 当当网</title>
</head>
<body>
	<%@include file="/common/head1.jsp"%>
	<div>注册步骤:<span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功</div>
	<form action="verify" method="post">
		<s:token></s:token>
		<div>
			<h2>感谢您注册当当网！现在请按以下步骤完成您的注册!</h2>
			<div><h4>第一步：查看您的电子邮箱</h4>
				<div>我们给您发送了验证邮件，邮件地址为：<a href="${pageContext.request.contextPath}/emailcode.jsp" target="_blank" ><span>${s_user.email}</span></a>
					<span>请登录您的邮箱收信。</span>
				</div>		
				<h4>第二步：输入验证码</h4>
				<div>
					<span>输入您收到邮件中的验证码：</span>
					<input name="code" type="text" value="${s_user.email_verify_code}-${s_user.id }"/>
					<input class="finsh" type="submit" value="完 成" />
					<span>${verify_err }</span>
				</div>
			</div>		
		</div>
		<%@include file="/common/foot1.jsp"%>
	</form>
</body>
</html>