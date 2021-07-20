package com.zonghe.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zonghe.dao.CategoryDao;
import com.zonghe.dao.impl.CategoryDaoImpl;
import com.zonghe.pojo.Category;

public class CategoryAction extends ActionSupport {
	private int cid;
	private Category category;
	private List<Category> categorys;
	private CategoryDao categoryDao;
	public CategoryAction() {
		categoryDao=new CategoryDaoImpl();
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
	
	public String addCategory() {
		categoryDao.addCategory(category);
		return SUCCESS;
	}
	public String updateCategory() {
		categoryDao.updateCategory(category);
		return SUCCESS;
	}
	public String updatedCategory() {
		category=categoryDao.getCategoryById(cid);
		return "update";
	}
	public String deleteCategory() {
		category=categoryDao.getCategoryById(cid);
		categoryDao.deleteCategory(category);
		return SUCCESS;
	}
	public String listCategory() {
		categorys=categoryDao.findAllCategory();
		return "list";
	}

}
