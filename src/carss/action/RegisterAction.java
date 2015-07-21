/**
 * @功能 注册投资商
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

	private String password; // 一级密码
	private String personName; // 真实姓名
	private String tel; // 联系电话
	
	

	@Override
	public String execute() throws Exception {
		 
		Member one = new Member();
		one.setLoginName(tel);
		one.setPassword(password);
		one.setPersonName(personName); 
		memberService.save(one);
		
		//增加個人信息
		LoginMember loginMember=new LoginMember(one);
		
		//把登錄登陆信心 保存到SESSION作用域中
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
