/**
 * @功能 注册投资商
 */

package carss.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarBrand;
import carss.po.CarInfo;
import carss.service.CarBrandService;
import carss.service.CarInfoService;
import carss.vo.CarInfoVo;
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(location = "car_list_xian.jsp") })
public class CarListXianAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarInfoService carInfoService;

	@Resource
	private CarBrandService carBrandService;

	private View<CarInfo> viwJiao = new View<CarInfo>();

	private List<CarBrand> listBrand = new ArrayList<CarBrand>();
	
	
	
	private List<CarInfoVo> voList = new ArrayList<CarInfoVo>();
	private List<CarInfo> listRec  = new ArrayList<CarInfo>();
	private List<CarInfo> listHot = new ArrayList<CarInfo>();
	
	 

	private Integer brandId; // 品牌ID
	private Integer carType; // 车辆类型 10跑车 20 轿车 30 suv 40 商务车

	private Integer youNum;
	
	@Override
	public String execute() throws Exception {

		String where = " where 1 = 1 and  o.sellState =10 and xianState =10  ";
		List<Object> params = new ArrayList<Object>();
		if (carType != null) {
			where = where + " and o.carType = ?";
			params.add(carType);
		} 
		if (brandId != null) {
			where = where + " and  o.brandId.id = ?";
			params.add(brandId);
		} 
		Long num = carInfoService.getCount(where,params.toArray());
 
		youNum =num.intValue();
		
		viwJiao = carInfoService.getView(where, viwJiao,params.toArray());
		for(CarInfo o:viwJiao.getRecords()){
			
			CarInfoVo civ= new CarInfoVo();
			civ.setId(o.getId());
			civ.setTitle(o.getTitle());
			civ.setImagePath(o.getImagePath());
			civ.setOriginalPrice(o.getOriginalPrice());
			civ.setCondition(o.getCondition());
			civ.setPrice(o.getPrice());
			civ.setTravel(o.getTravel());
			civ.setYueNum(o.getYueNum());
			civ.setCangNum(o.getCangNum());
			if(o.getXianDate()!=null){
				Calendar calendar = Calendar.getInstance();
				long nowTime = calendar.getTimeInMillis();
				calendar.setTime(o.getXianDate());
				long xianTime =calendar.getTimeInMillis();
				civ.setXianMil((xianTime-nowTime)/1000);  
			}
	
			voList.add(civ);
			
		}
		
		
 
		listBrand = carBrandService.getList();
	 
		
		//获取推荐类型车
		where ="where o.recState = 10 ";
		listRec = carInfoService.getListByNum(where, null, 3);
		
		where ="where o.hotState = 10 ";
		listHot = carInfoService.getListByNum(where, null, 3);

		return SUCCESS;
	}

 
	public Integer getBrandId() {
		return brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public Integer getCarType() {
		return carType;
	}

	public void setCarType(Integer carType) {
		this.carType = carType;
	}
 
	public View<CarInfo> getViwJiao() {
		return viwJiao;
	}


	public void setViwJiao(View<CarInfo> viwJiao) {
		this.viwJiao = viwJiao;
	}


	public List<CarBrand> getListBrand() {
		return listBrand;
	}


	public void setListBrand(List<CarBrand> listBrand) {
		this.listBrand = listBrand;
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


	public List<CarInfoVo> getVoList() {
		return voList;
	}


	public void setVoList(List<CarInfoVo> voList) {
		this.voList = voList;
	}


	public Integer getYouNum() {
		return youNum;
	}


	public void setYouNum(Integer youNum) {
		this.youNum = youNum;
	}
	
	
	
	
	

}
