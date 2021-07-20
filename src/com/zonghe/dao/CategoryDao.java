package com.zonghe.dao;

import java.util.List;

import com.zonghe.pojo.Category;

public interface CategoryDao {

	public void addCategory(Category category);
	public void updateCategory(Category category);
	public void deleteCategory(Category category);
	public Category getCategoryById(Integer cid);
	public List<Category> findAllCategory();
}
