package com.test.main;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.persister.walking.spi.MetamodelGraphWalker;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.HibernateAction;
import com.test.ServiceBean;
import com.test.TestHibernate;

public class MainHibernate extends ActionSupport{
	
	public ServiceBean getAdminService() {
		return adminService;
	}

	public void setAdminService(ServiceBean adminService) {
		this.adminService = adminService;
	}

	protected ServiceBean adminService;
	
	public String execute() throws Exception{
		TestHibernate admin  = new TestHibernate(7, "jack");
		adminService .addAdmin(admin);
		List<TestHibernate> listAdmin = adminService.findAll();
		for(int i = 0; i < listAdmin.size(); i++){
			System.out.println(listAdmin.get(i).getAdminId() + ":" + listAdmin.get(i).getName());
		}
		return "good";
	}
		
	}
