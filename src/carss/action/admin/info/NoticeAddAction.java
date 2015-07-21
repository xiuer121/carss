/**
 * @功能 新增公告
 */

package carss.action.admin.info;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CatalogNotice;
import carss.po.Notice;
import carss.po.auth.Admin;
import carss.service.CatalogNoticeService;
import carss.service.NoticeService;
import carss.service.perm.AdminService;
import carss.vo.LoginAdmin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(type = "redirectAction", location = "notice-list"),
		@Result(name = "input", location = "notice-add.jsp") })
public class NoticeAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private NoticeService noticeService;

	@Resource
	private CatalogNoticeService catalogNoticeService;

	@Resource
	private AdminService adminService;

	private Integer top; // 置顶
	private String title; // 标题
	private String content; // 正文

	private Date newDate; // 标志时间

	private Integer catalogId;
	
	
	private List<CatalogNotice> list;

	/**
	 * @功能
	 */
	public String show() {

		newDate = new Date(new Date().getTime() + 7l * 24 * 60 * 60 * 1000);

		list = catalogNoticeService.getList();

		return INPUT;

	}

	/**
	 * @功能 新增公告
	 */
	public String execute() throws Exception {

		LoginAdmin loginAdmin = (LoginAdmin) ActionContext.getContext()
				.getSession().get("loginAdmin");
		Admin admin = adminService.get(loginAdmin.getId());

		CatalogNotice catalogNotice = catalogNoticeService.get(catalogId);		
		
		// 新增对象
		Notice one = new Notice();
		one.setTop(this.top);
		one.setTitle(this.title);
		one.setContent(this.content);
		one.setAdmin(admin);
		one.setFileNum(0);
		one.setCommitDate(new Date());
		one.setCatalogNotice(catalogNotice);
		one.setNewDate(newDate);

		noticeService.save(one);

		return SUCCESS;

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

	public List<CatalogNotice> getList() {
		return list;
	}

	public void setList(List<CatalogNotice> list) {
		this.list = list;
	}

	public Integer getCatalogId() {
		return catalogId;
	}

	public void setCatalogId(Integer catalogId) {
		this.catalogId = catalogId;
	}
	
	

}
