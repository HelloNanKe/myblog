package cn.lcp.dao;

import java.util.List;

import cn.lcp.bean.Blog;


public interface EssayDao {
	// д�����
	public void writeEssay(Blog blog);
	//�鿴���е����
	public List<Blog> getAllEssay();
	//�鿴�������
	public Blog seeDetails(int blogId);
}
