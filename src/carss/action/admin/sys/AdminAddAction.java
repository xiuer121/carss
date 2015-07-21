/**
 * @���� 
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
	
	private String loginName;							//Ͷ���̱��
	
	private String onePassword;							//һ������
	private String twoPassword;							//��������
	private String onePasswordRec;						//һ��ȷ������
	private String twoPasswordRec;						//����ȷ������
	
	private String title;								//��ʾ����
	private String personName;							//��ʵ����
	private String tel;									//��ϵ�绰
	private String email;

	
	/**
	 * @���� ��������Ա
	 */
	public String execute() throws Exception {
		
		Admin admin=new Admin();

		admin.setAccountUse(true);									//�ʺ�״̬
		
		admin.setLoginNum(0);										//��¼����
		
		admin.setErrorNum(0);										//����������
		
		admin.setLoginName(this.loginName);							//��¼��
 
		admin.setPassword(this.onePassword);						//һ������
		admin.setPassword(this.twoPassword);		
			
		 
		admin.setPersonName(this.personName);						//��ʵ����
		admin.setTel(this.tel);										//��ϵ�绰
//		admin.setEmail(this.email);
		
		adminService.save(admin);
		
		return SUCCESS;

	}
	
	/**
	 * @���� 
	 */
	public void validate() {
		
		//һ�������Ƿ���д
		if(this.onePassword==null||this.onePassword.length()<1){
			this.addFieldError("onePassword","һ������δ��д��");
		}else{
			
			//ȷ�������Ƿ���д
			if(this.onePasswordRec==null||this.onePasswordRec.length()<1){
				this.addFieldError("onePassword","ȷ������δ��д��");
			}
			
			//���������Ƿ�һ��
			if(!this.onePassword.equals(this.onePasswordRec)){
				this.addFieldError("onePassword","�������벻һ�£�");
			}
		}
		
 
		
		//����Ͷ���̵ĵ�����Ƿ���д
		if(this.loginName==null || this.loginName.length()<1){
			this.addFieldError("loginName","��¼��δ��д��");
		}
		if(this.email==null || this.email.length()<1){
			this.addFieldError("email","����δ��д��");
		}
		
		//����Ͷ���̵ĵ�����Ƿ����؏�
		Admin admin=adminService.getByLoginName(this.loginName);
		if(admin!=null){
			this.addFieldError("loginName","�õ�¼���Ѵ��ڣ�");
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
