<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>当当图书 – 全球最大的中文网上书店</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<br />
	<br />
	<div>
		<img src="../images/pic_myshopping.gif" />
	</div>
	<h2 id="cart_tips">
		您已选购以下商品<span style="color:red">${cart_empty}</span>
		&nbsp;&nbsp;&nbsp;<span style="color:red"><a href="cart!clear">清空购物车</a></span>
	</h2>
	<div>
		<table>
			<tr>
				<td><span>&nbsp;</span></td>
				<td><span>商品名</span></td>
				<td><span>封面</span></td>
				<td><span>市场价</span></td>
				<td><span>当当价</span></td>
				<td><span>数量</span></td>
				<td><span>变更数量</span></td>
				<td><span>删除</span></td>
			</tr>
			<tr>
				<td colspan="8">
			</tr>

			<!-- 购物列表开始 -->
			<s:iterator value="ciBuy" var="ci">
				<tr>
					<td style='display: none'></td>
					<td><span><img /> </span>
					<td><a
						href="http://localhost:8080/finalTest/main/book_view?id=${ci.pro.id }">${ci.pro.product_name }</a></td>
					<td><a
						href="http://localhost:8080/finalTest/main/book_view?id=${ci.pro.id }"></a>
						<img src="../productImages/${ci.pro.product_pic }" width="75px" />
					</td>
					<td><span>${ci.pro.fixed_price}</span></td>
					<td><span>￥${ci.pro.dang_price}</span></td>
					<td><span>${ci.num }</span></td>
					<td><input class="del_num" type="text" size="3" maxlength="4" id="${ci.pro.id }"/>
						<a href="cart!modify?id=${ci.pro.id }" onclick="tt(this)">变更</a>
						<script type="text/javascript">
							function tt(obj){
								obj.href=obj.href+"&num="+document.getElementById("${ci.pro.id }").value;
							};
						</script></td>
					<td><a href="cart!delete?id=${ci.pro.id }">删除</a></td>
				</tr>
			</s:iterator>
		</table>
		<div>您还没有挑选商品</div>
		<div>
			<div>
				<a href="${pageContext.request.contextPath}/main/mainAction">
					继续挑选商品>></a>
			</div>
			<div>
				您共节省：<span>￥<span><c1:retainTwo /></span></span> <span>(
					其中享有优惠： <span>￥<span><c1:retainTwo /></span></span>)
				</span> <span style="font-size: 14px">|</span> <span>商品金额总计：</span> <span>${totalDang}</span>
			</div>
			<div>
				<a name='checkout' href='../order/confirm'> <img
					src="${pageContext.request.contextPath}/images/butt_balance.gif"
					alt="结算" border="0" title="结算" /></a>
			</div>
		</div>
	</div>

	<!-- 用户删除恢复区 -->
	<div>
		<div>您已删除以下商品，如果想重新购买，请点击“恢复”</div>
		<table>
			<s:iterator value="ciDel" var="cDel">
				<tr>
					<td>&nbsp;</td>
					<td width="365"><a href="#">${cDel.pro.product_name }</a></td>
					<td width="106">￥${cDel.pro.fixed_price }</td>
					<td width="134"><span>￥${cDel.pro.dang_price }</span></td>
					<td width="56"><a href="cart!recovery?id=${cDel.pro.id }">恢复</a></td>
					<td>&nbsp;</td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<br />
	<br />
	<br />
	<br />
	<!--页尾开始 -->
	<%@include file="/common/foot1.jsp"%>
	<!--页尾结束 -->
</body>
</html>