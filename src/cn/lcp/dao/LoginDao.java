package cn.lcp.dao;

import cn.lcp.bean.User;

public interface LoginDao {
	//��½
    User loginCheck(User user);
    //�����ҵ��޸�
    User modifyAbout(User user);
}
