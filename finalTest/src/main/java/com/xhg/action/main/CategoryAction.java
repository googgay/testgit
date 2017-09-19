package com.xhg.action.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.xhg.entity.Category;
import com.xhg.entity.CategoryProduct;
import com.xhg.entity.Product;
import com.xhg.service.CategoryService;

public class CategoryAction {

	private CategoryService categoryService;

	private List<Category> cats;

	public String execute() throws Exception {
		List<Category> list = categoryService.findAll();
		
		System.out.println("!---------test2----------!");
		@SuppressWarnings("unchecked")
		List<Category> list4 = categoryService.findTest2();
		for (Category category : list4) {
			System.out.println(
					"id:" + category.getCatid() + " name:" + category.getName() + "pnum:" + category.getPnum());
		}

		System.out.println("!---------test----------!");
		@SuppressWarnings("unchecked")
		List<Product> list5 = categoryService.findTest3(9);
		for (Product product : list5) {
			System.out.println("id:" + product.getId() + " name:" + product.getProduct_name() + " pnum:"+ product.getAdd_time());
		}
		
		
		
		this.cats = findByParentId(list, 1);
		for (Category c : cats) {
			c.setSubCats(findByParentId(list, c.getCatid()));
		}
		return "category";
	}

	private List<Category> findByParentId(List<Category> list, int id) {
		List<Category> subCats = new ArrayList<Category>();
		for (Category c : list) {
			if (c.getParent_id() == id) {
				subCats.add(c);
			}
		}
		return subCats;
	}

	public List<Category> getCats() {
		return cats;
	}

	public void setCats(List<Category> cats) {
		this.cats = cats;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

}
