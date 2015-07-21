/**
 * @���� ��������
 */

package carss.action.admin.info;




import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CatalogNotice;
import carss.po.auth.Admin;
import carss.service.CatalogNoticeService;
import carss.service.perm.AdminService;
import carss.vo.LoginAdmin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(type="redirectAction",location = "catalog-list"),
	    @Result(name="input",location = "catalog-add.jsp")
})
public class CatalogAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CatalogNoticeService catalogNoticeService;
	
	@Resource
	private AdminService adminService;
	
	private Integer top;				//�ö�
	private String title;				//����
 
	private Date newDate;				//��־ʱ��
	
	/**
	 * @���� 
	 */
	public String show(){
		
		newDate=new Date(new Date().getTime()+7l*24*60*60*1000);
		
		return INPUT;

	}
	
	/**
	 * @���� ��������
	 */
	public String execute() throws Exception {


		LoginAdmin loginAdmin=(LoginAdmin)ActionContext.getContext().getSession().get("loginAdmin");
		Admin admin=adminService.get(loginAdmin.getId());
		
		//��������
		CatalogNotice one=new CatalogNotice();

		one.setTitle(this.title);
	 
		one.setAdmin(admin); 
		one.setCommitDate(new Date());
 
		
		catalogNoticeService.save(one);
		
		return SUCCESS;

	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
 

	public Integer getTop() {
		return top;
	}
	public void setTop(Integer top) {
		this.top = top;
	}

	public Date getNewDate() {
		return newDate;
	}
	public void setNewDate(Date newDate) {
		this.newDate = newDate;
	}

	

}
