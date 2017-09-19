package com.xhg.service;

import com.xhg.dao.impl.UserDAOImpl;
import com.xhg.entity.User;

public class UserService {
	
	private UserDAOImpl userDAOImpl;
	
	public void save(User u) throws Exception {
		userDAOImpl.save(u);
	}
	
	public User findById(int id) throws Exception {
		return userDAOImpl.findById(id);
	}
	
	public User findByEmail(String email) throws Exception{
		return userDAOImpl.findByEmail(email);
	}
	
	public void update(User u) throws Exception{
		userDAOImpl.update(u);
	}

	public UserDAOImpl getUserDAOImpl() {
		return userDAOImpl;
	}

	public void setUserDAOImpl(UserDAOImpl userDAOImpl) {
		this.userDAOImpl = userDAOImpl;
	}
	
	

}
