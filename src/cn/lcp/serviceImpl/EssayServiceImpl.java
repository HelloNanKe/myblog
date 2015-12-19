package cn.lcp.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lcp.bean.Blog;
import cn.lcp.dao.EssayDao;
import cn.lcp.service.EssayService;

@Service("essayService")
@Transactional(readOnly = false)
public class EssayServiceImpl implements EssayService {
	@Resource(name = "essayDao")
	private EssayDao essayDao;

	// 写入随笔
	@Override
	public void writeEssay(Blog blog) {
		this.essayDao.writeEssay(blog);
	}

	// 查看所有的随笔
	public List<Blog> getAllEssay() {
		return this.essayDao.getAllEssay();
	}

	// 查看随笔详情
	public Blog seeDetails(int blogId){
		return this.essayDao.seeDetails(blogId);
	}

	// 删除随笔
	public void delEssay(int blogId){
		this.essayDao.delEssay(blogId);
	}
}
