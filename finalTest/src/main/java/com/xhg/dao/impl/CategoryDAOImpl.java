package com.xhg.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.xhg.dao.CategoryDAO;
import com.xhg.entity.Category;
import com.xhg.entity.CategoryProduct;
import com.xhg.entity.Product;

public class CategoryDAOImpl extends HibernateDaoSupport implements CategoryDAO {

	private static final String FIND_ALL = "SELECT c FROM Category c";

	private static final String FIND_BY_PARENTID = "select count(cp.product_id),c from Category c left join c.cProduct cp where c.parent_id=? group by c.catid";

	private static final String FIND_BY_PARENTID2= "select c from Category c left join c.cProduct cp where c.parent_id=? group by c.catid";
	
	private static final String FIND_TEST = "select cp from CategoryProduct cp where cp.category.catid=?";

	private static final String FIND_TEST2 = "select count(cp.product_id),c from Category c left join c.cProduct cp where c.parent_id=2  group by c.catid";

	private static final String FIND_TEST4 = "select c from Category c left join c.cProduct cp where c.parent_id=2 group by c.catid";
	
	private static final String FIND_TEST3 = "select cp from CategoryProduct cp where cp.category.catid=?";

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> findAll() throws Exception {
		return (List<Category>) getHibernateTemplate().find(FIND_ALL);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> findByParentId(int pid) throws Exception {
		List list = getHibernateTemplate().find(FIND_BY_PARENTID, pid);
		List<Category> cList =  (List<Category>) getHibernateTemplate().find(FIND_BY_PARENTID2, pid);
		System.out.println(cList.size());
		List<Category> categories = cList;
		
		for (int i = 0; i < list.size(); i++) {
			Object[] objects = (Object[]) list.get(i);
			Category category = (Category) objects[1];
			int pnum = Integer.parseInt(objects[0].toString());
			for (int j = 0; j < cList.size(); j++) {
				if(category.getCatid() == categories.get(j).getCatid()){
					categories.get(j).setPnum(pnum);
					break;
				}
			}
		}
		return categories;
	}

	@SuppressWarnings("unchecked")
	public List<CategoryProduct> findTest() throws Exception {
		return (List<CategoryProduct>) getHibernateTemplate().find(FIND_TEST);
	}

	@SuppressWarnings("unchecked")
	public List findTest2() throws Exception {
		List list = getHibernateTemplate().find(FIND_TEST2);
		List<Category> cList =  (List<Category>) getHibernateTemplate().find(FIND_TEST4);
		System.out.println(cList.size());
		List<Category> categories = cList;
		
		for (int i = 0; i < list.size(); i++) {
			Object[] objects = (Object[]) list.get(i);
			Category category = (Category) objects[1];
			int pnum = Integer.parseInt(objects[0].toString());
			for (int j = 0; j < cList.size(); j++) {
				if(category.getCatid() == categories.get(j).getCatid()){
					categories.get(j).setPnum(pnum);
					break;
				}
			}
		}
		return categories;
		
		
		
		/*
		for (int i = 0; i < cList.size(); i++) {	
			if(cList.get(i) == null){
				Category category = cList.get(i);
				category.setPnum(0);
				categories.add(category);
			}
			else{
				Object[] objects = (Object[]) list.get(i);
				Category category = (Category) objects[1];
				int pnum = Integer.parseInt(objects[0].toString());
				category.setPnum(pnum);
				categories.add(category);
			}
		}
		return categories;
		*/
	}

	@SuppressWarnings("unchecked")
	public List findTest3(int cid) throws Exception {
		Query query = getSessionFactory().openSession().createQuery(FIND_TEST3).setParameter(0, cid);
		List<CategoryProduct> lcCategoryProducts = query.setFirstResult(0).setMaxResults(5).list();
		List<Product> lProducts = new ArrayList<Product>();
		for(CategoryProduct categoryProduct : lcCategoryProducts ){
			Product product = categoryProduct.getProduct_id();
			lProducts.add(product);
		}
		return lProducts;
		 
	}
}
