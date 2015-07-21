/**
 * @功能 注册投资商
 */

package carss.action.member;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarCollection;
import carss.po.CarInfo;
import carss.po.Member;
import carss.service.CarCollectionService;
import carss.service.CarInfoService;
import carss.service.MemberService;
import carss.vo.LoginAdmin;
import carss.vo.LoginMember;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(type = "redirectAction", location = "../index.action")})
public class CarCollectionAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarCollectionService carCollectionService;
 
	@Resource
	private MemberService memberService;
	
	@Resource
	private CarInfoService carInfoService;

	
	private Integer id; 

	// 所属类型

	public String show() { 
		return this.INPUT;
	}

	/**
	 * @功能 新增投资商
	 */
	public String execute() {
		// 先保存产品资料
	 
		LoginMember loginMember = (LoginMember) ActionContext.getContext()
				.getSession().get("loginMember");

		Member member = memberService.get(loginMember.getId());
		
		CarInfo carInfo=carInfoService.get(id);
		
		
		CarCollection one = new CarCollection();
		one.setCommitDate(new Date());
		one.setMember(member);
		one.setCarInfo(carInfo);
		this.carCollectionService.save(one); 
		return SUCCESS;

	}

 

	/**
	 * @功能 新增投资商校验
	 */
	 

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	
	
	
}
