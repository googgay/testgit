package com.xhg.cart;

import com.xhg.entity.Product;

public class CartItem {

	private Product pro;
	private int num = 1;
	private boolean delete = false;// false购买，true删除

	public Product getPro() {
		return pro;
	}

	public void setPro(Product pro) {
		this.pro = pro;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public boolean isDelete() {
		return delete;
	}

	public void setDelete(boolean delete) {
		this.delete = delete;
	}

}
