package com.xhg.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.xhg.dao.UserDAO;
import com.xhg.entity.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO{
	
	private static final String FIND_BY_ID = "select u from User u where u.id=?";

	private static final String Update = "update User  u set u.email=?,u.nickname=?,u.password=?,u.user_integral=?,u.email_verify=?,u.email_verify_code=?,u.last_login_time=?,u.last_login_ip=? where u.id=?";

	private static final String FIND_BY_EMAIL = "select u from User u where u.email=?";
	
	@Override
	public void save(User u) throws Exception {
		getHibernateTemplate().save(u);
	}

	@SuppressWarnings("unchecked")
	@Override
	public User findByEmail(String email) throws Exception {
		User user = null;
		List<User> users = (List<User>) getHibernateTemplate().find(FIND_BY_EMAIL, email);
		if(users.size() != 0){
			user = users.get(0);
		}
		return user;
	}

	@SuppressWarnings("unchecked")
	@Override
	public User findById(int id) throws Exception {
		List<User> users = (List<User>) getHibernateTemplate().find(FIND_BY_ID, id);
		System.out.println("!----------------User.findById--------------! ");
		System.out.println(users.size());
		User user = users.get(0);
		return user;
	}

	@Override
	public void update(User u) throws Exception {
		Query query =  getSessionFactory().getCurrentSession().createQuery(Update);
		query.setParameter(0, u.getEmail());
		query.setParameter(1, u.getNickname());
		query.setParameter(2, u.getPassword());
		query.setParameter(3, u.getUser_integral());
		query.setParameter(4, u.isEmail_verify());
		query.setParameter(5, u.getEmail_verify_code());
		query.setParameter(6, u.getLast_login_time());
		query.setParameter(7, u.getLast_login_ip());
		query.setParameter(8, u.getId());
		System.out.println("!------------User.update start------------!");
		query.executeUpdate();
		System.out.println("!------------User.update end------------!");
	}
	

}
