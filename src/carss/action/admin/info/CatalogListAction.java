/**
 * @功能 公告列表
 */

package carss.action.admin.info;




import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CatalogNotice;
import carss.po.Notice;
import carss.service.CatalogNoticeService;
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(location = "catalog-notice-list.jsp"),
	    @Result(name="show",type="redirectAction",location = "catalog-list")
})
public class CatalogListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource 
	private CatalogNoticeService catalogNoticeService;
 
	
	private View<CatalogNotice> view=new View<CatalogNotice>();

	/**
	 * @功能 获得列表
	 */
	public String execute() throws Exception {
		
		view=catalogNoticeService.getView(" order by o.id desc",view,null);
		
		return SUCCESS;
	}
 

	public View<CatalogNotice> getView() {
		return view;
	}
 
	public void setView(View<CatalogNotice> view) {
		this.view = view;
	}

	 
	
	
}
