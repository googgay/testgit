<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书 - 当当网</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/book.list.js"></script>
</head>
<body>
	<div>
		<span><a name="top_bk">${book.product_name}</a></span>
		<span class=seriesname>丛书名： ${book.product_name }</span>
		<div><img src="../productImages/${book.product_pic }"/></div>
		<div>作 者： ${book.author }</div>
		<div>出 版 社： ${book.publishing }</div>
		<div>作 者： ${book.author }</div>
		<div>作 者： ${book.author }</div>
		<div>
			<ul>
				<li>出版时间： ${book.publish_dt }</li>
				<li>字 数： ${book.word_number }</li>
				<li>版 次： ${book.which_edtion }</li>
				<li>页 数： ${book.total_page }</li>
				<li>印刷时间： ${book.print_dt }</li>
				<li>开 本： 16开</li>
				<li>印 次： ${book.print_number }</li>
				<li>纸 张： 胶版纸</li>
				<li>I S B N ： ${book.isbn }</li>
				<li>包 装： 平装</li>
			</ul>
		</div>
		<div>
			<span><b>定价：￥${book.fixed_price}</b></span>
			<span><b>当当价：￥${book.dang_price}</b></span>
			<span><b>节省：￥<c1:retainTwo/></b></span>
			<span class="list_r_list_button"><a href="<%=request.getContextPath() %>/cart/cartBuy?id= ${book.id }">
				<img src='${pageContext.request.contextPath}/images/buttom_goumai.gif' /></a></span>
			<span id="cartinfo" class="mycartinfo"></span>
		</div>
		
	</div>
	
	<div>
		<h2>内容简介：</h2>
		<div>${book.description }</div>
		<h2>作者简介：</h2>
		<div>${book.author} ${book.author_summary }</div>
		<h2>目录：</h2>
		<div>${book.catalogue }</div>
		<h2>媒体评论</h2>
		<div>好，非常畅销!难得的一本好书</div>
		<h2>开始插图</h2>
		<div>
			第2章 对教育方法的历史回顾
			<BR>
			儿童之家使用的教育体系实际上已经向前迈出了一大步。假如人们认为我和正常儿童相处所得的经验相对短暂，那么此经验建立在以往对非正常儿童的教育经验基础之上，因此也代表着一段相当长期的思想。
			<BR>
			假如我们想开发出科学的教育体系，就必须开辟出一条前所未有的新路。教师们必须接受专业培训，同时而学校也必须进行转变。假如教师们都接受了观察与实验的培训，那他们必须在学校里执行这些活动。
			<BR>
			因此，科学教育体系的基本需求是有一个能允许儿童自由发展个性的学校。如果某种教育体系是基于对学生个体的研究，那么其研究方式应该是对行动自由的儿童进行观察和研究，而不是对一个受压制的学生进行观察和研究。
			<BR>
			在人类学和实验心理学的帮助下，在一个人应试教育为主的学校里，开发新型教育方法，是最愚蠢的想法。
			<BR>
			每个领域的实验科学，都是由使用自己独特的方法中发展而来。细菌学起源于分离并培育微生物。犯罪学、医学和教育学也都分别在不同类型的个体上使用过最初的人体测量方法，如在罪犯上、精神病人、医院里的临床病人、学生身上等。实验心理学在开始阶段就要指出执行实验的精确技术。
			<BR>
			……
		</div>
		
	</div>
	<!--页尾开始 -->
	<%@include file="/common/foot1.jsp"%>
	<!--页尾结束 -->
</body>
</html>