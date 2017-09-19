package com.xhg.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.xhg.dao.ProductDAO;
import com.xhg.entity.Book;
import com.xhg.entity.CategoryProduct;
import com.xhg.entity.Product;

public class BookDAOImpl extends HibernateDaoSupport implements ProductDAO{
	
	private static final String FIND_BY_CATID = "select cp from CategoryProduct cp where cp.category.catid=?";
	
	private static final String FIND_BY_ID = "select b from Book b  where b.id=?";
	
	private static final String FIND_BY_ID2 = "select p from Product p where p.id=?";

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> findByCatId(int cid, int begin, int size) throws Exception {
		Query query = getSessionFactory().getCurrentSession().createQuery(FIND_BY_CATID).setParameter(0, cid);
		List<CategoryProduct> lCategoryProducts = query.setFirstResult(begin).setMaxResults(size).list();
		List<Product> lpProducts = new ArrayList<Product>();
		for(CategoryProduct categoryProduct : lCategoryProducts){
			Product product = categoryProduct.getProduct_id();
			Book book = (Book) findById(product.getId());
			lpProducts.add(book);
		}
		return lpProducts;
	}

	@SuppressWarnings("unchecked")
	@Override
	//TODO Hibernate单值查询结果返回2条记录，第一条为null，第二条才是正确的记录
	public Product findById(int id) throws Exception {
		List<Book> list = (List<Book>) getHibernateTemplate().find(FIND_BY_ID, id);
		System.out.println("测试1" +id);
		List<Product> list2 = (List<Product>) getHibernateTemplate().find(FIND_BY_ID2, id);
		System.out.println(list2.get(1).getProduct_pic() + list2.get(1).getProduct_name());
		Book book = new Book();
		Product product = new Product();
		for (int i = 0; i < list.size(); i++) {
			book = list.get(i);
		    product = list2.get(1);
		    book.setProduct_name(product.getProduct_name());
		    book.setDescription(product.getDescription());
		    book.setProduct_pic(product.getProduct_pic());
		    book.setDang_price(product.getDang_price());
		    book.setFixed_price(product.getFixed_price());
			
		}
		return  book;
	}
	
}
