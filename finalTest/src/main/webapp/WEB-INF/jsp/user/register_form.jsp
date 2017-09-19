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
	<div>
		<form name="ctl00" method="post" action="regist">
		<s:token></s:token>
		<h2>以下均为必填项</h2>
		<table>
			<tr>
				<td valign="top">请填写您的Email地址：</td>
				<td>
				<input name="user.email" type="text"/>
					<div><p>请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。</p></div>
				</td>
			</tr>
			<tr>
				<td valign="top">设置您在当当网的昵称：</td>
				<td><input name="user.nickname" type="text" />
					<div><p>您的昵称可以由小写英文字母、中文、数字组成，</p>
						<p>长度4－20个字符，一个汉字为两个字符。</p></div>
				</td>
			</tr>
			<tr>
				<td valign="top">设置密码：</td>
				<td><input name="user.password" type="password" />
					<div><p>您的密码可以由大小写英文字母、数字组成，长度6－20位。</p></div>
				</td>
			</tr>
			<tr>
				<td valign="top">再次输入您设置的密码：</td>
				<td><<input name="repwd" type="password" />
				</td>
			</tr>
			<tr>
				<td valign="top">验证码：</td>
				<td><img class="yzm_img"src="checkCode" />
					<input name="checkCode" type="text" />
					<div><p><span>您的密码可以由大小写英文字母、数字组成，长度6－20位。</span>
						<a href="#">看不清楚？换个图片</a></p>
					</div>
				</td>
			</tr>
		</table>
		<div>
			<input id="btnClientRegister" name="submit"  type="submit" value="注 册"/>
		</div>
		</form> 
	</div>
	<%@include file="/common/foot1.jsp"%>
</body>
</html>