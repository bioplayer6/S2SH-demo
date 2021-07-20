package com.zonghe.pojo;

import java.util.Set;

public class Category {

	private Integer id;
	private String categoryName;
	private Set<News> newes;
	
	/**
	 * @return the newes
	 */
	public Set<News> getNewes() {
		return newes;
	}
	/**
	 * @param newes the newes to set
	 */
	public void setNewes(Set<News> newes) {
		this.newes = newes;
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the categoryName
	 */
	public String getCategoryName() {
		return categoryName;
	}
	/**
	 * @param categoryName the categoryName to set
	 */
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Category() {
		super();
	}

}
