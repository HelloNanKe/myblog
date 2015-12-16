package cn.lcp.action;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.lcp.bean.User;
import cn.lcp.service.LoginService;
import cn.lcp.utils.ImgCompress;

@SuppressWarnings("serial")
@Controller("loginAction")
@Scope("prototype")
public class loginAction extends ActionSupport {
	@Resource(name = "loginService")
	private LoginService loginService;
	private User user;

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	// 登陆
	public String login() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user1 = this.loginService.loginCheck(user);
		if (user1 != null && user.getPasswd().equals(user.getPasswd())) {
			session.setAttribute("user", user1);
			return SUCCESS;
		}
		return ERROR;
	}

	// 关于我的修改
	private File uploadFile;// 上传文件
	private String uploadFileFileName;// 文件名
	private String uploadContentType;// 文件类型

	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String modifyAbout() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User userold = (User) session.getAttribute("user");
		if (uploadFile != null && user.getPasswd() != null && !user.getPasswd().equals("")) {
			// 对图片进行压缩上传
			ImgCompress imgCom = new ImgCompress(uploadFile);
			// 压缩图片 宽，高，图片名称，原图片名称
			String filename = imgCom.resize(130, 150, user.getLoginId(), this.getUploadFileFileName());
			user.setLoginId(userold.getLoginId());
			user.setPhoto(filename);
			User usernew = this.loginService.modifyAbout(user);
			session.setAttribute("user", usernew);
			ServletActionContext.getRequest().setAttribute("msg", "修改成功");
			return SUCCESS;
		}else{
			ServletActionContext.getRequest().setAttribute("msg", "修改失败");
			return ERROR;
		}
		
	}
}
