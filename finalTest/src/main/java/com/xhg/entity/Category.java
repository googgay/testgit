package com.xhg.entity;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Category {

	private int catid;
	private Integer turn;
	private String en_name;
	private String name;
	private String description;
	private int parent_id;
	private List<Category> subCats;
	private int pnum;
	private Set<CategoryProduct> cProduct = new HashSet<CategoryProduct>();

	public Set<CategoryProduct> getcProduct() {
		return cProduct;
	}

	public void setcProduct(Set<CategoryProduct> cProduct) {
		this.cProduct = cProduct;
	}



	public int getCatid() {
		return catid;
	}

	public void setCatid(int catidd) {
		this.catid = catidd;
	}

	public Integer getTurn() {
		return turn;
	}

	public void setTurn(Integer turn) {
		this.turn = turn;
	}

	public String getEn_name() {
		return en_name;
	}

	public void setEn_name(String en_name) {
		this.en_name = en_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getParent_id() {
		return parent_id;
	}

	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}

	public List<Category> getSubCats() {
		return subCats;
	}

	public void setSubCats(List<Category> subCats) {
		this.subCats = subCats;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

}
