/**
 * @功能 修改公告
 */

package carss.action.admin.info;




import java.util.Date;

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
	    @Result(type="redirectAction",location = "notice-list"),
	    @Result(name="input",location = "notice-update.jsp")
})
public class NoticeUpdateAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource 
	private NoticeService noticeService;

	private Integer id;					//编号
	private Integer top;				//置顶
	private String title;				//标题
	private String content;				//正文
	
	private Date newDate;				//标志时间
	
	/**
	 * @功能 获得对象
	 */
	public String show() throws Exception {
		
		Notice one=noticeService.get(id);
		this.top=one.getTop();
		this.title=one.getTitle();
		this.content=one.getContent();
		this.newDate=one.getNewDate();
		
		return INPUT;

	}
	
	/**
	 * @功能 修改对象
	 */
	public String update() throws Exception {
		
		//修改对象
		Notice one=noticeService.get(this.id);
		one.setTop(this.top);
		one.setTitle(this.title);
		one.setContent(this.content);
		one.setNewDate(newDate);
		noticeService.update(one);
		
		return SUCCESS;

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

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
