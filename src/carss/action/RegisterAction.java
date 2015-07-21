/**
 * @���� ע��Ͷ����
 */

package carss.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarBrand;
import carss.po.CarImg;
import carss.po.CarInfo;
import carss.po.Member;
import carss.po.auth.Admin;
import carss.service.CarBrandService;
import carss.service.CarImgService;
import carss.service.CarInfoService;
import carss.service.MemberService;
import carss.service.perm.AdminService;
import carss.util.FileTool;
import carss.vo.LoginAdmin;
import carss.vo.LoginMember;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@ParentPackage("json-default")
@Results({ @Result(type = "json") })
public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private MemberService memberService;

	private String password; // һ������
	private String personName; // ��ʵ����
	private String tel; // ��ϵ�绰
	
	

	@Override
	public String execute() throws Exception {
		 
		Member one = new Member();
		one.setLoginName(tel);
		one.setPassword(password);
		one.setPersonName(personName); 
		memberService.save(one);
		
		//���ӂ�����Ϣ
		LoginMember loginMember=new LoginMember(one);
		
		//�ѵ�䛵�½���� ���浽SESSION��������
		ActionContext.getContext().getSession().put("loginMember", loginMember);
		
		
		
		return SUCCESS;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

}
