package com.xhg.service;

import java.util.List;

import com.xhg.dao.impl.BookDAOImpl;
import com.xhg.entity.Product;

public class BooklistService {
	
	private BookDAOImpl bookDAOImpl;
	
	public List<Product> findByCatId(int cid, int begin, int size) throws Exception {
		return bookDAOImpl.findByCatId(cid, begin, size);
	}
	
	public Product findById(int id) throws Exception {
		return bookDAOImpl.findById(id);
	}

	public BookDAOImpl getBookDAOImpl() {
		return bookDAOImpl;
	}

	public void setBookDAOImpl(BookDAOImpl bookDAOImpl) {
		this.bookDAOImpl = bookDAOImpl;
	}
	
	
	
	
}
