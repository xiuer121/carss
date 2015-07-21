/**
 * @���� ��������
 */

package carss.action.admin.sys;

import java.io.File;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarImg;
import carss.po.Cooperation;
import carss.po.auth.Admin;
import carss.service.CooperationService;
import carss.service.perm.AdminService;
import carss.util.FileTool;
import carss.vo.LoginAdmin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(type = "redirectAction", location = "cooperation-list"),
		@Result(name = "input", location = "cooperation-add.jsp") })
public class CooperationAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CooperationService cooperationService;

	@Resource
	private AdminService adminService;

	private String title; // ����
	private String urlLink;
	private String logoPath;
	private Integer imgType;  //���� 10����Ʒ�� 20�ֲ�

	private File file; // �ļ�����
	private String fileFileName; // �ļ�����
	private String fileContentType; // �ļ�����
	private String ext; // ��׺��

	private Date newDate; // ��־ʱ��

	/**
	 * @����
	 */
	public String show() {

		newDate = new Date(new Date().getTime() + 7l * 24 * 60 * 60 * 1000);

		return INPUT;

	}

	/**
	 * @���� ��������
	 */
	public String execute() throws Exception {

		LoginAdmin loginAdmin = (LoginAdmin) ActionContext.getContext()
				.getSession().get("loginAdmin");
		Admin admin = adminService.get(loginAdmin.getId());

		// ��������
		Cooperation one = new Cooperation();

		one.setTitle(this.title);
		one.setLogoPath(this.logoPath);
		one.setUrlLink(this.urlLink);
		one.setAdmin(admin);
		one.setImgType(imgType);
		one.setCommitDate(new Date()); 
		one.setImgType(imgType);
		 //�ж���û��ͼƬ�ϴ�
		 if(file!=null){ 
		 FileTool fileTool=new FileTool();
		 String   imgPath=fileTool.saveProductImg(this.file,this.fileFileName); 
		 one.setLogoPath(imgPath); 
		 }
		cooperationService.save(one);

		return SUCCESS;

	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrlLink() {
		return urlLink;
	}

	public void setUrlLink(String urlLink) {
		this.urlLink = urlLink;
	}

	public String getLogoPath() {
		return logoPath;
	}

	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public Date getNewDate() {
		return newDate;
	}

	public void setNewDate(Date newDate) {
		this.newDate = newDate;
	}

	public Integer getImgType() {
		return imgType;
	}

	public void setImgType(Integer imgType) {
		this.imgType = imgType;
	}
	
	

}
