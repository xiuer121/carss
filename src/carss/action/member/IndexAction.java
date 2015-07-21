/**
 * @功能 注册投资商
 */

package carss.action.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarCollection;
import carss.po.CarInfo;
import carss.service.CarCollectionService;
import carss.service.CarInfoService;
import carss.vo.LoginMember;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(location = "member-center.jsp")})
public class IndexAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarInfoService carInfoService;
  
	@Resource
	private CarCollectionService carCollectionService;

	
 

	private List<CarCollection> shouCang=new ArrayList<CarCollection>();
 
	
	
	
	 
	@Override
	public String execute() throws Exception {
		
		LoginMember loginMember = (LoginMember) ActionContext.getContext()
				.getSession().get("loginMember");

		String where =" where o.member.id = "+loginMember.getId();
 
		shouCang = carCollectionService.getList(where, null); 
		System.out.println(shouCang);
		return SUCCESS;
	}





	public List<CarCollection> getShouCang() {
		return shouCang;
	}





	public void setShouCang(List<CarCollection> shouCang) {
		this.shouCang = shouCang;
	}



 
	
 
	 
	
	
}
