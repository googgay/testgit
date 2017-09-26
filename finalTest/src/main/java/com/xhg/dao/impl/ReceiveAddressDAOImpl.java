package com.xhg.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.xhg.dao.ReceiveAddressDAO;
import com.xhg.entity.ReceiveAddress;

public class ReceiveAddressDAOImpl extends HibernateDaoSupport implements ReceiveAddressDAO{
	
	/*private final static String SAVE = "insert into d_receive_address(user_id,receive_name,full_address,postal_code,mobile,phone) "
			+ "values(?,?,?,?,?,?)";
	*/
	private final static String FIND_BY_USER_ID = "select ra from ReceiveAddress ra where ra.user_id=?";
	private final static String FIND_BY_ID = "select ra from ReceiveAddress ra  where ra.id=?";
	
	@Override
	public void save(ReceiveAddress addr) throws Exception {
		// TODO Auto-generated method stub
		/*
		Session session = getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(addr);
		tx.commit();
		session.close();
		*/
		getHibernateTemplate().save(addr);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ReceiveAddress> findByUserId(int userId) throws Exception {
		// TODO Auto-generated method stub
		Query query = getSessionFactory().openSession().createQuery(FIND_BY_USER_ID); 
		query.setParameter(0, userId);
		List <ReceiveAddress>list = query.list();
		return list;
	}

	@Override
	public ReceiveAddress findById(int id) throws Exception {
		// TODO Auto-generated method stub
		Query query = getSessionFactory().openSession().createQuery(FIND_BY_ID); 
		query.setParameter(0, id);
		List list = query.list();
		if(list!=null&&list.size()!=0){
            return (ReceiveAddress)list.get(0);
        }else{
            return null;
        }
	}

}
