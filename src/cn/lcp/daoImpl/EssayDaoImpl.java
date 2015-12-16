package cn.lcp.daoImpl;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.lcp.bean.Blog;
import cn.lcp.dao.EssayDao;

@Repository("essayDao")
@Transactional(readOnly = false)
public class EssayDaoImpl implements EssayDao{
	
	@Resource(name="hibernateTemplate")
    private HibernateTemplate hibernateTemplate;

	// Ð´ÈëËæ±Ê
	@Override
	public void writeEssay(Blog blog) {
		this.hibernateTemplate.save(blog);
	}
}
