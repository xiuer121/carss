/**
 * @功能 公告显示
 */

package carss.action.admin.info;




import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.Notice;
import carss.service.NoticeService;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(location = "notice-show.jsp")
})
public class NoticeShowAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private NoticeService noticeService;
	
	 
	
	private Integer id;
	private Notice notice=new Notice();
 
 
	
	/**
	 * @功能 
	 */
	public String execute() throws Exception {

		notice=noticeService.get(this.id);
		
		List<Object> queryList=new ArrayList<Object>();
 
		queryList.add(this.id);
 
		
		return SUCCESS;

	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	 
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	 
	
	
}
