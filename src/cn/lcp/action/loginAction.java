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

	// ��½
	public String login() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user1 = this.loginService.loginCheck(user);
		if (user1 != null && user.getPasswd().equals(user.getPasswd())) {
			session.setAttribute("user", user1);
			return SUCCESS;
		}
		return ERROR;
	}

	// �����ҵ��޸�
	private File uploadFile;// �ϴ��ļ�
	private String uploadFileFileName;// �ļ���
	private String uploadContentType;// �ļ�����

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
			// ��ͼƬ����ѹ���ϴ�
			ImgCompress imgCom = new ImgCompress(uploadFile);
			// ѹ��ͼƬ ���ߣ�ͼƬ���ƣ�ԭͼƬ����
			String filename = imgCom.resize(130, 150, user.getLoginId(), this.getUploadFileFileName());
			user.setLoginId(userold.getLoginId());
			user.setPhoto(filename);
			User usernew = this.loginService.modifyAbout(user);
			session.setAttribute("user", usernew);
			ServletActionContext.getRequest().setAttribute("msg", "�޸ĳɹ�");
			return SUCCESS;
		}else{
			ServletActionContext.getRequest().setAttribute("msg", "�޸�ʧ��");
			return ERROR;
		}
		
	}
}
