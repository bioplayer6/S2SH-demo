package com.zonghe.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zonghe.util.HibernateUtil;
import com.zonghe.dao.CategoryDao;
import com.zonghe.pojo.Category;

public class CategoryDaoImpl implements CategoryDao {

	public void addCategory(Category category) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		try {
			session.persist(category);
			tx.commit();
		}catch (Exception e) {
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	public void updateCategory(Category category) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		try {
			session.update(category);
			tx.commit();
		}catch (Exception e) {
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
	}

	public void deleteCategory(Category category) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		try {
			session.delete(category);;
			tx.commit();
		}catch (Exception e) {
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	public Category getCategoryById(Integer cid) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		Category student=(Category)session.get(Category.class,cid);
		tx.commit();
		session.close();
		return student;
	}

	public List<Category> findAllCategory() {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		tx.commit();
		session.close();
		return categories;
	}

}
