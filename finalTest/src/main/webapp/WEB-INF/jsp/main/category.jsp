<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div>
	<h2>分类浏览</h2>
	<s:iterator value="cats" var="c1">
	<!-- 开始1级分类 -->
		<h3><a href="#">${c1.name }</a></h3>
		<s:iterator value="#c1.subCats" var="c2">
		<!-- 开始2级分类 -->	
			<ul>
				<li>
					<a href="${pageContext.request.contextPath}/main/booklistAction?c1=${c1.catid }&c2=${c2.catid }">${c2.name}</a>
				</li>
			</ul>
		</s:iterator>
	</s:iterator>
</div>