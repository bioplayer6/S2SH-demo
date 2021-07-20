package com.zonghe.dao;

import java.util.List;

import com.zonghe.pojo.Category;
import com.zonghe.pojo.News;

public interface NewsDao {

	public void addNews(News news);
	public void updateNews(News news);
	public void deleteNews(News news);
	public News getNewsByid(Integer nid);
	public List<News> findAllNews();
	public List<News> findAllNewsByCategory(int cid);
}
