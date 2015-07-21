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

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")							
@Results( { 
	    @Result(type="redirectAction",location = "admin-list"),
	    @Result(name="input",location = "admin-add.jsp")
})
public class AdminAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private AdminService adminService;
	
	private String loginName;							//投资商编号
	
	private String onePassword;							//一级密码
	private String twoPassword;							//二级密码
	private String onePasswordRec;						//一级确认密码
	private String twoPasswordRec;						//二级确认密码
	
	private String title;								//显示名称
	private String personName;							//真实姓名
	private String tel;									//联系电话
	private String email;

	
	/**
	 * @功能 新增管理员
	 */
	public String execute() throws Exception {
		
		Admin admin=new Admin();

		admin.setAccountUse(true);									//帐号状态
		
		admin.setLoginNum(0);										//登录次数
		
		admin.setErrorNum(0);										//密码错误次数
		
		admin.setLoginName(this.loginName);							//登录名
 
		admin.setPassword(this.onePassword);						//一级密码
		admin.setPassword(this.twoPassword);		
			
		 
		admin.setPersonName(this.personName);						//真实姓名
		admin.setTel(this.tel);										//联系电话
//		admin.setEmail(this.email);
		
		adminService.save(admin);
		
		return SUCCESS;

	}
	
	/**
	 * @功能 
	 */
	public void validate() {
		
		//一级密码是否填写
		if(this.onePassword==null||this.onePassword.length()<1){
			this.addFieldError("onePassword","一级密码未填写！");
		}else{
			
			//确认密码是否填写
			if(this.onePasswordRec==null||this.onePasswordRec.length()<1){
				this.addFieldError("onePassword","确认密码未填写！");
			}
			
			//两次密码是否一致
			if(!this.onePassword.equals(this.onePasswordRec)){
				this.addFieldError("onePassword","两次密码不一致！");
			}
		}
		
 
		
		//新增投资商的登錄名是否填写
		if(this.loginName==null || this.loginName.length()<1){
			this.addFieldError("loginName","登录名未填写！");
		}
		if(this.email==null || this.email.length()<1){
			this.addFieldError("email","邮箱未填写！");
		}
		
		//新增投资商的登錄名是否有重復
		Admin admin=adminService.getByLoginName(this.loginName);
		if(admin!=null){
			this.addFieldError("loginName","该登录名已存在！");
		}

	}

	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getOnePassword() {
		return onePassword;
	}

	public void setOnePassword(String onePassword) {
		this.onePassword = onePassword;
	}

	public String getTwoPassword() {
		return twoPassword;
	}

	public void setTwoPassword(String twoPassword) {
		this.twoPassword = twoPassword;
	}

	public String getOnePasswordRec() {
		return onePasswordRec;
	}

	public void setOnePasswordRec(String onePasswordRec) {
		this.onePasswordRec = onePasswordRec;
	}

	public String getTwoPasswordRec() {
		return twoPasswordRec;
	}

	public void setTwoPasswordRec(String twoPasswordRec) {
		this.twoPasswordRec = twoPasswordRec;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
