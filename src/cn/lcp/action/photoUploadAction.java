package cn.lcp.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.lcp.bean.Photo;
import cn.lcp.service.PhotoService;
import cn.lcp.utils.ImgCompress;

@SuppressWarnings("serial")
@Controller("photoUploadAction")
@Scope("prototype")
public class photoUploadAction extends ActionSupport {

	@Resource(name = "photoService")
	private PhotoService photoService;

	/** 文件对象 */
	private List<File> Filedata;
	/** 文件名 */
	private List<String> FiledataFileName;
	/** 文件内容类型 */
	private List<String> FiledataContentType;

	public List<File> getFiledata() {
		return Filedata;
	}

	public void setFiledata(List<File> filedata) {
		Filedata = filedata;
	}

	public List<String> getFiledataFileName() {
		return FiledataFileName;
	}

	public void setFiledataFileName(List<String> filedataFileName) {
		FiledataFileName = filedataFileName;
	}

	public List<String> getFiledataContentType() {
		return FiledataContentType;
	}

	public void setFiledataContentType(List<String> filedataContentType) {
		FiledataContentType = filedataContentType;
	}

	public String photoUpload() throws Exception {
		if (Filedata.size() != 0) {
			List<String> photo = new ArrayList<String>();
			for (int i = 0; i < Filedata.size(); i++) {
				File uploadFile = Filedata.get(i);
				// 对图片进行压缩上传
				ImgCompress imgCom = new ImgCompress(uploadFile);
				// 压缩图片 宽，高，图片名称，原图片名称
				Long date = new Date().getTime();
				String filename = imgCom.resize(130, 150, date.toString(), this.getFiledataFileName().get(i));

				photo.add(filename);
				System.out.println(filename);
			}
			this.photoService.photoUpload(photo);
		}
		return "success";
	}
}
