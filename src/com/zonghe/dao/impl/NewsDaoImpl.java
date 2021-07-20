package com.zonghe.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zonghe.dao.NewsDao;
import com.zonghe.pojo.Category;
import com.zonghe.pojo.News;
import com.zonghe.util.HibernateUtil;

public class NewsDaoImpl implements NewsDao {

	public void addNews(News news) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		try {
			session.persist(news);
			tx.commit();
		}catch (Exception e) {
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	public void updateNews(News news) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		try {
			session.update(news);;
			tx.commit();
		}catch (Exception e) {
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	public void deleteNews(News news) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		try {
			session.delete(news);;
			tx.commit();
		}catch (Exception e) {
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	public News getNewsByid(Integer nid) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		News student=(News)session.get(News.class,nid);
		tx.commit();
		session.close();
		return student;
	}

	public List<News> findAllNews() {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery("from News");
		List<News> categories=query.list();
		tx.commit();
		session.close();
		return categories;
	}

	public List<News> findAllNewsByCategory(int cid) {
		Session session=HibernateUtil.getSession();
		Transaction tx=session.beginTransaction();
		String hql="select c from News c join c.category m where m.id=?0";
		Query query=session.createQuery(hql);
		query.setParameter(0, cid);
		List<News> categories=query.list();
		tx.commit();
		session.close();
		return categories;
	}

	

}
