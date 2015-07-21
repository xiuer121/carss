/**
 * @���� ע��Ͷ����
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

	// ��������

	public String show() { 
		return this.INPUT;
	}

	/**
	 * @���� ����Ͷ����
	 */
	public String execute() {
		// �ȱ����Ʒ����
	 
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
	 * @���� ����Ͷ����У��
	 */
	 

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	
	
	
}
