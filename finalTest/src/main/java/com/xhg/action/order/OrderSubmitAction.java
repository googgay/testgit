package com.xhg.action.order;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.xhg.action.cart.CartFactory;
import com.xhg.action.cart.CartService;
import com.xhg.dao.ReceiveAddressDAO;
import com.xhg.dao.impl.ReceiveAddressDAOImpl;
import com.xhg.entity.Order;
import com.xhg.entity.ReceiveAddress;
import com.xhg.entity.User;

public class OrderSubmitAction {

	private ReceiveAddress addr;
	private Order order;
	private CartFactory factory;
	ReceiveAddressDAOImpl rDaoImpl;

	public String execute() throws Exception {
		// 获取购物车
		CartService cart = factory.getCart(CartFactory.SESSION_TYPE);
		// 如果购物车中无商品，返回/main/main.jsp
		if (cart.getItems(false).size() == 0) {
			return "empty";
		}
		Map<String, Object> session = ActionContext.getContext().getSession();
		// 获取用户id
		int userId = ((User) session.get("s_user")).getId();
		// 将用户id赋给addr实例
		addr.setUser_id(userId);

		// 创建order实例并对其赋值
		order = new Order();
		order.setFull_address(addr.getFull_address());
		order.setUser_id(userId);
		order.setMobile(addr.getMobile());
		order.setOrder_desc("desc demo");
		order.setOrder_time(System.currentTimeMillis());
		order.setPhone(addr.getPhone());
		order.setPostal_code(addr.getPostal_code());
		order.setReceive_name(addr.getReceive_name());
		order.setStatus(0);
		order.setTotal_price(cart.total(false));

		// 通过dao将数据存入数据库中
		// 保存地址信息到数据库
		if (rDaoImpl.findById(addr.getId()) == null) {
			rDaoImpl.save(addr);
		}
		//DAOFactory.getOrderDAO().save(order, cart);//保存订单信息到数据库
		
		return "success";
	}

	public ReceiveAddress getAddr() {
		return addr;
	}

	public void setAddr(ReceiveAddress addr) {
		this.addr = addr;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public CartFactory getFactory() {
		return factory;
	}

	public void setFactory(CartFactory factory) {
		this.factory = factory;
	}

	public ReceiveAddressDAOImpl getrDaoImpl() {
		return rDaoImpl;
	}

	public void setrDaoImpl(ReceiveAddressDAOImpl rDaoImpl) {
		this.rDaoImpl = rDaoImpl;
	}
	
	

}
