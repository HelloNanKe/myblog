package cn.lcp.serviceImpl;

import cn.lcp.bean.User;
import cn.lcp.dao.LoginDao;
import cn.lcp.service.LoginService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("loginService")
@Transactional(readOnly = false)
public class LoginServiceImpl implements LoginService {
	@Resource(name = "loginDao")
	private LoginDao loginDao;

	// ��½
	@Override
	public User loginCheck(User user) {
		User user1 = this.loginDao.loginCheck(user);
		return user1;
	}

	// �����ҵ��޸�
	@Override
	public User modifyAbout(User user) {
		return (User)this.loginDao.modifyAbout(user);
	}

}
