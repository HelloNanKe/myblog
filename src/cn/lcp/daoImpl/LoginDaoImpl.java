package cn.lcp.daoImpl;

import cn.lcp.bean.User;
import cn.lcp.dao.LoginDao;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Repository("loginDao")
@Transactional(readOnly = false)
public class LoginDaoImpl implements LoginDao {
	@Resource(name = "hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	// ��½
	@Override
	public User loginCheck(User user) {
		String loginid = user.getLoginId();
		System.out.println(loginid);
		List<User> users = (List<User>) this.hibernateTemplate.find("from User where loginid = ?", new String(loginid));
		if (users.size() != 0) {
			return users.get(0);
		}
		return null;
	}

	// �����ҵ��޸�
	@Override
	public User modifyAbout(User user) {
		this.hibernateTemplate.update(user);
		String loginid = user.getLoginId();
		List<User> users = (List<User>) this.hibernateTemplate.find("from User where loginid = ?", new String(loginid));
		if (users.size() != 0) {
			return users.get(0);
		}
		return null;
	}

}
