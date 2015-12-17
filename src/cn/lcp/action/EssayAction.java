package cn.lcp.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.lcp.bean.Blog;
import cn.lcp.service.EssayService;

@SuppressWarnings("serial")
@Controller("essayAction")
@Scope("prototype")
public class EssayAction extends ActionSupport {
	@Resource(name="essayService")
	private EssayService essayService;
	private Blog blog;
	public EssayService getEssayService() {
		return essayService;
	}
	public void setEssayService(EssayService essayService) {
		this.essayService = essayService;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
	
	//写入随笔
	public String writeEssay(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		String theme = blog.getTheme().trim();
		String content = blog.getContent().trim();
		if(theme != null && !theme.equals("")&& content != null && !content.equals("")){
			blog.setDate(new Date());
			this.essayService.writeEssay(blog);
			ServletActionContext.getRequest().setAttribute("msg", "写入成功");
			return SUCCESS;
		}else{
			ServletActionContext.getRequest().setAttribute("msg", "请正确填写");
			return ERROR;
		}
	}
	
	//查看所有的随笔
	public String getAllEssay(){
		List<Blog> blog = this.essayService.getAllEssay();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("blog", blog);
		return SUCCESS;
	}
}
