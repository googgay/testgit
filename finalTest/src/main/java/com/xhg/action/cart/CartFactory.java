package com.xhg.action.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.opensymphony.xwork2.ActionContext;


public class CartFactory {

	public static final String SESSION_TYPE = "session";
	private static final Object DB_TYPE = "abc";
	
	private SessionCartServiceImpl serviceImpl;
	
	public  CartService getCart(String type){
		if (type.equals(DB_TYPE)) {
			return serviceImpl;
		} 
		else {
			// 默认返回基于session方式的CartService
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			HttpSession session = request.getSession();
			CartService cart = (CartService) session.getAttribute("s_cart");
			if(cart == null){
				cart = serviceImpl;
				session.setAttribute("s_cart", cart);
			}
			return cart;
		}
	}
	
	public SessionCartServiceImpl getServiceImpl() {
		return serviceImpl;
	}

	public void setServiceImpl(SessionCartServiceImpl serviceImpl) {
		this.serviceImpl = serviceImpl;
	}

	public static void removeCart(String stype){
		if(stype.equals(DB_TYPE)){
			// 将数据库中对应购物车的信息删除
		}
		else {
			// 默认删除session中的购物车信息
			System.out.println("CartFactory.removeCart start");
			ActionContext.getContext().getSession().remove("s_cart");
			System.out.println("CartFactory.removeCart end");
		}
		
	}

}
