package com.xhg.dao;

import java.util.List;

import com.xhg.entity.Product;


public interface ProductDAO {

	public List<Product> findByCatId(int cid,int begin,int size) throws Exception;
	public Product findById(int id) throws Exception;
}
