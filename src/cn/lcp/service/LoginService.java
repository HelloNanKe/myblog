package cn.lcp.service;

import cn.lcp.bean.User;

public interface LoginService {
	// ��½
	User loginCheck(User user);
	// �����ҵ��޸�
	User modifyAbout(User user);
}
