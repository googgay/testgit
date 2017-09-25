package com.xhg.action.cart;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.xhg.cart.CartItem;
import com.xhg.service.BooklistService;

public class SessionCartServiceImpl implements CartService{
	
	private  Map<Integer, CartItem> store = new HashMap<Integer, CartItem>();
	
	private BooklistService booklistService;

	public SessionCartServiceImpl() {
		//如果session中已存在购物车，则恢复store
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		SessionCartServiceImpl cart = (SessionCartServiceImpl) session.getAttribute("s_cart");
		if(cart != null){
			this.store = cart.store;
		}
	}
	
	@Override
	public void buy(int id) throws Exception {
		if(store.containsKey(id)){
			//如果购物车中已存在，产品数量+1
			System.out.println("sessionservice buy4");
			CartItem ci = store.get(id);
			ci.setNum(ci.getNum()+1);
		}
		else{
			//如果不存在，则从数据库中找出相应商品，添加进购物车
			System.out.println("sessionservice buy1");
			CartItem ci = new CartItem();
			System.out.println(booklistService);
			ci.setPro(booklistService.findById(id));
			System.out.println("sessionservice buy2");
			store.put(id, ci);
			System.out.println("sessionservice buy3");
		}
	}

	@Override
	public void update(int id, int num) throws Exception {
		if(store.containsKey(id)){
			store.get(id).setNum(num);
		}
	}

	/**
	 * delete=true返回已删除产品列表
	 * delete=false返回确认购买列表
	 * @param delete
	 * @return
	 */
	@Override
	public void delete(int id) throws Exception {
		if(store.containsKey(id)){
			store.get(id).setDelete(true);
		}
	}

	@Override
	public void recovery(int id) throws Exception {
		if(store.containsKey(id)){
			store.get(id).setDelete(false);
		}
	}

	@Override
	public void clearCart() throws Exception {
		CartFactory.removeCart(CartFactory.SESSION_TYPE);
	}

	@Override
	public double total(boolean flag) throws Exception {
		double totalPrice = 0.0;
		if(flag){
			for(CartItem ci : getItems(false)){
				totalPrice += ci.getNum()*ci.getPro().getFixed_price();
			}
		}else{
			for(CartItem ci : getItems(false)){
				totalPrice += ci.getNum()*ci.getPro().getDang_price();
			}
		}
		totalPrice = Number2(totalPrice);
	return totalPrice;
	}

	@Override
	public List<CartItem> getItems(boolean delete) throws Exception {
		List<CartItem> cis = new ArrayList<CartItem>();
		for(CartItem ci : store.values()){
			if(ci.isDelete()==delete){
				cis.add(ci);
			}
		}
		return cis;
	}

	public Map<Integer, CartItem> getStore() {
		return store;
	}

	public void setStore(Map<Integer, CartItem> store) {
		this.store = store;
	}

	public BooklistService getBooklistService() {
		return booklistService;
	}

	public void setBooklistService(BooklistService booklistService) {
		this.booklistService = booklistService;
	}

	private double Number2(double pDouble) {
		BigDecimal bd = new BigDecimal(pDouble);
		BigDecimal bd1 = bd.setScale(2, bd.ROUND_HALF_UP);
		pDouble = bd1.doubleValue();

		return pDouble;
	}

}
