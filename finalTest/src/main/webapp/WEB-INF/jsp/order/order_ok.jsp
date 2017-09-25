<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生成订单 - 当当网</title>
</head>
<body>
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			生成订单步骤: 1.确认订单 > 2.填写送货地址 >
			<span class="red_bold">3.订单成功</span>
		</div>


		<div class="login_success">
			<div class="login_bj">
				<div class="succ">
					<img src="../images/login_success.jpg" />
				</div>
				<h5>
					订单已经生成
				</h5>
				<h6>
					您刚刚生成的订单号是：${order.id }，金额总计${order.total_price }
				</h6>

				<ul>
					<li class="nobj">
						您现在可以：
					</li>
					<li>
						<a href="../main/mainAction">继续浏览并选购商品</a>
					</li>
				</ul>
			</div>
		</div>

		<%@include file="/common/foot1.jsp"%>
	</body>
</html>