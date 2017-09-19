package com.xhg.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Book extends Product{

	private String author;
	private String publishing;
	private long publish_time;
	private String word_number;
	private String which_edtion;
	private String total_page;
	private long print_time;
	private String print_number;
	private String isbn;
	private String author_summary;
	private String catalogue;
	
	public String getPublish_dt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(new Date(publish_time));
	}

	
	public String getPrint_dt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(new Date(print_time));
	}
	

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublishing() {
		return publishing;
	}

	public void setPublishing(String publishing) {
		this.publishing = publishing;
	}

	public long getPublish_time() {
		return publish_time;
	}

	public void setPublish_time(long publish_time) {
		this.publish_time = publish_time;
	}

	public String getWord_number() {
		return word_number;
	}

	public void setWord_number(String word_number) {
		this.word_number = word_number;
	}

	public String getWhich_edtion() {
		return which_edtion;
	}

	public void setWhich_edtion(String which_edtion) {
		this.which_edtion = which_edtion;
	}

	public String getTotal_page() {
		return total_page;
	}

	public void setTotal_page(String total_page) {
		this.total_page = total_page;
	}

	public long getPrint_time() {
		return print_time;
	}

	public void setPrint_time(long print_time) {
		this.print_time = print_time;
	}

	public String getPrint_number() {
		return print_number;
	}

	public void setPrint_number(String print_number) {
		this.print_number = print_number;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getAuthor_summary() {
		return author_summary;
	}

	public void setAuthor_summary(String author_summary) {
		this.author_summary = author_summary;
	}

	public String getCatalogue() {
		return catalogue;
	}

	public void setCatalogue(String catalogue) {
		this.catalogue = catalogue;
	}

}
