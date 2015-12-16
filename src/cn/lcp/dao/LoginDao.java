package cn.lcp.dao;

import cn.lcp.bean.User;

public interface LoginDao {
	//登陆
    User loginCheck(User user);
    //关于我的修改
    User modifyAbout(User user);
}
