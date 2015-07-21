/**
 * @���� ע��Ͷ����
 */

package carss.action.admin.car;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarImg;
import carss.po.CarInfo;
import carss.service.CarImgService;
import carss.service.CarInfoService;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@ParentPackage("json-default")
@Results({ @Result(type = "json") })
public class ImageUploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private File imgPic;
	private String imgPicContentType;
	private String imgPicFileName;
	private String message = "0"; // 0��ʽ���� 1�ɹ�(�ļ�·��) 2ʧ��
	private String filePath;

	private Integer id;
 

	
	@Resource
	private CarInfoService carInfoService;
	
	
	@Resource
	private CarImgService carImgService;
 

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
  

	@SuppressWarnings("deprecation")
	@Override
	public String execute() throws Exception {
		
        SimpleDateFormat dateformat = new SimpleDateFormat("yyyyMMdd");
        String dir=dateformat.format(new Date()); 
		 String path = ServletActionContext.getRequest().getRealPath("/upload/"+dir+"/");
	        File file = new File(path); // �ж��ļ����Ƿ����,����������򴴽��ļ���
	        if (!file.exists()) {
	            file.mkdir();
	        }
	        String[] fileSuffix = new String[] { ".exe" };// ��ֹ�ļ�
	        try {
	            File f = this.getImgPic();
	            // �ж��ļ���ʽ
	            for (int i = 0; i < fileSuffix.length; i++) {
	                if (imgPicFileName.endsWith(fileSuffix[i])) {
	                    message = "0";
	                    return ERROR;
	                }
	            } 
				String originalFilename = UUID.randomUUID().toString();
	            FileInputStream inputStream = new FileInputStream(f);
	            FileOutputStream outputStream = new FileOutputStream(path + "\\"+ originalFilename);
	            byte[] buf = new byte[1024];
	            int length = 0;
	            while ((length = inputStream.read(buf)) != -1) {
	                outputStream.write(buf, 0, length);
	            }
	            inputStream.close();
	            outputStream.flush();
	           String imgPath = ServletActionContext.getRequest().getContextPath() +"/upload/" +dir+"/"+ originalFilename;
	           
	           CarInfo  carInfo = carInfoService.get(id);
	           CarImg one = new CarImg();
	           one.setCarInfo(carInfo);
	           one.setImgPath(imgPath); 
	           carImgService.save(one);  
	            message = "1`"+imgPath;
	        } catch (Exception e) {
	            e.printStackTrace();
	            message = "2";
	        }
		return SUCCESS;
	}

	
  
	@JSON(serialize=false)
	public File getImgPic() {
		return imgPic;
	}

	public void setImgPic(File imgPic) {
		this.imgPic = imgPic;
	}
	@JSON(serialize=false)
	public String getImgPicContentType() {
		return imgPicContentType;
	}

	public void setImgPicContentType(String imgPicContentType) {
		this.imgPicContentType = imgPicContentType;
	}
	@JSON(serialize=false)
	public String getImgPicFileName() {
		return imgPicFileName;
	}

	public void setImgPicFileName(String imgPicFileName) {
		this.imgPicFileName = imgPicFileName;
	}
	@JSON(serialize=false)
	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	 

}
