package com.xhg.action.main;

import com.xhg.entity.Book;
import com.xhg.service.BooklistService;

public class BookViewAction {

	private Book book;
	private int id;

	private BooklistService booklistService;

	public String execute() throws Exception {
		book = (Book) booklistService.findById(id);
		return "bookview";
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BooklistService getBooklistService() {
		return booklistService;
	}

	public void setBooklistService(BooklistService booklistService) {
		this.booklistService = booklistService;
	}

}
