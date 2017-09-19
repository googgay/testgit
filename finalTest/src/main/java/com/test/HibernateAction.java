package com.test;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import com.test.dao.AdminDao;

public class HibernateAction extends HibernateDaoSupport implements AdminDao{
	
	private static final String ADD_ADMIN = "";
	
	@SuppressWarnings("unchecked")
	public List<TestHibernate> findAll() {
		return (List<TestHibernate>) getHibernateTemplate().find("from TestHibernate");
	}
	
	public void addAdmin(TestHibernate admin){
		getHibernateTemplate().save(admin);
	}
	                                          
}
