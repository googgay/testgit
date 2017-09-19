package com.test.dao;

import java.util.List;

import com.test.TestHibernate;


public interface AdminDao {
	public List<TestHibernate> findAll();
	
	public void addAdmin(TestHibernate admin);
}
