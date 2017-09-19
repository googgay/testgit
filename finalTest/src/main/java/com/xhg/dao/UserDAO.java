package com.xhg.dao;

import com.xhg.entity.User;

public interface UserDAO {
	public void save(User u) throws Exception;
	public User findByEmail(String email) throws Exception;
	public User findById(int id) throws Exception;
	public void update(User u) throws Exception;
}
