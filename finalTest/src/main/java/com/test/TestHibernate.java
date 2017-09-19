package com.test;

import java.io.Serializable;

public class TestHibernate implements Serializable{
	
	private Integer adminId;
	
	private String name;
	
	public TestHibernate(){}

	public TestHibernate(Integer adminId, String name ){
		this.adminId = adminId;
		this.name = name;
	}
	
	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


}
