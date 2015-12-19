package cn.lcp.service;

import java.util.List;

import cn.lcp.bean.Photo;

public interface PhotoService {
	// 批量上传图片
	public void photoUpload(List<String> photo);
}
