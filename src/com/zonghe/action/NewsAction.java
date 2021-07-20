package com.zonghe.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zonghe.dao.CategoryDao;
import com.zonghe.dao.NewsDao;
import com.zonghe.dao.impl.CategoryDaoImpl;
import com.zonghe.dao.impl.NewsDaoImpl;
import com.zonghe.pojo.Category;
import com.zonghe.pojo.News;

public class NewsAction extends ActionSupport {
	private int cid;
	private Category category;
	private List<Category> categorys;
	private CategoryDao categoryDao;
	private NewsDao newsDao;
	private News news;
	private List<News> newses;
	/**
	 * @return the news
	 */
	public News getNews() {
		return news;
	}
	/**
	 * @param news the news to set
	 */
	public void setNews(News news) {
		this.news = news;
	}
	/**
	 * @return the newses
	 */
	public List<News> getNewses() {
		return newses;
	}
	/**
	 * @param newses the newses to set
	 */
	public void setNewses(List<News> newses) {
		this.newses = newses;
	}
	public NewsAction() {
		categoryDao=new CategoryDaoImpl();
		newsDao=new NewsDaoImpl();
	}
	/**
	 * @return the cid
	 */
	public int getCid() {
		return cid;
	}
	/**
	 * @param cid the cid to set
	 */
	public void setCid(int cid) {
		this.cid = cid;
	}
	/**
	 * @return the category
	 */
	public Category getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public void setCategory(Category category) {
		this.category = category;
	}
	/**
	 * @return the categorys
	 */
	public List<Category> getCategorys() {
		return categorys;
	}
	/**
	 * @param categorys the categorys to set
	 */
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	
	public String addNews() {
		categorys=categoryDao.findAllCategory();
		return "add";
	}
	
	public String addedNews() {
		category=categoryDao.getCategoryById(cid);
		Date date=new Date();
		news.setIssueTime(date);
		news.setCategory(category);
		newsDao.addNews(news);
		return SUCCESS;
	}
	public String listNews() {
		newses=newsDao.findAllNews();
		categorys=categoryDao.findAllCategory();
		return "list";
	}
	public String deleteNews() {
		news=newsDao.getNewsByid(cid);
		News xinwen=new News();
		xinwen=news;
		newsDao.deleteNews(news);
		return SUCCESS;
	}
	
	public String updatedNews() {
		categorys=categoryDao.findAllCategory();
		news=newsDao.getNewsByid(cid);
		return "update";
	}
	
	public String updateNews() {
		category=categoryDao.getCategoryById(cid);
		news.setCategory(category);
		newsDao.updateNews(news);
		return SUCCESS;
	}
	
	public String showNews() {
		news=newsDao.getNewsByid(cid);
		return "show";
	}
	
	public String findNews() {
		System.out.println(cid);
		categorys=categoryDao.findAllCategory();
		newses=newsDao.findAllNewsByCategory(cid);
		return "find";
	}

}
