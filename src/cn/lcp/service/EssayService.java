package cn.lcp.service;

import java.util.List;

import cn.lcp.bean.Blog;

public interface EssayService {
	
	// 写入随笔
	public void writeEssay(Blog blog);
	//查看所有的随笔
	public List<Blog> getAllEssay();
}
