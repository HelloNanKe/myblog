package cn.lcp.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lcp.bean.Photo;
import cn.lcp.dao.PhotoDao;
import cn.lcp.service.PhotoService;

@Service("photoService")
@Transactional(readOnly = false)
public class PhotoServiceImpl implements PhotoService {
	@Resource(name = "photoDao")
	private PhotoDao photoDao;

	// 批量上传图片
	public void photoUpload(List<String> photo) {
		this.photoDao.photoUpload(photo);
	}

	// 显示照片
	public List<Photo> getAllPhoto(){
		return this.photoDao.getAllPhoto();
	}
}
