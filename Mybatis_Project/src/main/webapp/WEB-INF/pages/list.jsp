<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Article List</title>
</head>
<body>
	<c:forEach items="${articles}" var="item">
		<br>${item.id}--${item.title}--${item.content}</br>
	</c:forEach>
	<div style="padding:20px;">${pageStr}</div>
</body>
</html>