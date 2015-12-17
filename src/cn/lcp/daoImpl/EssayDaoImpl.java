package cn.lcp.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.lcp.bean.Blog;
import cn.lcp.dao.EssayDao;

@Repository("essayDao")
@Transactional(readOnly = false)
public class EssayDaoImpl implements EssayDao {

	@Resource(name = "hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	// 写入随笔
	@Override
	public void writeEssay(Blog blog) {
		this.hibernateTemplate.save(blog);
	}

	// 查看所有的随笔
	public List<Blog> getAllEssay() {
		return this.hibernateTemplate.find("from Blog");
	}

	// 查看随笔详情
	public Blog seeDetails(int blogId) {
		return (Blog) this.hibernateTemplate.find("from Blog where blogId = ?", blogId).get(0);
	}

	// 删除随笔
	public void delEssay(int blogId){
		this.hibernateTemplate.delete(this.hibernateTemplate.find("from Blog where blogId = ?", blogId).get(0));
	}
}
