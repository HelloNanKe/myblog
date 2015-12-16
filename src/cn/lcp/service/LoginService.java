package cn.lcp.service;

import cn.lcp.bean.User;

public interface LoginService {
	// 登陆
	User loginCheck(User user);
	// 关于我的修改
	User modifyAbout(User user);
}
