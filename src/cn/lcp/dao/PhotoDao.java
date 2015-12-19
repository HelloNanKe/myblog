package cn.lcp.dao;

import java.util.List;

import cn.lcp.bean.Photo;

public interface PhotoDao {
	//批量上传图片
	public void photoUpload(List<String> photo);
}
