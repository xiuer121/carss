/**
 * @功能 
 */

package carss.action.admin.sys;



import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarBrand;
import carss.po.auth.Admin;
import carss.service.CarBrandService;
import carss.service.perm.AdminService;
import carss.vo.LoginAdmin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(type="redirectAction",location = "car-brand-list"),
	    @Result(name="input",location = "car-brand-add.jsp")
})
public class CarBrandAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private AdminService adminService;
	
	@Resource 
	private CarBrandService carBrandService;
	
	private String title;							//投资商编号
 
	 

	
	/**
	 * @功能 新增管理员
	 */
	public String execute() throws Exception {
		
		LoginAdmin loginAdmin=(LoginAdmin)ActionContext.getContext().getSession().get("loginAdmin");
		Admin admin=adminService.get(loginAdmin.getId());
		 
		 
		CarBrand one = new CarBrand();
		one.setTitle(title);
		one.setAdmin(admin);
		one.setCommitDate(new Date());
		
		carBrandService.save(one);
		
		return SUCCESS;

	}
	
	/**
	 * @功能 
	 */
	public void validate() { 
		//新增投资商的登錄名是否填写
		if(this.title==null || this.title.length()<1){
			this.addFieldError("title","品牌名称未填写！");
		}
		 
	 
	}

 

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
 

	
	
}
