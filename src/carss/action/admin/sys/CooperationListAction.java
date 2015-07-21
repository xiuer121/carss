/**
 * @功能 公告列表
 */

package carss.action.admin.sys;




import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.Cooperation;
import carss.po.Notice;
import carss.service.CooperationService;
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(location = "cooperation-list.jsp"),
	    @Result(name="show",type="redirectAction",location = "notice-list")
})
public class CooperationListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource 
	private CooperationService cooperationService;
 
	private View<Cooperation> view=new View<Cooperation>();

	
	private Integer id;
	/**
	 * @功能 获得列表
	 */
	public String execute() throws Exception {
		
		view=cooperationService.getView(" order by o.id desc",view,null);
		
		return SUCCESS;
	}

	
	public String delete() throws Exception{ 
		cooperationService.delete(id);
		return this.execute();
	}
	public View<Cooperation> getView() {
		return view;
	}

	public void setView(View<Cooperation> view) {
		this.view = view;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}
	
	
 

	
	
}
