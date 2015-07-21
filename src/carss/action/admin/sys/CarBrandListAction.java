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
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(location = "car-brand-list.jsp")
})
public class CarBrandListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource 
	private CarBrandService carBrandService;
	
 
	
	private View<CarBrand> view=new View<CarBrand>();

	private Integer id;
	
	/**
	 * @功能 
	 */
	public String execute() {	
	
		String where=" ";	

		view=carBrandService.getView(where,view,null);
		
		return SUCCESS;
	}

	
	
	/**
	 * @功能 
	 */
	public String remove() throws Exception {	
	
		CarBrand one=carBrandService.get(id);
		carBrandService.delete(one);
		
		return this.execute();
	}
	

	public View<CarBrand> getView() {
		return view;
	}


	public void setView(View<CarBrand> view) {
		this.view = view;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}
	
 
	
 
	
	
}
