package com.xhg.action.cart;

import java.util.Map;

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
			//HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			//HttpSession session = request.getSession();
			System.out.println("getCart start");
			Map<String, Object> session = ActionContext.getContext()
					.getSession();
			System.out.println(session);
			SessionCartServiceImpl cart = (SessionCartServiceImpl) session.get("s_cart");
			System.out.println(cart);
			if(cart == null){
				cart = serviceImpl;
				System.out.println(cart);
				session.put("s_cart", cart);
				System.out.println("cart为null进行此步");
			}
			System.out.println( "product:" + cart.getStore());
			System.out.println("getCart end");
			return cart;
		}
	}

	public static void removeCart(String stype){
		if(stype.equals(DB_TYPE)){
			// 将数据库中对应购物车的信息删除
		}
		else {
			// 默认删除session中的购物车信息
			System.out.println("CartFactory.removeCart start");
			System.out.println(ActionContext.getContext().getSession());
			ActionContext.getContext().getSession().remove("s_cart");
			System.out.println("CartFactory.removeCart end");
		}
		
	}
	
	public SessionCartServiceImpl getServiceImpl() {
		return serviceImpl;
	}

	public void setServiceImpl(SessionCartServiceImpl serviceImpl) {
		this.serviceImpl = serviceImpl;
	}

}
