/**
 * @功能 
 */

package carss.action.admin.sys;




import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.auth.Admin;
import carss.service.perm.AdminService;
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(location = "admin-list.jsp")
})
public class AdminListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource 
	private AdminService adminService;
	
	private Integer id;
	private Integer[] ids;
	
	private View<Admin> view=new View<Admin>();

	
	/**
	 * @功能 
	 */
	public String execute() {	
	
		String where=" ";	

		view=adminService.getView(where,view,null);
		
		return SUCCESS;
	}
	
	/**
	 * @功能 
	 */
	public String remove() throws Exception {	
	
		Admin one=adminService.get(id);
		adminService.delete(one);
		
		return this.execute();
	}
	
	/**
	 * @功能 
	 */
	public String removeAll() throws Exception {
		
		if(ids!=null){
			for(Integer tempId:ids){
				Admin one=adminService.get(tempId);
				adminService.delete(one);
			}
		}

		return this.execute();
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public Integer[] getIds() {
		return ids;
	}
	public void setIds(Integer[] ids) {
		this.ids = ids;
	}

	public View<Admin> getView() {
		return view;
	}

	public void setView(View<Admin> view) {
		this.view = view;
	}

	
	
	
}
