package cn.lcp.dao;

import java.util.List;

import cn.lcp.bean.Blog;


public interface EssayDao {
	// 写入随笔
	public void writeEssay(Blog blog);
	//查看所有的随笔
	public List<Blog> getAllEssay();
	//查看随笔详情
	public Blog seeDetails(int blogId);
}
