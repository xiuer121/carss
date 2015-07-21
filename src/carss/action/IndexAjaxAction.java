/**
 * @功能 注册投资商
 */

package carss.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarInfo;
import carss.po.Cooperation;
import carss.service.CarInfoService;
import carss.service.CooperationService;
import carss.vo.RolAdVo;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@ParentPackage("json-default")
@Results({ @Result(type = "json") })
public class IndexAjaxAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CooperationService cooperationService;

	private List<Cooperation> listAd = new ArrayList<Cooperation>();

	private List<RolAdVo> listAdVo = new ArrayList<RolAdVo>();

	@Override
	public String execute() throws Exception {

		String where = "where o.imgType = 20 ";
		listAd = cooperationService.getListByNum(where, null, 4);

		for (Cooperation one : listAd) {
			RolAdVo o = new RolAdVo();
			o.setTitle(one.getTitle());
			o.setUrl(one.getLogoPath());
			o.setLink(one.getUrlLink());
			listAdVo.add(o);
		}
		return SUCCESS;
	}

	public List<RolAdVo> getListAdVo() {
		return listAdVo;
	}

	public void setListAdVo(List<RolAdVo> listAdVo) {
		this.listAdVo = listAdVo;
	}

}
