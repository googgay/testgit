package com.xhg.action.main;

import java.util.List;

import com.xhg.action.PageAction;
import com.xhg.dao.impl.BookDAOImpl;
import com.xhg.dao.impl.CategoryDAOImpl;
import com.xhg.entity.Category;
import com.xhg.entity.Product;
import com.xhg.service.BooklistService;
import com.xhg.service.CategoryService;

public class BooklistAction extends PageAction {

	private int c1;// 父目录id
	private int c2;// 子目录id

	private int totalPnum;// 商品总数
	private List<Category> cats;// 目录
	private List<Product> books;// 书本展示
	
	private BooklistService booklistService;
	private CategoryService categoryService;

	public String execute() throws Exception {
		int pNum = 0;
		totalPnum = 0;
		cats =categoryService.findByParentId(c1);
		for (Category category : cats) {
			totalPnum += category.getPnum();
			if (category.getCatid() == c2)
				pNum = category.getPnum();// 获取当前目录下的商品数
		}
		int begin = (page - 1) * size;
		books = booklistService.findByCatId(c2, begin, size);

		// 计算该目录所需页面
		if (pNum == 0) {
			maxPage = 1;
		} else if (pNum % size == 0) {
			maxPage = pNum / size;
		} else {
			maxPage = pNum / size + 1;
		}

		return "list";
	}

	public BooklistService getBooklistService() {
		return booklistService;
	}

	public void setBooklistService(BooklistService booklistService) {
		this.booklistService = booklistService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public int getC1() {
		return c1;
	}

	public void setC1(int c1) {
		this.c1 = c1;
	}

	public int getC2() {
		return c2;
	}

	public void setC2(int c2) {
		this.c2 = c2;
	}

	public int getTotalPnum() {
		return totalPnum;
	}

	public void setTotalPnum(int totalPnum) {
		this.totalPnum = totalPnum;
	}

	public List<Category> getCats() {
		return cats;
	}

	public void setCats(List<Category> cats) {
		this.cats = cats;
	}

	public List<Product> getBooks() {
		return books;
	}

	public void setBooks(List<Product> books) {
		this.books = books;
	}

}
