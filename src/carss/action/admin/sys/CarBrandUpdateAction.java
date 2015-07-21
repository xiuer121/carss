/**
 * @功能 
 */

package carss.action.admin.sys;



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
	    @Result(type="redirectAction",location = "car-brand"),
	    @Result(name="input",location = "car-brand-update.jsp")
})
public class CarBrandUpdateAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private AdminService adminService;
	
	@Resource 
	private CarBrandService carBrandService;
	
	private Integer id;
	 
	
	private String title;								//显示名称
 

	/**
	 * @功能 
	 */
	public String show()  {
		
		CarBrand carBrand=carBrandService.get(id);
	 
		this.title = carBrand.getTitle();
		return INPUT;

	}
	
	/**
	 * @功能 
	 */
	public String execute() {
		
		LoginAdmin loginAdmin = (LoginAdmin) ActionContext.getContext().getSession().get("loginAdmin");
		Admin admin=adminService.get(loginAdmin.getId());
		
		
		CarBrand carBrand=carBrandService.get(id);
		carBrand.setAdmin(admin);
		carBrand.setTitle(this.title);
		 
		carBrandService.update(carBrand);
		return SUCCESS;

	}
	
	/**
	 * @功能 
	 */
	public void validate() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	 
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	 

	
	
}
