/**
 * @功能 公告列表
 */

package carss.action.admin.info;




import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.Notice;
import carss.service.NoticeService;
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(location = "notice-list.jsp"),
	    @Result(name="show",type="redirectAction",location = "notice-list")
})
public class NoticeListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource 
	private NoticeService noticeService;
	
	private Integer id;
	private Integer[] ids;
	
	private View<Notice> view=new View<Notice>();

	/**
	 * @功能 获得列表
	 */
	public String execute() throws Exception {
		
		view=noticeService.getView(" order by o.top desc",view,null);
		
		return SUCCESS;
	}
	
	/**
	 * @功能 删除对应的对象
	 */
	public String del() throws Exception {
		
		noticeService.delete(id);

		return "show";
	}
	
	/**
	 * @功能 删除对应的对象
	 */
	public String deleteAll() throws Exception {
		
		if(ids!=null){
			for(Integer tempId:ids){
				noticeService.delete(tempId);
			}
		}

		return "show";
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

	public View<Notice> getView() {
		return view;
	}
	public void setView(View<Notice> view) {
		this.view = view;
	}

	
	
}
