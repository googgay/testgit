package com.xhg.action.order;

import java.util.List;

import com.xhg.action.cart.CartFactory;
import com.xhg.cart.CartItem;


public class OrderConfirmAction {
	private List<CartItem> items;//购物车中的商品信息(CartItem)表
	
	private CartFactory factory;
	
	public String execute() throws Exception{
		items = factory.getCart(CartFactory.SESSION_TYPE).getItems(false);
		//如果购物车中商品为空，提示错误
		
		if(items.size()==0){
		//	request.setAttribute("cart_empty", "未购买商品，请购买商品后再结算");
			return "empty";
		}
		
		return "success";
	}
	
	//获取商品总金额(按当当价计算)
	public double getTotalDang() throws Exception{
		return factory.getCart(CartFactory.SESSION_TYPE).total(false);
	}
	public List<CartItem> getItems() {
		return items;
	}
	public void setItems(List<CartItem> items) {
		this.items = items;
	}

}