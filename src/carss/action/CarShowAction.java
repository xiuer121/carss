/**
 * @功能 注册投资商
 */

package carss.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarBrand;
import carss.po.CarImg;
import carss.po.CarInfo;
import carss.po.auth.Admin;
import carss.service.CarBrandService;
import carss.service.CarImgService;
import carss.service.CarInfoService;
import carss.service.perm.AdminService;
import carss.util.FileTool;
import carss.vo.LoginAdmin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(location = "car-show.jsp")})
public class CarShowAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarInfoService carInfoService;
  
 
	
	@Resource
	private CarImgService carImgService;

	private Integer id;
	
	private CarInfo one;
	
	private List<CarImg> imgList = new ArrayList<CarImg>();
	
	private Long xian;
	
	
	private List<CarInfo> listRec  = new ArrayList<CarInfo>();
	private List<CarInfo> listHot = new ArrayList<CarInfo>();
	@Override
	public String execute() throws Exception {
	
		one = carInfoService.get(id);
		
	
		if(one.getXianDate()!=null){
			Calendar calendar = Calendar.getInstance();
			long nowTime = calendar.getTimeInMillis();
			calendar.setTime(one.getXianDate());
			long xianTime =calendar.getTimeInMillis();
			xian=(xianTime-nowTime)/1000; 
		}
	
		String where = " where o.carInfo.id = "+id;  
	
		
		
		imgList = carImgService.getList(where, null);
		//获取推荐类型车
		where ="where o.recState = 10 ";
		listRec = carInfoService.getListByNum(where, null, 3);
		
		where ="where o.hotState = 10 ";
		listHot = carInfoService.getListByNum(where, null, 3);
		return SUCCESS;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public CarInfo getOne() {
		return one;
	}



	public void setOne(CarInfo one) {
		this.one = one;
	}



	public List<CarImg> getImgList() {
		return imgList;
	}



	public void setImgList(List<CarImg> imgList) {
		this.imgList = imgList;
	}



	public Long getXian() {
		return xian;
	}



	public void setXian(Long xian) {
		this.xian = xian;
	}



	public List<CarInfo> getListRec() {
		return listRec;
	}



	public void setListRec(List<CarInfo> listRec) {
		this.listRec = listRec;
	}



	public List<CarInfo> getListHot() {
		return listHot;
	}



	public void setListHot(List<CarInfo> listHot) {
		this.listHot = listHot;
	}

	
	
	



 
	
}
