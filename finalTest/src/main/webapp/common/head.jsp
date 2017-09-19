<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
<div>
	<div style="float:right"><a href="#" name="mydangdang">我的当当 | 帮助</a></div>
	<div><a href="${pageContext.request.contextPath}/cart/cart">购物车</a></div>
	<span ><b><span style="color:blue;font-size:15px">${s_user.nickname }</span>你好，欢迎来到当当</b>
		<%if(session.getAttribute("s_user")!=null){ %>
		[&nbsp;<a href="<%=request.getContextPath() %>/user/logout" class="b">登出</a>&nbsp;]
		<%}else{%>
		[&nbsp;<a href="${pageContext.request.contextPath}/user/tologinAction" class="b">登录</a>|
		<a href="${pageContext.request.contextPath}/user/toRegistAction" class="b">注册</a>&nbsp;]
		<%} %>
	</span>
</div>
	<div>
		<span>
			<a href="${pageContext.request.contextPath}/main/mainAction" name="backtobook">
			<img src="${pageContext.request.contextPath}/images/booksaleimg/book_logo.gif" /></a>
		</span>
	</div>

</div>