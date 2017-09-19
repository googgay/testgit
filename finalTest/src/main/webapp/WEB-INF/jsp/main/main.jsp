<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>当当图书 – 全球最大的中文网上书店</title>
</head>
<body>
	<%@include file="/common/head.jsp"%>
	<!-- 头部与身体部分插入一张图片 -->
	<div style="width: 962px; height: auto">
		<a href="#" target="_blank"> <img
			src="${pageContext.request.contextPath}/images/default/book_banner_081203.jpg"
			border="0" />
		</a>
	</div>
	<!-- 左侧分类栏  start -->
	<div>
		<s:action name="categoryAction" namespace="/main" executeResult="true"></s:action>
	</div>

	<!--页尾开始 -->
	<%@include file="/common/foot1.jsp"%>
	<!--页尾结束 -->
</body>
</html>