package cn.lcp.dao;

import java.util.List;

import cn.lcp.bean.Photo;

public interface PhotoDao {
	//�����ϴ�ͼƬ
	public void photoUpload(List<String> photo);
	//��ʾ��Ƭ
	public List<Photo> getAllPhoto();
}
