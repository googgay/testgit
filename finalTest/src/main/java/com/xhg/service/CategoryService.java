package com.xhg.service;

import java.util.List;

import com.xhg.dao.impl.CategoryDAOImpl;
import com.xhg.entity.Category;
import com.xhg.entity.CategoryProduct;

public class CategoryService {

	private CategoryDAOImpl categoryDAOImpl;

	public List<Category> findAll() throws Exception {
		List<Category> list = categoryDAOImpl.findAll();
		return list;
	}

	public List<Category> findByParentId(Integer pid) throws Exception {
		List<Category> list = categoryDAOImpl.findByParentId(pid);
		return list;
	}
	
	public List<CategoryProduct> findTest() throws Exception {
		List<CategoryProduct> list = categoryDAOImpl.findTest();
		return list;
	}
	public List findTest2() throws Exception {
		List list = categoryDAOImpl.findTest2();
		return list;
	}
	public List findTest3(int cid) throws Exception {
		List list = categoryDAOImpl.findTest3(cid);
		return list;
	}

	public CategoryDAOImpl getCategoryDAOImpl() {
		return categoryDAOImpl;
	}

	public void setCategoryDAOImpl(CategoryDAOImpl categoryDAOImpl) {
		this.categoryDAOImpl = categoryDAOImpl;
	}

}
