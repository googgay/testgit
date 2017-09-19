package com.test;

import java.util.List;
import com.test.dao.AdminDao;

public class ServiceBean {
	private AdminDao adminDao;
	
	public List<TestHibernate> findAll() {
		List<TestHibernate> list = adminDao.findAll();
		return list;
	}

	public void addAdmin(TestHibernate admin) {
		adminDao.addAdmin(admin);
	}

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

}
