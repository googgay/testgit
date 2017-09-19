<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>当当图书</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/book.list.js"></script>
</head>
<body>
	<%@include file="/common/head.jsp"%>
	<div style="width: 962px; margin: auto;">
		<a href="#"><img
			src="${pageContext.request.contextPath}/images/default/book_banner_081203.jpg"
			border="0" /> </a>
	</div>
	<div>
		您现在的位置:&nbsp; <a
			href="${pageContext.request.contextPath}/main/mainAction">当当图书</a>
		&gt;&gt; <font style='color: #cc3300'><strong></strong></font>
	</div>
	<div>
		<!--左栏开始-->
		<h2>分类浏览</h2>
		<ul>
			<li>
				<div>&middot;全部&nbsp;(${totalPnum })</div>
			</li>

			<!-- 2级分类开始 -->
			<s:iterator value="cats" var="c">
				<li><s:if test="c2==#c.id">
						<div>
							<a>${c.name }&nbsp;(${c.pnum })</a>
						</div>
					</s:if> <s:else>
						<div>
							<a href="booklistAction?c1=${c1 }&c2=${c.catid}">${c.name }&nbsp;(${c.pnum })</a>
						</div>
					</s:else></li>
			</s:iterator>
			<!--2级分类结束-->
		</ul>
	</div>
	<!--左栏结束-->

	<!-- 中栏开始 -->
	<div>
		<!--图书列表开始-->
		<div>排序方式</div>
		<select onchange='' name='select_order' size='1'>
			<option value="">按上架时间 降序</option>
		</select>
		<!-- 分页导航开始 -->
		<div>
			<s:if test="page>1"></s:if>
			<div>
				<a name=link_page_next
					href="booklistAction?c1=${c1}&c2=${c2}&page=${page-1}"> <img
					src='${pageContext.request.contextPath}/images/page_up.gif' /></a>
			</div>
			<s:else>
				<img
					src='${pageContext.request.contextPath}/images/page_up_gray.gif' />
			</s:else>
			<div>第${page }页/共${maxPage }页</div>
			<s:if test="page < maxPage">
				<a name=link_page_back
					href="booklistAction?c1=${c1}&c2=${c2}&page=${page+1}"> <img
					src='${pageContext.request.contextPath}/images/page_down.gif' /></a>
			</s:if>
			<s:else>
				<img
					src='${pageContext.request.contextPath}/images/page_down_gray.gif' />
			</s:else>
		</div>
		<!--分页导航结束-->
	</div>
	<!--商品条目开始-->
	<div>
		<s:iterator value="books" var="b">
			<div>
				<a name="link_prd_img" href='book_view?id=${b.id }'>
				 <img src="${pageContext.request.contextPath}/productImages/${b.product_pic}" /></a>
			</div>
			<h2>
				<a name="link_prd_name" href='book_view?id=${b.id }'>${b.product_name}</a>
			</h2>
			<h3>顾客评分：100</h3>
			<h4>
				作者：<a href='#' name='作者'>${b.author }</a>
			</h4>
			<h4>
				出版社：<a href='#' name='出版社'>${b.publishing }</a>
			</h4>
			<h4>出版时间：${b.publish_dt }</h4>
			<h5>${b.description }</h5>
			<div>
				<h6>
					<span>￥${b.fixed_price}</span> <span>￥${b.dang_price}</span> 节省：￥
					<c1:retainTwo />
				</h6>
				<span class="list_r_list_button"><a href="<%=request.getContextPath() %>/cart/cartBuy?id=${b.id }"> 
					<img src='${pageContext.request.contextPath}/images/buttom_goumai.gif' /> </a></span>
				<span id="cartinfo" class="mycartinfo"></span>
			</div>
		</s:iterator>

		<!--商品条目结束-->
	</div>
	<!--页尾开始 -->
	<%@include file="/common/foot1.jsp"%>
	<!--页尾结束 -->
</body>
</html>