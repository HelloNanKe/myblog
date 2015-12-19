package cn.lcp.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.lcp.bean.Photo;
import cn.lcp.dao.PhotoDao;

@Repository("photoDao")
@Transactional(readOnly = false)
public class PhotoDaoImpl implements PhotoDao {

	@Resource(name = "hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	// 批量上传图片
	@Override
	public void photoUpload(List<String> photo) {
		Session session = this.hibernateTemplate.getSessionFactory().openSession();
		Transaction ts = session.beginTransaction();

		for (int i = 0; i < photo.size(); i++) {
			String photo2 = photo.get(i);
			Photo photo3 = new Photo();
			photo3.setPhoto(photo2);
			session.save(photo3);
			if (i % 20 == 0 || i < 20) {
				session.flush();// 清空session缓存
				session.clear();
			}
		}
		// 提交事务
		ts.commit();
		// 关闭事务
		session.close();
	}

}
