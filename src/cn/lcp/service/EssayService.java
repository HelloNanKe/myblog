package cn.lcp.service;

import java.util.List;

import cn.lcp.bean.Blog;

public interface EssayService {
	
	// д�����
	public void writeEssay(Blog blog);
	//�鿴���е����
	public List<Blog> getAllEssay();
}
